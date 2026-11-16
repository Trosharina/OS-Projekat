.global kernelThreadStart

kernelThreadStart:
    csrw sscratch, s3
    mv sp, s1
    jr s2