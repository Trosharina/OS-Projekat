.global userThreadStart

userThreadStart:
csrw sscratch, s3
csrw sepc, s2
csrr t0, sstatus
li t1, 0x100
not t1, t1
and t0, t0, t1
li t1, 0x20
or t0, t0, t1
csrw sstatus, t0
mv sp, s1
sret