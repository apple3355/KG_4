package bucket.kurly.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

@Repository
public class S3Service {
	
	private AmazonS3 s3Client;

	String bucketName = "bucketkurly";
	String accessKey = "AKIAQY45O5JBG6UEREHB";
	String secretKey = "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";

	public S3Service() {
		createS3Client();
	}

	// aws S3 client 생성
	private void createS3Client() {
		AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
		s3Client = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(credentials))
				.withRegion(Regions.AP_NORTHEAST_2).build();
	}

	// singleton pattern
	static private S3Service instance = null;

	public static S3Service getInstance() {
		if (instance == null) {
			return new S3Service();
		} else {
			return instance;
		}
	}

	public void upload(File file, String key) {
		uploadToS3(new PutObjectRequest(bucketName, key, file));
	}

	public void upload(InputStream is, String key, String contentType, long contentLength, String bucket) {
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setContentType(contentType);
		objectMetadata.setContentLength(contentLength);

		uploadToS3(new PutObjectRequest(bucket, key, is, objectMetadata));
	}

	// PutObjectRequest는 Aws S3 버킷에 업로드할 객체 메타 데이터와 파일 데이터로 이루어져있다.
	private void uploadToS3(PutObjectRequest putObjectRequest) {

		try {
			this.s3Client.putObject(putObjectRequest);
			System.out.println(String.format("[%s] upload complete", putObjectRequest.getKey()));

		} catch (AmazonServiceException e) {
			e.printStackTrace();
		} catch (SdkClientException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void copy(String orgKey, String copyKey) {
		try {
			// Copy 객체 생성
			CopyObjectRequest copyObjRequest = new CopyObjectRequest(bucketName, orgKey, bucketName, copyKey);
			// Copy
			this.s3Client.copyObject(copyObjRequest);

			System.out.println(String.format("Finish copying [%s] to [%s]", orgKey, copyKey));

		} catch (AmazonServiceException e) {
			e.printStackTrace();
		} catch (SdkClientException e) {
			e.printStackTrace();
		}
	}

	public void delete(String key) {
		try {
			// Delete 객체 생성
			DeleteObjectRequest deleteObjectRequest = new DeleteObjectRequest(bucketName, key);
			// Delete
			this.s3Client.deleteObject(deleteObjectRequest);
			System.out.println(String.format("[%s] deletion complete", key));

		} catch (AmazonServiceException e) {
			e.printStackTrace();
		} catch (SdkClientException e) {
			e.printStackTrace();
		}
	}

}
