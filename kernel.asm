
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0002b117          	auipc	sp,0x2b
    80000004:	90013103          	ld	sp,-1792(sp) # 8002a900 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	420250ef          	jal	ra,8002543c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080010000 <trap>:
.global trap
.global TrapHandler
.align 16
trap:

csrrw sp, sscratch, sp
    80010000:	14011173          	csrrw	sp,sscratch,sp
addi sp, sp, -272
    80010004:	ef010113          	addi	sp,sp,-272

sd ra, 0(sp)
    80010008:	00113023          	sd	ra,0(sp)
sd s0, 8(sp)
    8001000c:	00813423          	sd	s0,8(sp)
sd s1, 16(sp)
    80010010:	00913823          	sd	s1,16(sp)
sd s2, 24(sp)
    80010014:	01213c23          	sd	s2,24(sp)
sd s3, 32(sp)
    80010018:	03313023          	sd	s3,32(sp)
sd s4, 40(sp)
    8001001c:	03413423          	sd	s4,40(sp)
sd s5, 48(sp)
    80010020:	03513823          	sd	s5,48(sp)
sd s6, 56(sp)
    80010024:	03613c23          	sd	s6,56(sp)
sd s7, 64(sp)
    80010028:	05713023          	sd	s7,64(sp)
sd s8, 72(sp)
    8001002c:	05813423          	sd	s8,72(sp)
sd s9, 80(sp)
    80010030:	05913823          	sd	s9,80(sp)
sd s10, 88(sp)
    80010034:	05a13c23          	sd	s10,88(sp)
sd s11, 96(sp)
    80010038:	07b13023          	sd	s11,96(sp)
sd a0, 104(sp)
    8001003c:	06a13423          	sd	a0,104(sp)
sd a1, 112(sp)
    80010040:	06b13823          	sd	a1,112(sp)
sd a2, 120(sp)
    80010044:	06c13c23          	sd	a2,120(sp)
sd a3, 128(sp)
    80010048:	08d13023          	sd	a3,128(sp)
sd a4, 136(sp)
    8001004c:	08e13423          	sd	a4,136(sp)
sd a5, 144(sp)
    80010050:	08f13823          	sd	a5,144(sp)
sd a6, 152(sp)
    80010054:	09013c23          	sd	a6,152(sp)
sd a7, 160(sp)
    80010058:	0b113023          	sd	a7,160(sp)
sd t0, 168(sp)
    8001005c:	0a513423          	sd	t0,168(sp)
sd t1, 176(sp)
    80010060:	0a613823          	sd	t1,176(sp)
sd t2, 184(sp)
    80010064:	0a713c23          	sd	t2,184(sp)
sd t3, 192(sp)
    80010068:	0dc13023          	sd	t3,192(sp)
sd t4, 200(sp)
    8001006c:	0dd13423          	sd	t4,200(sp)
sd t5, 208(sp)
    80010070:	0de13823          	sd	t5,208(sp)
sd t6, 216(sp)
    80010074:	0df13c23          	sd	t6,216(sp)
sd gp, 224(sp)
    80010078:	0e313023          	sd	gp,224(sp)
sd tp, 232(sp)
    8001007c:	0e413423          	sd	tp,232(sp)

csrr t0, sscratch
    80010080:	140022f3          	csrr	t0,sscratch
sd t0, 240(sp)
    80010084:	0e513823          	sd	t0,240(sp)

csrr t0, sepc
    80010088:	141022f3          	csrr	t0,sepc
sd t0, 248(sp)
    8001008c:	0e513c23          	sd	t0,248(sp)
csrr t0, sstatus
    80010090:	100022f3          	csrr	t0,sstatus
sd t0, 256(sp)
    80010094:	10513023          	sd	t0,256(sp)

mv a0, sp
    80010098:	00010513          	mv	a0,sp
call TrapHandler
    8001009c:	094100ef          	jal	ra,80020130 <TrapHandler>

ld t0, 256(sp)
    800100a0:	10013283          	ld	t0,256(sp)
csrw sstatus, t0
    800100a4:	10029073          	csrw	sstatus,t0
ld t0, 248(sp)
    800100a8:	0f813283          	ld	t0,248(sp)
csrw sepc, t0
    800100ac:	14129073          	csrw	sepc,t0

addi t0, sp, 272
    800100b0:	11010293          	addi	t0,sp,272
csrw sscratch, t0
    800100b4:	14029073          	csrw	sscratch,t0

ld ra, 0(sp)
    800100b8:	00013083          	ld	ra,0(sp)
ld s0, 8(sp)
    800100bc:	00813403          	ld	s0,8(sp)
ld s1, 16(sp)
    800100c0:	01013483          	ld	s1,16(sp)
ld s2, 24(sp)
    800100c4:	01813903          	ld	s2,24(sp)
ld s3, 32(sp)
    800100c8:	02013983          	ld	s3,32(sp)
ld s4, 40(sp)
    800100cc:	02813a03          	ld	s4,40(sp)
ld s5, 48(sp)
    800100d0:	03013a83          	ld	s5,48(sp)
ld s6, 56(sp)
    800100d4:	03813b03          	ld	s6,56(sp)
ld s7, 64(sp)
    800100d8:	04013b83          	ld	s7,64(sp)
ld s8, 72(sp)
    800100dc:	04813c03          	ld	s8,72(sp)
ld s9, 80(sp)
    800100e0:	05013c83          	ld	s9,80(sp)
ld s10, 88(sp)
    800100e4:	05813d03          	ld	s10,88(sp)
ld s11, 96(sp)
    800100e8:	06013d83          	ld	s11,96(sp)
ld a0, 104(sp)
    800100ec:	06813503          	ld	a0,104(sp)
ld a1, 112(sp)
    800100f0:	07013583          	ld	a1,112(sp)
ld a2, 120(sp)
    800100f4:	07813603          	ld	a2,120(sp)
ld a3, 128(sp)
    800100f8:	08013683          	ld	a3,128(sp)
ld a4, 136(sp)
    800100fc:	08813703          	ld	a4,136(sp)
ld a5, 144(sp)
    80010100:	09013783          	ld	a5,144(sp)
ld a6, 152(sp)
    80010104:	09813803          	ld	a6,152(sp)
ld a7, 160(sp)
    80010108:	0a013883          	ld	a7,160(sp)
ld t0, 168(sp)
    8001010c:	0a813283          	ld	t0,168(sp)
ld t1, 176(sp)
    80010110:	0b013303          	ld	t1,176(sp)
ld t2, 184(sp)
    80010114:	0b813383          	ld	t2,184(sp)
ld t3, 192(sp)
    80010118:	0c013e03          	ld	t3,192(sp)
ld t4, 200(sp)
    8001011c:	0c813e83          	ld	t4,200(sp)
ld t5, 208(sp)
    80010120:	0d013f03          	ld	t5,208(sp)
ld t6, 216(sp)
    80010124:	0d813f83          	ld	t6,216(sp)
ld gp, 224(sp)
    80010128:	0e013183          	ld	gp,224(sp)
ld tp, 232(sp)
    8001012c:	0e813203          	ld	tp,232(sp)
ld sp, 240(sp)
    80010130:	0f013103          	ld	sp,240(sp)

    80010134:	10200073          	sret
	...

0000000080020000 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80020000:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80020004:	00b29a63          	bne	t0,a1,80020018 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80020008:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8002000c:	fe029ae3          	bnez	t0,80020000 <copy_and_swap>
    li a0, 0               # Set return to success.
    80020010:	00000513          	li	a0,0
    jr ra                  # Return.
    80020014:	00008067          	ret

0000000080020018 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80020018:	00100513          	li	a0,1
    8002001c:	00008067          	ret

0000000080020020 <kernelThreadStart>:
.global kernelThreadStart

kernelThreadStart:
    csrw sscratch, s3
    80020020:	14099073          	csrw	sscratch,s3
    mv sp, s1
    80020024:	00048113          	mv	sp,s1
    80020028:	00090067          	jr	s2

000000008002002c <yield>:
.global yield
yield:
addi sp, sp, -104
    8002002c:	f9810113          	addi	sp,sp,-104
sd ra, 0(sp)
    80020030:	00113023          	sd	ra,0(sp)
sd s0, 8(sp)
    80020034:	00813423          	sd	s0,8(sp)
sd s1, 16(sp)
    80020038:	00913823          	sd	s1,16(sp)
sd s2, 24(sp)
    8002003c:	01213c23          	sd	s2,24(sp)
sd s3, 32(sp)
    80020040:	03313023          	sd	s3,32(sp)
sd s4, 40(sp)
    80020044:	03413423          	sd	s4,40(sp)
sd s5, 48(sp)
    80020048:	03513823          	sd	s5,48(sp)
sd s6, 56(sp)
    8002004c:	03613c23          	sd	s6,56(sp)
sd s7, 64(sp)
    80020050:	05713023          	sd	s7,64(sp)
sd s8, 72(sp)
    80020054:	05813423          	sd	s8,72(sp)
sd s9, 80(sp)
    80020058:	05913823          	sd	s9,80(sp)
sd s10, 88(sp)
    8002005c:	05a13c23          	sd	s10,88(sp)
sd s11, 96(sp)
    80020060:	07b13023          	sd	s11,96(sp)

sd sp, 0(a0)
    80020064:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
ld sp, 0(a1)
    80020068:	0005b103          	ld	sp,0(a1)

ld ra, 0(sp)
    8002006c:	00013083          	ld	ra,0(sp)
ld s0, 8(sp)
    80020070:	00813403          	ld	s0,8(sp)
ld s1, 16(sp)
    80020074:	01013483          	ld	s1,16(sp)
ld s2, 24(sp)
    80020078:	01813903          	ld	s2,24(sp)
ld s3, 32(sp)
    8002007c:	02013983          	ld	s3,32(sp)
ld s4, 40(sp)
    80020080:	02813a03          	ld	s4,40(sp)
ld s5, 48(sp)
    80020084:	03013a83          	ld	s5,48(sp)
ld s6, 56(sp)
    80020088:	03813b03          	ld	s6,56(sp)
ld s7, 64(sp)
    8002008c:	04013b83          	ld	s7,64(sp)
ld s8, 72(sp)
    80020090:	04813c03          	ld	s8,72(sp)
ld s9, 80(sp)
    80020094:	05013c83          	ld	s9,80(sp)
ld s10, 88(sp)
    80020098:	05813d03          	ld	s10,88(sp)
ld s11, 96(sp)
    8002009c:	06013d83          	ld	s11,96(sp)
addi sp, sp, 104
    800200a0:	06810113          	addi	sp,sp,104
    800200a4:	00008067          	ret

00000000800200a8 <userThreadStart>:
.global userThreadStart

userThreadStart:
csrw sscratch, s3
    800200a8:	14099073          	csrw	sscratch,s3
csrw sepc, s2
    800200ac:	14191073          	csrw	sepc,s2
csrr t0, sstatus
    800200b0:	100022f3          	csrr	t0,sstatus
li t1, 0x100
    800200b4:	10000313          	li	t1,256
not t1, t1
    800200b8:	fff34313          	not	t1,t1
and t0, t0, t1
    800200bc:	0062f2b3          	and	t0,t0,t1
li t1, 0x20
    800200c0:	02000313          	li	t1,32
or t0, t0, t1
    800200c4:	0062e2b3          	or	t0,t0,t1
csrw sstatus, t0
    800200c8:	10029073          	csrw	sstatus,t0
mv sp, s1
    800200cc:	00048113          	mv	sp,s1
    800200d0:	10200073          	sret

00000000800200d4 <_ZL15cleanupFinishedv>:
extern "C" void yield(Thread*, Thread*);

static Thread* toDelete = nullptr;

static void cleanupFinished() {
    if (toDelete) {
    800200d4:	0000b797          	auipc	a5,0xb
    800200d8:	89c7b783          	ld	a5,-1892(a5) # 8002a970 <_ZL8toDelete>
    800200dc:	04078863          	beqz	a5,8002012c <_ZL15cleanupFinishedv+0x58>
static void cleanupFinished() {
    800200e0:	fe010113          	addi	sp,sp,-32
    800200e4:	00113c23          	sd	ra,24(sp)
    800200e8:	00813823          	sd	s0,16(sp)
    800200ec:	00913423          	sd	s1,8(sp)
    800200f0:	02010413          	addi	s0,sp,32
        MemoryAllocator::dealloc(toDelete->getSystemStackBase());
    800200f4:	0207b503          	ld	a0,32(a5)
    800200f8:	00002097          	auipc	ra,0x2
    800200fc:	b24080e7          	jalr	-1244(ra) # 80021c1c <_ZN15MemoryAllocator7deallocEPv>
        MemoryAllocator::dealloc(toDelete);
    80020100:	0000b497          	auipc	s1,0xb
    80020104:	87048493          	addi	s1,s1,-1936 # 8002a970 <_ZL8toDelete>
    80020108:	0004b503          	ld	a0,0(s1)
    8002010c:	00002097          	auipc	ra,0x2
    80020110:	b10080e7          	jalr	-1264(ra) # 80021c1c <_ZN15MemoryAllocator7deallocEPv>
        toDelete = nullptr;
    80020114:	0004b023          	sd	zero,0(s1)
    }
}
    80020118:	01813083          	ld	ra,24(sp)
    8002011c:	01013403          	ld	s0,16(sp)
    80020120:	00813483          	ld	s1,8(sp)
    80020124:	02010113          	addi	sp,sp,32
    80020128:	00008067          	ret
    8002012c:	00008067          	ret

0000000080020130 <TrapHandler>:

extern "C" void TrapHandler(uint64* context) {
    80020130:	fd010113          	addi	sp,sp,-48
    80020134:	02113423          	sd	ra,40(sp)
    80020138:	02813023          	sd	s0,32(sp)
    8002013c:	00913c23          	sd	s1,24(sp)
    80020140:	01213823          	sd	s2,16(sp)
    80020144:	01313423          	sd	s3,8(sp)
    80020148:	03010413          	addi	s0,sp,48
    8002014c:	00050493          	mv	s1,a0
    cleanupFinished();
    80020150:	00000097          	auipc	ra,0x0
    80020154:	f84080e7          	jalr	-124(ra) # 800200d4 <_ZL15cleanupFinishedv>
    uint64 scause;
    asm volatile("csrr %0, scause" : "=r"(scause));
    80020158:	14202773          	csrr	a4,scause

    if (scause == 0x08 || scause == 0x09) {
    8002015c:	ff870693          	addi	a3,a4,-8
    80020160:	00100793          	li	a5,1
    80020164:	04d7f063          	bgeu	a5,a3,800201a4 <TrapHandler+0x74>
            default:
                context[13] = (uint64)-1;
                break;
        }
    }
    else if (scause == 0x8000000000000001ULL) {
    80020168:	fff00793          	li	a5,-1
    8002016c:	03f79793          	slli	a5,a5,0x3f
    80020170:	00178793          	addi	a5,a5,1
    80020174:	26f70463          	beq	a4,a5,800203dc <TrapHandler+0x2ac>
        Thread* next = Scheduler::get();
        Scheduler::setRunning(next);
        yield(old, next);
    }

    else if (scause == 0x8000000000000009ULL) {
    80020178:	fff00793          	li	a5,-1
    8002017c:	03f79793          	slli	a5,a5,0x3f
    80020180:	00978793          	addi	a5,a5,9
    80020184:	2af70463          	beq	a4,a5,8002042c <TrapHandler+0x2fc>
        if (irq == CONSOLE_IRQ){
            Console::handleInterrupt();
        }
        plic_complete(irq);
    }
    80020188:	02813083          	ld	ra,40(sp)
    8002018c:	02013403          	ld	s0,32(sp)
    80020190:	01813483          	ld	s1,24(sp)
    80020194:	01013903          	ld	s2,16(sp)
    80020198:	00813983          	ld	s3,8(sp)
    8002019c:	03010113          	addi	sp,sp,48
    800201a0:	00008067          	ret
        context[31] += 4;
    800201a4:	0f84b783          	ld	a5,248(s1)
    800201a8:	00478793          	addi	a5,a5,4
    800201ac:	0ef4bc23          	sd	a5,248(s1)
        uint64 syscallCode = context[13];
    800201b0:	0684b783          	ld	a5,104(s1)
        uint64 arg1 = context[14];
    800201b4:	0704b903          	ld	s2,112(s1)
        switch (syscallCode) {
    800201b8:	04200713          	li	a4,66
    800201bc:	20f76a63          	bltu	a4,a5,800203d0 <TrapHandler+0x2a0>
    800201c0:	00279793          	slli	a5,a5,0x2
    800201c4:	00008717          	auipc	a4,0x8
    800201c8:	e5c70713          	addi	a4,a4,-420 # 80028020 <CONSOLE_STATUS+0x10>
    800201cc:	00e787b3          	add	a5,a5,a4
    800201d0:	0007a783          	lw	a5,0(a5)
    800201d4:	00e787b3          	add	a5,a5,a4
    800201d8:	00078067          	jr	a5
                void* adr = MemoryAllocator::malloc((size_t)arg1);
    800201dc:	00090513          	mv	a0,s2
    800201e0:	00002097          	auipc	ra,0x2
    800201e4:	8e4080e7          	jalr	-1820(ra) # 80021ac4 <_ZN15MemoryAllocator6mallocEm>
                context[13] = (uint64)adr;
    800201e8:	06a4b423          	sd	a0,104(s1)
                break;
    800201ec:	f9dff06f          	j	80020188 <TrapHandler+0x58>
                int status = MemoryAllocator::dealloc((void*)arg1);
    800201f0:	00090513          	mv	a0,s2
    800201f4:	00002097          	auipc	ra,0x2
    800201f8:	a28080e7          	jalr	-1496(ra) # 80021c1c <_ZN15MemoryAllocator7deallocEPv>
                context[13] = (uint64)status;
    800201fc:	06a4b423          	sd	a0,104(s1)
                break;
    80020200:	f89ff06f          	j	80020188 <TrapHandler+0x58>
                Thread* old = Scheduler::getRunning();
    80020204:	00001097          	auipc	ra,0x1
    80020208:	c74080e7          	jalr	-908(ra) # 80020e78 <_ZN6kernel9Scheduler10getRunningEv>
    8002020c:	00050493          	mv	s1,a0
        ThreadState getState() const { return state; }
        void* getSystemStackBase() const { return systemstackSpace; }
        void (*getFunc())(void*) const {return func;}
        void* getArg() const { return arg; }

        void setState(ThreadState state) { this->state = state; }
    80020210:	00300793          	li	a5,3
    80020214:	02f52823          	sw	a5,48(a0)
                toDelete = old;
    80020218:	0000a797          	auipc	a5,0xa
    8002021c:	74a7bc23          	sd	a0,1880(a5) # 8002a970 <_ZL8toDelete>
                Thread* next = Scheduler::get();
    80020220:	00001097          	auipc	ra,0x1
    80020224:	c08080e7          	jalr	-1016(ra) # 80020e28 <_ZN6kernel9Scheduler3getEv>
    80020228:	00050913          	mv	s2,a0
                Scheduler::setRunning(next);
    8002022c:	00001097          	auipc	ra,0x1
    80020230:	c6c080e7          	jalr	-916(ra) # 80020e98 <_ZN6kernel9Scheduler10setRunningEPNS_6ThreadE>
                yield(old, next);
    80020234:	00090593          	mv	a1,s2
    80020238:	00048513          	mv	a0,s1
    8002023c:	00000097          	auipc	ra,0x0
    80020240:	df0080e7          	jalr	-528(ra) # 8002002c <yield>
                break;
    80020244:	f45ff06f          	j	80020188 <TrapHandler+0x58>
                Thread* old = Scheduler::getRunning();
    80020248:	00001097          	auipc	ra,0x1
    8002024c:	c30080e7          	jalr	-976(ra) # 80020e78 <_ZN6kernel9Scheduler10getRunningEv>
    80020250:	00050493          	mv	s1,a0
                Scheduler::put(old);
    80020254:	00001097          	auipc	ra,0x1
    80020258:	b70080e7          	jalr	-1168(ra) # 80020dc4 <_ZN6kernel9Scheduler3putEPNS_6ThreadE>
                Thread* next = Scheduler::get();
    8002025c:	00001097          	auipc	ra,0x1
    80020260:	bcc080e7          	jalr	-1076(ra) # 80020e28 <_ZN6kernel9Scheduler3getEv>
    80020264:	00050913          	mv	s2,a0
                Scheduler::setRunning(next);
    80020268:	00001097          	auipc	ra,0x1
    8002026c:	c30080e7          	jalr	-976(ra) # 80020e98 <_ZN6kernel9Scheduler10setRunningEPNS_6ThreadE>
                yield(old, next);
    80020270:	00090593          	mv	a1,s2
    80020274:	00048513          	mv	a0,s1
    80020278:	00000097          	auipc	ra,0x0
    8002027c:	db4080e7          	jalr	-588(ra) # 8002002c <yield>
                break;
    80020280:	f09ff06f          	j	80020188 <TrapHandler+0x58>
                Thread* t = Thread::createThread(routine, arg);
    80020284:	0804b583          	ld	a1,128(s1)
    80020288:	0784b503          	ld	a0,120(s1)
    8002028c:	00000097          	auipc	ra,0x0
    80020290:	7ec080e7          	jalr	2028(ra) # 80020a78 <_ZN6kernel6Thread12createThreadEPFvPvES1_>
                if (!t) {context[13] = (uint64)-1; break;};
    80020294:	00050c63          	beqz	a0,800202ac <TrapHandler+0x17c>
                *handle = (thread_t)t;
    80020298:	00a93023          	sd	a0,0(s2)
                Scheduler::put(t);
    8002029c:	00001097          	auipc	ra,0x1
    800202a0:	b28080e7          	jalr	-1240(ra) # 80020dc4 <_ZN6kernel9Scheduler3putEPNS_6ThreadE>
                context[13] = (uint64)0;
    800202a4:	0604b423          	sd	zero,104(s1)
                break;
    800202a8:	ee1ff06f          	j	80020188 <TrapHandler+0x58>
                if (!t) {context[13] = (uint64)-1; break;};
    800202ac:	fff00793          	li	a5,-1
    800202b0:	06f4b423          	sd	a5,104(s1)
    800202b4:	ed5ff06f          	j	80020188 <TrapHandler+0x58>
                context[13] = (uint64)Scheduler::getRunning()->getId();
    800202b8:	00001097          	auipc	ra,0x1
    800202bc:	bc0080e7          	jalr	-1088(ra) # 80020e78 <_ZN6kernel9Scheduler10getRunningEv>
        int getId() const { return id; }
    800202c0:	06852783          	lw	a5,104(a0)
    800202c4:	06f4b423          	sd	a5,104(s1)
                break;
    800202c8:	ec1ff06f          	j	80020188 <TrapHandler+0x58>
                Scheduler::getRunning()->send((Thread*)context[14], (char*)context[15]);
    800202cc:	00001097          	auipc	ra,0x1
    800202d0:	bac080e7          	jalr	-1108(ra) # 80020e78 <_ZN6kernel9Scheduler10getRunningEv>
    800202d4:	0784b603          	ld	a2,120(s1)
    800202d8:	0704b583          	ld	a1,112(s1)
    800202dc:	00001097          	auipc	ra,0x1
    800202e0:	9a0080e7          	jalr	-1632(ra) # 80020c7c <_ZN6kernel6Thread4sendEPS0_Pc>
                context[13] = 0;
    800202e4:	0604b423          	sd	zero,104(s1)
                break;
    800202e8:	ea1ff06f          	j	80020188 <TrapHandler+0x58>
                char* msg = Scheduler::getRunning()->recieve();
    800202ec:	00001097          	auipc	ra,0x1
    800202f0:	b8c080e7          	jalr	-1140(ra) # 80020e78 <_ZN6kernel9Scheduler10getRunningEv>
    800202f4:	00001097          	auipc	ra,0x1
    800202f8:	a34080e7          	jalr	-1484(ra) # 80020d28 <_ZN6kernel6Thread7recieveEv>
                context[13] = (uint64)msg;
    800202fc:	06a4b423          	sd	a0,104(s1)
                break;
    80020300:	e89ff06f          	j	80020188 <TrapHandler+0x58>
                Semaphore* s = Semaphore::createSemaphore(init);
    80020304:	0784a503          	lw	a0,120(s1)
    80020308:	00000097          	auipc	ra,0x0
    8002030c:	3e4080e7          	jalr	996(ra) # 800206ec <_ZN6kernel9Semaphore15createSemaphoreEj>
                if (!s) {context[13] = (uint64)-1; break;};
    80020310:	00050863          	beqz	a0,80020320 <TrapHandler+0x1f0>
                *handle = (sem_t)s;
    80020314:	00a93023          	sd	a0,0(s2)
                context[13] = (uint64)0;
    80020318:	0604b423          	sd	zero,104(s1)
                break;
    8002031c:	e6dff06f          	j	80020188 <TrapHandler+0x58>
                if (!s) {context[13] = (uint64)-1; break;};
    80020320:	fff00793          	li	a5,-1
    80020324:	06f4b423          	sd	a5,104(s1)
    80020328:	e61ff06f          	j	80020188 <TrapHandler+0x58>
                context[13] = (uint64)Semaphore::deallocSemaphore((Semaphore*)context[14]);
    8002032c:	00090513          	mv	a0,s2
    80020330:	00000097          	auipc	ra,0x0
    80020334:	450080e7          	jalr	1104(ra) # 80020780 <_ZN6kernel9Semaphore16deallocSemaphoreEPS0_>
    80020338:	06a4b423          	sd	a0,104(s1)
                break;
    8002033c:	e4dff06f          	j	80020188 <TrapHandler+0x58>
                context[13] = (uint64)((Semaphore*)context[14])->wait();
    80020340:	00090513          	mv	a0,s2
    80020344:	00000097          	auipc	ra,0x0
    80020348:	534080e7          	jalr	1332(ra) # 80020878 <_ZN6kernel9Semaphore4waitEv>
    8002034c:	06a4b423          	sd	a0,104(s1)
                break;
    80020350:	e39ff06f          	j	80020188 <TrapHandler+0x58>
                context[13] = (uint64)((Semaphore*)context[14])->signal();
    80020354:	00090513          	mv	a0,s2
    80020358:	00000097          	auipc	ra,0x0
    8002035c:	590080e7          	jalr	1424(ra) # 800208e8 <_ZN6kernel9Semaphore6signalEv>
    80020360:	06a4b423          	sd	a0,104(s1)
                break;
    80020364:	e25ff06f          	j	80020188 <TrapHandler+0x58>
                Thread* old = Scheduler::getRunning();
    80020368:	00001097          	auipc	ra,0x1
    8002036c:	b10080e7          	jalr	-1264(ra) # 80020e78 <_ZN6kernel9Scheduler10getRunningEv>
    80020370:	00050993          	mv	s3,a0
                Scheduler::putToSleep(old, ticks);
    80020374:	00090593          	mv	a1,s2
    80020378:	00001097          	auipc	ra,0x1
    8002037c:	b6c080e7          	jalr	-1172(ra) # 80020ee4 <_ZN6kernel9Scheduler10putToSleepEPNS_6ThreadEm>
                Thread* next = Scheduler::get();
    80020380:	00001097          	auipc	ra,0x1
    80020384:	aa8080e7          	jalr	-1368(ra) # 80020e28 <_ZN6kernel9Scheduler3getEv>
    80020388:	00050913          	mv	s2,a0
                Scheduler::setRunning(next);
    8002038c:	00001097          	auipc	ra,0x1
    80020390:	b0c080e7          	jalr	-1268(ra) # 80020e98 <_ZN6kernel9Scheduler10setRunningEPNS_6ThreadE>
                yield(old, next);
    80020394:	00090593          	mv	a1,s2
    80020398:	00098513          	mv	a0,s3
    8002039c:	00000097          	auipc	ra,0x0
    800203a0:	c90080e7          	jalr	-880(ra) # 8002002c <yield>
                context[13] = (uint64)0;
    800203a4:	0604b423          	sd	zero,104(s1)
                break;
    800203a8:	de1ff06f          	j	80020188 <TrapHandler+0x58>
                context[13] = (uint64)Console::getc();
    800203ac:	00001097          	auipc	ra,0x1
    800203b0:	e30080e7          	jalr	-464(ra) # 800211dc <_ZN6kernel7Console4getcEv>
    800203b4:	06a4b423          	sd	a0,104(s1)
                break;
    800203b8:	dd1ff06f          	j	80020188 <TrapHandler+0x58>
                Console::putc((char)context[14]);
    800203bc:	0ff97513          	andi	a0,s2,255
    800203c0:	00001097          	auipc	ra,0x1
    800203c4:	d98080e7          	jalr	-616(ra) # 80021158 <_ZN6kernel7Console4putcEc>
                context[13] = (uint64)0;
    800203c8:	0604b423          	sd	zero,104(s1)
                break;
    800203cc:	dbdff06f          	j	80020188 <TrapHandler+0x58>
                context[13] = (uint64)-1;
    800203d0:	fff00793          	li	a5,-1
    800203d4:	06f4b423          	sd	a5,104(s1)
                break;
    800203d8:	db1ff06f          	j	80020188 <TrapHandler+0x58>
        __asm__ volatile("csrr %0, sip" : "=r"(sip));
    800203dc:	144027f3          	csrr	a5,sip
        sip &= ~(1ULL << 1);
    800203e0:	ffd7f793          	andi	a5,a5,-3
        __asm__ volatile("csrw sip, %0" : : "r"(sip));
    800203e4:	14479073          	csrw	sip,a5
        Scheduler::onTick();
    800203e8:	00001097          	auipc	ra,0x1
    800203ec:	b7c080e7          	jalr	-1156(ra) # 80020f64 <_ZN6kernel9Scheduler6onTickEv>
        Thread* old = Scheduler::getRunning();
    800203f0:	00001097          	auipc	ra,0x1
    800203f4:	a88080e7          	jalr	-1400(ra) # 80020e78 <_ZN6kernel9Scheduler10getRunningEv>
    800203f8:	00050493          	mv	s1,a0
        Scheduler::put(old);
    800203fc:	00001097          	auipc	ra,0x1
    80020400:	9c8080e7          	jalr	-1592(ra) # 80020dc4 <_ZN6kernel9Scheduler3putEPNS_6ThreadE>
        Thread* next = Scheduler::get();
    80020404:	00001097          	auipc	ra,0x1
    80020408:	a24080e7          	jalr	-1500(ra) # 80020e28 <_ZN6kernel9Scheduler3getEv>
    8002040c:	00050913          	mv	s2,a0
        Scheduler::setRunning(next);
    80020410:	00001097          	auipc	ra,0x1
    80020414:	a88080e7          	jalr	-1400(ra) # 80020e98 <_ZN6kernel9Scheduler10setRunningEPNS_6ThreadE>
        yield(old, next);
    80020418:	00090593          	mv	a1,s2
    8002041c:	00048513          	mv	a0,s1
    80020420:	00000097          	auipc	ra,0x0
    80020424:	c0c080e7          	jalr	-1012(ra) # 8002002c <yield>
    80020428:	d61ff06f          	j	80020188 <TrapHandler+0x58>
        int irq = plic_claim();
    8002042c:	00006097          	auipc	ra,0x6
    80020430:	868080e7          	jalr	-1944(ra) # 80025c94 <plic_claim>
    80020434:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ){
    80020438:	00a00793          	li	a5,10
    8002043c:	00f50a63          	beq	a0,a5,80020450 <TrapHandler+0x320>
        plic_complete(irq);
    80020440:	00048513          	mv	a0,s1
    80020444:	00006097          	auipc	ra,0x6
    80020448:	888080e7          	jalr	-1912(ra) # 80025ccc <plic_complete>
    8002044c:	d3dff06f          	j	80020188 <TrapHandler+0x58>
            Console::handleInterrupt();
    80020450:	00001097          	auipc	ra,0x1
    80020454:	e0c080e7          	jalr	-500(ra) # 8002125c <_ZN6kernel7Console15handleInterruptEv>
    80020458:	fe9ff06f          	j	80020440 <TrapHandler+0x310>

000000008002045c <_Z9mem_allocm>:
        : "r" (a1), "r" (a2), "r" (a3)
        );
    return a0;
}

void *mem_alloc(size_t size) {
    8002045c:	ff010113          	addi	sp,sp,-16
    80020460:	00813423          	sd	s0,8(sp)
    80020464:	01010413          	addi	s0,sp,16
    size_t block = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80020468:	03f50593          	addi	a1,a0,63
    register uint64 a0 __asm__("a0") = opCode;
    8002046c:	00100513          	li	a0,1
    register uint64 a1 __asm__("a1") = arg1;
    80020470:	0065d593          	srli	a1,a1,0x6
        );
    80020474:	00000073          	ecall
    return (void*)sys_call1(MEM_ALLOC, (uint64)block);
}
    80020478:	00813403          	ld	s0,8(sp)
    8002047c:	01010113          	addi	sp,sp,16
    80020480:	00008067          	ret

0000000080020484 <_Z8mem_freePv>:

int mem_free(void * ptr) {
    80020484:	ff010113          	addi	sp,sp,-16
    80020488:	00813423          	sd	s0,8(sp)
    8002048c:	01010413          	addi	s0,sp,16
    if (!ptr)
    80020490:	02050063          	beqz	a0,800204b0 <_Z8mem_freePv+0x2c>
    80020494:	00050593          	mv	a1,a0
    register uint64 a0 __asm__("a0") = opCode;
    80020498:	00200513          	li	a0,2
        );
    8002049c:	00000073          	ecall
        return 0;
    return (int)sys_call1(MEM_FREE, (uint64)ptr);
    800204a0:	0005051b          	sext.w	a0,a0
}
    800204a4:	00813403          	ld	s0,8(sp)
    800204a8:	01010113          	addi	sp,sp,16
    800204ac:	00008067          	ret
        return 0;
    800204b0:	00000513          	li	a0,0
    800204b4:	ff1ff06f          	j	800204a4 <_Z8mem_freePv+0x20>

00000000800204b8 <_Z11thread_exitv>:

int thread_exit() {
    800204b8:	ff010113          	addi	sp,sp,-16
    800204bc:	00813423          	sd	s0,8(sp)
    800204c0:	01010413          	addi	s0,sp,16
    register uint64 a0 __asm__("a0") = opCode;
    800204c4:	01200513          	li	a0,18
        );
    800204c8:	00000073          	ecall
    return (int)sys_call0(THREAD_EXIT);
}
    800204cc:	0005051b          	sext.w	a0,a0
    800204d0:	00813403          	ld	s0,8(sp)
    800204d4:	01010113          	addi	sp,sp,16
    800204d8:	00008067          	ret

00000000800204dc <_Z15thread_dispatchv>:

void thread_dispatch() {
    800204dc:	ff010113          	addi	sp,sp,-16
    800204e0:	00813423          	sd	s0,8(sp)
    800204e4:	01010413          	addi	s0,sp,16
    register uint64 a0 __asm__("a0") = opCode;
    800204e8:	01300513          	li	a0,19
        );
    800204ec:	00000073          	ecall
    sys_call0(THREAD_DISPATCH);
}
    800204f0:	00813403          	ld	s0,8(sp)
    800204f4:	01010113          	addi	sp,sp,16
    800204f8:	00008067          	ret

00000000800204fc <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void(start_routine)(void*), void* arg) {
    800204fc:	ff010113          	addi	sp,sp,-16
    80020500:	00813423          	sd	s0,8(sp)
    80020504:	01010413          	addi	s0,sp,16
    80020508:	00050713          	mv	a4,a0
    8002050c:	00058793          	mv	a5,a1
    80020510:	00060693          	mv	a3,a2
    register uint64 a0 __asm__("a0") = opCode;
    80020514:	01100513          	li	a0,17
    register uint64 a1 __asm__("a1") = arg1;
    80020518:	00070593          	mv	a1,a4
    register uint64 a2 __asm__("a2") = arg2;
    8002051c:	00078613          	mv	a2,a5
        );
    80020520:	00000073          	ecall
    return (int)sys_call3(THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
}
    80020524:	0005051b          	sext.w	a0,a0
    80020528:	00813403          	ld	s0,8(sp)
    8002052c:	01010113          	addi	sp,sp,16
    80020530:	00008067          	ret

0000000080020534 <_Z13get_thread_idv>:

int get_thread_id() {
    80020534:	ff010113          	addi	sp,sp,-16
    80020538:	00813423          	sd	s0,8(sp)
    8002053c:	01010413          	addi	s0,sp,16
    register uint64 a0 __asm__("a0") = opCode;
    80020540:	01400513          	li	a0,20
        );
    80020544:	00000073          	ecall
    return (int)sys_call0(GET_ID);
}
    80020548:	0005051b          	sext.w	a0,a0
    8002054c:	00813403          	ld	s0,8(sp)
    80020550:	01010113          	addi	sp,sp,16
    80020554:	00008067          	ret

0000000080020558 <_Z11thread_sendP7_threadPc>:

int thread_send(thread_t t, char *msg) {
    80020558:	ff010113          	addi	sp,sp,-16
    8002055c:	00813423          	sd	s0,8(sp)
    80020560:	01010413          	addi	s0,sp,16
    80020564:	00050793          	mv	a5,a0
    80020568:	00058613          	mv	a2,a1
    register uint64 a0 __asm__("a0") = opCode;
    8002056c:	01500513          	li	a0,21
    register uint64 a1 __asm__("a1") = arg1;
    80020570:	00078593          	mv	a1,a5
        );
    80020574:	00000073          	ecall
    return (int)sys_call2(THREAD_SEND, (uint64)t, (uint64)msg);
}
    80020578:	0005051b          	sext.w	a0,a0
    8002057c:	00813403          	ld	s0,8(sp)
    80020580:	01010113          	addi	sp,sp,16
    80020584:	00008067          	ret

0000000080020588 <_Z14thread_recievev>:

char* thread_recieve() {
    80020588:	ff010113          	addi	sp,sp,-16
    8002058c:	00813423          	sd	s0,8(sp)
    80020590:	01010413          	addi	s0,sp,16
    register uint64 a0 __asm__("a0") = opCode;
    80020594:	01600513          	li	a0,22
        );
    80020598:	00000073          	ecall
    return (char*)sys_call0(THREAD_RECIEVE);
}
    8002059c:	00813403          	ld	s0,8(sp)
    800205a0:	01010113          	addi	sp,sp,16
    800205a4:	00008067          	ret

00000000800205a8 <_Z8sem_openPP4_semj>:

int sem_open(sem_t *handle, unsigned init) {
    800205a8:	ff010113          	addi	sp,sp,-16
    800205ac:	00813423          	sd	s0,8(sp)
    800205b0:	01010413          	addi	s0,sp,16
    800205b4:	00050793          	mv	a5,a0
    800205b8:	00058613          	mv	a2,a1
    register uint64 a0 __asm__("a0") = opCode;
    800205bc:	02100513          	li	a0,33
    register uint64 a1 __asm__("a1") = arg1;
    800205c0:	00078593          	mv	a1,a5
    register uint64 a2 __asm__("a2") = arg2;
    800205c4:	02061613          	slli	a2,a2,0x20
    800205c8:	02065613          	srli	a2,a2,0x20
        );
    800205cc:	00000073          	ecall
    return (int)sys_call2(SEM_OPEN, (uint64)handle, (uint64)init);
}
    800205d0:	0005051b          	sext.w	a0,a0
    800205d4:	00813403          	ld	s0,8(sp)
    800205d8:	01010113          	addi	sp,sp,16
    800205dc:	00008067          	ret

00000000800205e0 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800205e0:	ff010113          	addi	sp,sp,-16
    800205e4:	00813423          	sd	s0,8(sp)
    800205e8:	01010413          	addi	s0,sp,16
    800205ec:	00050593          	mv	a1,a0
    register uint64 a0 __asm__("a0") = opCode;
    800205f0:	02200513          	li	a0,34
        );
    800205f4:	00000073          	ecall
    return (int)sys_call1(SEM_CLOSE, (uint64)handle);
}
    800205f8:	0005051b          	sext.w	a0,a0
    800205fc:	00813403          	ld	s0,8(sp)
    80020600:	01010113          	addi	sp,sp,16
    80020604:	00008067          	ret

0000000080020608 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80020608:	ff010113          	addi	sp,sp,-16
    8002060c:	00813423          	sd	s0,8(sp)
    80020610:	01010413          	addi	s0,sp,16
    80020614:	00050593          	mv	a1,a0
    register uint64 a0 __asm__("a0") = opCode;
    80020618:	02300513          	li	a0,35
        );
    8002061c:	00000073          	ecall
    return (int)sys_call1(SEM_WAIT, (uint64)id);
}
    80020620:	0005051b          	sext.w	a0,a0
    80020624:	00813403          	ld	s0,8(sp)
    80020628:	01010113          	addi	sp,sp,16
    8002062c:	00008067          	ret

0000000080020630 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80020630:	ff010113          	addi	sp,sp,-16
    80020634:	00813423          	sd	s0,8(sp)
    80020638:	01010413          	addi	s0,sp,16
    8002063c:	00050593          	mv	a1,a0
    register uint64 a0 __asm__("a0") = opCode;
    80020640:	02400513          	li	a0,36
        );
    80020644:	00000073          	ecall
    return (int)sys_call1(SEM_SIGNAL, (uint64)id);
}
    80020648:	0005051b          	sext.w	a0,a0
    8002064c:	00813403          	ld	s0,8(sp)
    80020650:	01010113          	addi	sp,sp,16
    80020654:	00008067          	ret

0000000080020658 <_Z10time_sleepm>:

int time_sleep(time_t t) {
    80020658:	ff010113          	addi	sp,sp,-16
    8002065c:	00813423          	sd	s0,8(sp)
    80020660:	01010413          	addi	s0,sp,16
    80020664:	00050593          	mv	a1,a0
    register uint64 a0 __asm__("a0") = opCode;
    80020668:	03100513          	li	a0,49
        );
    8002066c:	00000073          	ecall
    return (int)sys_call1(TIME_SLEEP, (uint64)t);
}
    80020670:	0005051b          	sext.w	a0,a0
    80020674:	00813403          	ld	s0,8(sp)
    80020678:	01010113          	addi	sp,sp,16
    8002067c:	00008067          	ret

0000000080020680 <_Z4getcv>:

char getc() {
    80020680:	ff010113          	addi	sp,sp,-16
    80020684:	00813423          	sd	s0,8(sp)
    80020688:	01010413          	addi	s0,sp,16
    register uint64 a0 __asm__("a0") = opCode;
    8002068c:	04100513          	li	a0,65
        );
    80020690:	00000073          	ecall
    return (char)sys_call0(GETC);
}
    80020694:	0ff57513          	andi	a0,a0,255
    80020698:	00813403          	ld	s0,8(sp)
    8002069c:	01010113          	addi	sp,sp,16
    800206a0:	00008067          	ret

00000000800206a4 <_Z4putcc>:

void putc(char c) {
    800206a4:	ff010113          	addi	sp,sp,-16
    800206a8:	00813423          	sd	s0,8(sp)
    800206ac:	01010413          	addi	s0,sp,16
    800206b0:	00050593          	mv	a1,a0
    register uint64 a0 __asm__("a0") = opCode;
    800206b4:	04200513          	li	a0,66
        );
    800206b8:	00000073          	ecall
    sys_call1(PUTC, (uint64)c);
}
    800206bc:	00813403          	ld	s0,8(sp)
    800206c0:	01010113          	addi	sp,sp,16
    800206c4:	00008067          	ret

00000000800206c8 <_ZN6kernel9SemaphoreC1Ej>:
#include "../h/Semaphore.h"

namespace kernel {
    Semaphore::Semaphore(unsigned init)
    800206c8:	ff010113          	addi	sp,sp,-16
    800206cc:	00813423          	sd	s0,8(sp)
    800206d0:	01010413          	addi	s0,sp,16
    : val((int)init), blockedHead(nullptr), blockedTail(nullptr){ }
    800206d4:	00b52023          	sw	a1,0(a0)
    800206d8:	00053423          	sd	zero,8(a0)
    800206dc:	00053823          	sd	zero,16(a0)
    800206e0:	00813403          	ld	s0,8(sp)
    800206e4:	01010113          	addi	sp,sp,16
    800206e8:	00008067          	ret

00000000800206ec <_ZN6kernel9Semaphore15createSemaphoreEj>:

    extern "C" void yield(Thread*, Thread*);

    Semaphore *Semaphore::createSemaphore(unsigned init) {
    800206ec:	fe010113          	addi	sp,sp,-32
    800206f0:	00113c23          	sd	ra,24(sp)
    800206f4:	00813823          	sd	s0,16(sp)
    800206f8:	00913423          	sd	s1,8(sp)
    800206fc:	01213023          	sd	s2,0(sp)
    80020700:	02010413          	addi	s0,sp,32
    80020704:	00050913          	mv	s2,a0
        uint64 semSize = (sizeof(Semaphore) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        void* mem = MemoryAllocator::malloc(semSize);
    80020708:	00100513          	li	a0,1
    8002070c:	00001097          	auipc	ra,0x1
    80020710:	3b8080e7          	jalr	952(ra) # 80021ac4 <_ZN15MemoryAllocator6mallocEm>
    80020714:	00050493          	mv	s1,a0
        if (!mem) return nullptr;
    80020718:	00050863          	beqz	a0,80020728 <_ZN6kernel9Semaphore15createSemaphoreEj+0x3c>
        return new(mem) Semaphore(init);
    8002071c:	00090593          	mv	a1,s2
    80020720:	00000097          	auipc	ra,0x0
    80020724:	fa8080e7          	jalr	-88(ra) # 800206c8 <_ZN6kernel9SemaphoreC1Ej>
    }
    80020728:	00048513          	mv	a0,s1
    8002072c:	01813083          	ld	ra,24(sp)
    80020730:	01013403          	ld	s0,16(sp)
    80020734:	00813483          	ld	s1,8(sp)
    80020738:	00013903          	ld	s2,0(sp)
    8002073c:	02010113          	addi	sp,sp,32
    80020740:	00008067          	ret

0000000080020744 <_ZN6kernel9Semaphore10getBlockedEv>:
        }
        MemoryAllocator::dealloc(s);
        return 0;
    }

    Thread *Semaphore::getBlocked() {
    80020744:	ff010113          	addi	sp,sp,-16
    80020748:	00813423          	sd	s0,8(sp)
    8002074c:	01010413          	addi	s0,sp,16
    80020750:	00050793          	mv	a5,a0
        if (!blockedHead) return nullptr;
    80020754:	00853503          	ld	a0,8(a0)
    80020758:	00050a63          	beqz	a0,8002076c <_ZN6kernel9Semaphore10getBlockedEv+0x28>
        Thread* t = blockedHead;
        blockedHead = blockedHead->semNext;
    8002075c:	05853703          	ld	a4,88(a0)
    80020760:	00e7b423          	sd	a4,8(a5)
        if (!blockedHead) blockedTail = nullptr;
    80020764:	00070a63          	beqz	a4,80020778 <_ZN6kernel9Semaphore10getBlockedEv+0x34>
        t->semNext = nullptr;
    80020768:	04053c23          	sd	zero,88(a0)
        return t;
    }
    8002076c:	00813403          	ld	s0,8(sp)
    80020770:	01010113          	addi	sp,sp,16
    80020774:	00008067          	ret
        if (!blockedHead) blockedTail = nullptr;
    80020778:	0007b823          	sd	zero,16(a5)
    8002077c:	fedff06f          	j	80020768 <_ZN6kernel9Semaphore10getBlockedEv+0x24>

0000000080020780 <_ZN6kernel9Semaphore16deallocSemaphoreEPS0_>:
    int Semaphore::deallocSemaphore(Semaphore *s) {
    80020780:	fe010113          	addi	sp,sp,-32
    80020784:	00113c23          	sd	ra,24(sp)
    80020788:	00813823          	sd	s0,16(sp)
    8002078c:	00913423          	sd	s1,8(sp)
    80020790:	02010413          	addi	s0,sp,32
    80020794:	00050493          	mv	s1,a0
        if (!s) return -1;
    80020798:	04050663          	beqz	a0,800207e4 <_ZN6kernel9Semaphore16deallocSemaphoreEPS0_+0x64>
        while ((t = s->getBlocked())) {
    8002079c:	00048513          	mv	a0,s1
    800207a0:	00000097          	auipc	ra,0x0
    800207a4:	fa4080e7          	jalr	-92(ra) # 80020744 <_ZN6kernel9Semaphore10getBlockedEv>
    800207a8:	00050c63          	beqz	a0,800207c0 <_ZN6kernel9Semaphore16deallocSemaphoreEPS0_+0x40>
            t->semStatus = CLOSED;
    800207ac:	fff00793          	li	a5,-1
    800207b0:	06f52023          	sw	a5,96(a0)
            Scheduler::put(t);
    800207b4:	00000097          	auipc	ra,0x0
    800207b8:	610080e7          	jalr	1552(ra) # 80020dc4 <_ZN6kernel9Scheduler3putEPNS_6ThreadE>
        while ((t = s->getBlocked())) {
    800207bc:	fe1ff06f          	j	8002079c <_ZN6kernel9Semaphore16deallocSemaphoreEPS0_+0x1c>
        MemoryAllocator::dealloc(s);
    800207c0:	00048513          	mv	a0,s1
    800207c4:	00001097          	auipc	ra,0x1
    800207c8:	458080e7          	jalr	1112(ra) # 80021c1c <_ZN15MemoryAllocator7deallocEPv>
        return 0;
    800207cc:	00000513          	li	a0,0
    }
    800207d0:	01813083          	ld	ra,24(sp)
    800207d4:	01013403          	ld	s0,16(sp)
    800207d8:	00813483          	ld	s1,8(sp)
    800207dc:	02010113          	addi	sp,sp,32
    800207e0:	00008067          	ret
        if (!s) return -1;
    800207e4:	fff00513          	li	a0,-1
    800207e8:	fe9ff06f          	j	800207d0 <_ZN6kernel9Semaphore16deallocSemaphoreEPS0_+0x50>

00000000800207ec <_ZN6kernel9Semaphore5blockEPNS_6ThreadE>:

    void Semaphore::block(Thread* t) {
    800207ec:	fe010113          	addi	sp,sp,-32
    800207f0:	00113c23          	sd	ra,24(sp)
    800207f4:	00813823          	sd	s0,16(sp)
    800207f8:	00913423          	sd	s1,8(sp)
    800207fc:	01213023          	sd	s2,0(sp)
    80020800:	02010413          	addi	s0,sp,32
    80020804:	00058493          	mv	s1,a1
        t->semNext = nullptr;
    80020808:	0405bc23          	sd	zero,88(a1)
        if (!blockedHead) blockedHead = blockedTail = t;
    8002080c:	00853783          	ld	a5,8(a0)
    80020810:	04078e63          	beqz	a5,8002086c <_ZN6kernel9Semaphore5blockEPNS_6ThreadE+0x80>
        else {
            blockedTail->semNext = t;
    80020814:	01053783          	ld	a5,16(a0)
    80020818:	04b7bc23          	sd	a1,88(a5)
            blockedTail = blockedTail->semNext;
    8002081c:	01053783          	ld	a5,16(a0)
    80020820:	0587b783          	ld	a5,88(a5)
    80020824:	00f53823          	sd	a5,16(a0)
        void setState(ThreadState state) { this->state = state; }
    80020828:	00200793          	li	a5,2
    8002082c:	02f4a823          	sw	a5,48(s1)
        }
        t->setState(BLOCKED);
        Thread* next = Scheduler::get();
    80020830:	00000097          	auipc	ra,0x0
    80020834:	5f8080e7          	jalr	1528(ra) # 80020e28 <_ZN6kernel9Scheduler3getEv>
    80020838:	00050913          	mv	s2,a0
        Scheduler::setRunning(next);
    8002083c:	00000097          	auipc	ra,0x0
    80020840:	65c080e7          	jalr	1628(ra) # 80020e98 <_ZN6kernel9Scheduler10setRunningEPNS_6ThreadE>
        yield(t, next);
    80020844:	00090593          	mv	a1,s2
    80020848:	00048513          	mv	a0,s1
    8002084c:	fffff097          	auipc	ra,0xfffff
    80020850:	7e0080e7          	jalr	2016(ra) # 8002002c <yield>
    }
    80020854:	01813083          	ld	ra,24(sp)
    80020858:	01013403          	ld	s0,16(sp)
    8002085c:	00813483          	ld	s1,8(sp)
    80020860:	00013903          	ld	s2,0(sp)
    80020864:	02010113          	addi	sp,sp,32
    80020868:	00008067          	ret
        if (!blockedHead) blockedHead = blockedTail = t;
    8002086c:	00b53823          	sd	a1,16(a0)
    80020870:	00b53423          	sd	a1,8(a0)
    80020874:	fb5ff06f          	j	80020828 <_ZN6kernel9Semaphore5blockEPNS_6ThreadE+0x3c>

0000000080020878 <_ZN6kernel9Semaphore4waitEv>:

    int Semaphore::wait() {
    80020878:	fe010113          	addi	sp,sp,-32
    8002087c:	00113c23          	sd	ra,24(sp)
    80020880:	00813823          	sd	s0,16(sp)
    80020884:	00913423          	sd	s1,8(sp)
    80020888:	01213023          	sd	s2,0(sp)
    8002088c:	02010413          	addi	s0,sp,32
    80020890:	00050493          	mv	s1,a0
        if (val > 0) {val--; return 0;}
    80020894:	00052783          	lw	a5,0(a0)
    80020898:	02f05463          	blez	a5,800208c0 <_ZN6kernel9Semaphore4waitEv+0x48>
    8002089c:	fff7879b          	addiw	a5,a5,-1
    800208a0:	00f52023          	sw	a5,0(a0)
    800208a4:	00000513          	li	a0,0
        Thread* curr = Scheduler::getRunning();
        curr->semStatus = SIGNALED;
        block(curr);
        return curr->semStatus;
    }
    800208a8:	01813083          	ld	ra,24(sp)
    800208ac:	01013403          	ld	s0,16(sp)
    800208b0:	00813483          	ld	s1,8(sp)
    800208b4:	00013903          	ld	s2,0(sp)
    800208b8:	02010113          	addi	sp,sp,32
    800208bc:	00008067          	ret
        Thread* curr = Scheduler::getRunning();
    800208c0:	00000097          	auipc	ra,0x0
    800208c4:	5b8080e7          	jalr	1464(ra) # 80020e78 <_ZN6kernel9Scheduler10getRunningEv>
    800208c8:	00050913          	mv	s2,a0
        curr->semStatus = SIGNALED;
    800208cc:	06052023          	sw	zero,96(a0)
        block(curr);
    800208d0:	00050593          	mv	a1,a0
    800208d4:	00048513          	mv	a0,s1
    800208d8:	00000097          	auipc	ra,0x0
    800208dc:	f14080e7          	jalr	-236(ra) # 800207ec <_ZN6kernel9Semaphore5blockEPNS_6ThreadE>
        return curr->semStatus;
    800208e0:	06092503          	lw	a0,96(s2)
    800208e4:	fc5ff06f          	j	800208a8 <_ZN6kernel9Semaphore4waitEv+0x30>

00000000800208e8 <_ZN6kernel9Semaphore6signalEv>:

    int Semaphore::signal() {
    800208e8:	fe010113          	addi	sp,sp,-32
    800208ec:	00113c23          	sd	ra,24(sp)
    800208f0:	00813823          	sd	s0,16(sp)
    800208f4:	00913423          	sd	s1,8(sp)
    800208f8:	02010413          	addi	s0,sp,32
    800208fc:	00050493          	mv	s1,a0
        Thread* t = getBlocked();
    80020900:	00000097          	auipc	ra,0x0
    80020904:	e44080e7          	jalr	-444(ra) # 80020744 <_ZN6kernel9Semaphore10getBlockedEv>
        if (t) {
    80020908:	02051463          	bnez	a0,80020930 <_ZN6kernel9Semaphore6signalEv+0x48>
            t->semStatus = SIGNALED;
            Scheduler::put(t);
            return 0;
        }
        val++;
    8002090c:	0004a783          	lw	a5,0(s1)
    80020910:	0017879b          	addiw	a5,a5,1
    80020914:	00f4a023          	sw	a5,0(s1)
        return 0;
    }
    80020918:	00000513          	li	a0,0
    8002091c:	01813083          	ld	ra,24(sp)
    80020920:	01013403          	ld	s0,16(sp)
    80020924:	00813483          	ld	s1,8(sp)
    80020928:	02010113          	addi	sp,sp,32
    8002092c:	00008067          	ret
            t->semStatus = SIGNALED;
    80020930:	06052023          	sw	zero,96(a0)
            Scheduler::put(t);
    80020934:	00000097          	auipc	ra,0x0
    80020938:	490080e7          	jalr	1168(ra) # 80020dc4 <_ZN6kernel9Scheduler3putEPNS_6ThreadE>
            return 0;
    8002093c:	fddff06f          	j	80020918 <_ZN6kernel9Semaphore6signalEv+0x30>

0000000080020940 <threadWrapper>:
#include "../h/Thread.h"
#include "../h/Console.h"
#include "../h/Scheduler.h"

namespace kernel {
    extern "C" void threadWrapper() {
    80020940:	ff010113          	addi	sp,sp,-16
    80020944:	00113423          	sd	ra,8(sp)
    80020948:	00813023          	sd	s0,0(sp)
    8002094c:	01010413          	addi	s0,sp,16
        kernel::Thread* running = kernel::Scheduler::getRunning();
    80020950:	00000097          	auipc	ra,0x0
    80020954:	528080e7          	jalr	1320(ra) # 80020e78 <_ZN6kernel9Scheduler10getRunningEv>
        void (*getFunc())(void*) const {return func;}
    80020958:	00853783          	ld	a5,8(a0)
        running->getFunc()(running->getArg());
    8002095c:	01053503          	ld	a0,16(a0)
    80020960:	000780e7          	jalr	a5
        thread_exit();
    80020964:	00000097          	auipc	ra,0x0
    80020968:	b54080e7          	jalr	-1196(ra) # 800204b8 <_Z11thread_exitv>
    }
    8002096c:	00813083          	ld	ra,8(sp)
    80020970:	00013403          	ld	s0,0(sp)
    80020974:	01010113          	addi	sp,sp,16
    80020978:	00008067          	ret

000000008002097c <_ZN6kernel6ThreadC1EPFvPvES1_>:

    extern "C" void userThreadStart();

    int Thread::nextId = 0;

    Thread::Thread(void (*func)(void*), void* arg)
    8002097c:	ff010113          	addi	sp,sp,-16
    80020980:	00813423          	sd	s0,8(sp)
    80020984:	01010413          	addi	s0,sp,16
        : func(func), arg(arg)
        , userstackSpace(nullptr), systemstackSpace(nullptr), stackSize(0)
        , state(READY), kernelThread(false)
        , timeToWake(0), sleepNext(nullptr), readyNext(nullptr), remainingTime(0)
        , semNext(nullptr), semStatus(SIGNALED), semNeeded(0) , id(nextId++)
        , mail(nullptr), sendersWaiting(nullptr), recvWaiting(false){
    80020988:	00b53423          	sd	a1,8(a0)
    8002098c:	00c53823          	sd	a2,16(a0)
    80020990:	00053c23          	sd	zero,24(a0)
    80020994:	02053023          	sd	zero,32(a0)
    80020998:	02053423          	sd	zero,40(a0)
    8002099c:	02052823          	sw	zero,48(a0)
    800209a0:	02050a23          	sb	zero,52(a0)
    800209a4:	02053c23          	sd	zero,56(a0)
    800209a8:	04053023          	sd	zero,64(a0)
    800209ac:	04053423          	sd	zero,72(a0)
    800209b0:	04053823          	sd	zero,80(a0)
    800209b4:	04053c23          	sd	zero,88(a0)
    800209b8:	06052023          	sw	zero,96(a0)
    800209bc:	06052223          	sw	zero,100(a0)
        , semNext(nullptr), semStatus(SIGNALED), semNeeded(0) , id(nextId++)
    800209c0:	0000a717          	auipc	a4,0xa
    800209c4:	fb870713          	addi	a4,a4,-72 # 8002a978 <_ZN6kernel6Thread6nextIdE>
    800209c8:	00072783          	lw	a5,0(a4)
    800209cc:	0017869b          	addiw	a3,a5,1
    800209d0:	00d72023          	sw	a3,0(a4)
        , mail(nullptr), sendersWaiting(nullptr), recvWaiting(false){
    800209d4:	06f52423          	sw	a5,104(a0)
    800209d8:	06053823          	sd	zero,112(a0)
    800209dc:	06053c23          	sd	zero,120(a0)
    800209e0:	08050023          	sb	zero,128(a0)
        context.sp = 0;
    800209e4:	00053023          	sd	zero,0(a0)
    }
    800209e8:	00813403          	ld	s0,8(sp)
    800209ec:	01010113          	addi	sp,sp,16
    800209f0:	00008067          	ret

00000000800209f4 <_ZN6kernel6Thread16createMainThreadEv>:

    Thread *Thread::createMainThread() {
    800209f4:	fe010113          	addi	sp,sp,-32
    800209f8:	00113c23          	sd	ra,24(sp)
    800209fc:	00813823          	sd	s0,16(sp)
    80020a00:	00913423          	sd	s1,8(sp)
    80020a04:	02010413          	addi	s0,sp,32
        uint64 threadBlock = (sizeof(Thread) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        void* mem = MemoryAllocator::malloc(threadBlock);
    80020a08:	00300513          	li	a0,3
    80020a0c:	00001097          	auipc	ra,0x1
    80020a10:	0b8080e7          	jalr	184(ra) # 80021ac4 <_ZN15MemoryAllocator6mallocEm>
    80020a14:	00050493          	mv	s1,a0
        if (!mem) return nullptr;
    80020a18:	04050063          	beqz	a0,80020a58 <_ZN6kernel6Thread16createMainThreadEv+0x64>

        Thread* t = new(mem) Thread(nullptr, nullptr);
    80020a1c:	00000613          	li	a2,0
    80020a20:	00000593          	li	a1,0
    80020a24:	00000097          	auipc	ra,0x0
    80020a28:	f58080e7          	jalr	-168(ra) # 8002097c <_ZN6kernel6ThreadC1EPFvPvES1_>

        uint64 sysStackSize = (DEFAULT_STACK_SIZE + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        t->systemstackSpace = MemoryAllocator::malloc(sysStackSize);
    80020a2c:	04000513          	li	a0,64
    80020a30:	00001097          	auipc	ra,0x1
    80020a34:	094080e7          	jalr	148(ra) # 80021ac4 <_ZN15MemoryAllocator6mallocEm>
    80020a38:	02a4b023          	sd	a0,32(s1)
        if (!t->systemstackSpace) return nullptr;
    80020a3c:	02050a63          	beqz	a0,80020a70 <_ZN6kernel6Thread16createMainThreadEv+0x7c>
        t->stackSize = DEFAULT_STACK_SIZE;
    80020a40:	000017b7          	lui	a5,0x1
    80020a44:	02f4b423          	sd	a5,40(s1)

        t->userstackSpace = nullptr;
    80020a48:	0004bc23          	sd	zero,24(s1)

        t->state = RUNNING;
    80020a4c:	00100793          	li	a5,1
    80020a50:	02f4a823          	sw	a5,48(s1)
        t->kernelThread = false;
    80020a54:	02048a23          	sb	zero,52(s1)

        return t;
    }
    80020a58:	00048513          	mv	a0,s1
    80020a5c:	01813083          	ld	ra,24(sp)
    80020a60:	01013403          	ld	s0,16(sp)
    80020a64:	00813483          	ld	s1,8(sp)
    80020a68:	02010113          	addi	sp,sp,32
    80020a6c:	00008067          	ret
        if (!t->systemstackSpace) return nullptr;
    80020a70:	00050493          	mv	s1,a0
    80020a74:	fe5ff06f          	j	80020a58 <_ZN6kernel6Thread16createMainThreadEv+0x64>

0000000080020a78 <_ZN6kernel6Thread12createThreadEPFvPvES1_>:

    Thread *Thread::createThread(void (*func)(void *), void *arg) {
    80020a78:	fd010113          	addi	sp,sp,-48
    80020a7c:	02113423          	sd	ra,40(sp)
    80020a80:	02813023          	sd	s0,32(sp)
    80020a84:	00913c23          	sd	s1,24(sp)
    80020a88:	01213823          	sd	s2,16(sp)
    80020a8c:	01313423          	sd	s3,8(sp)
    80020a90:	03010413          	addi	s0,sp,48
    80020a94:	00050913          	mv	s2,a0
    80020a98:	00058993          	mv	s3,a1
        uint64 threadBlock = (sizeof(Thread) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        void* mem = MemoryAllocator::malloc(threadBlock);
    80020a9c:	00300513          	li	a0,3
    80020aa0:	00001097          	auipc	ra,0x1
    80020aa4:	024080e7          	jalr	36(ra) # 80021ac4 <_ZN15MemoryAllocator6mallocEm>
    80020aa8:	00050493          	mv	s1,a0
        if (!mem) return nullptr;
    80020aac:	0a050663          	beqz	a0,80020b58 <_ZN6kernel6Thread12createThreadEPFvPvES1_+0xe0>

        Thread* t = new(mem) Thread(func, arg);
    80020ab0:	00098613          	mv	a2,s3
    80020ab4:	00090593          	mv	a1,s2
    80020ab8:	00000097          	auipc	ra,0x0
    80020abc:	ec4080e7          	jalr	-316(ra) # 8002097c <_ZN6kernel6ThreadC1EPFvPvES1_>

        uint64 stackBlock = (DEFAULT_STACK_SIZE + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        t->systemstackSpace = MemoryAllocator::malloc(stackBlock);
    80020ac0:	04000513          	li	a0,64
    80020ac4:	00001097          	auipc	ra,0x1
    80020ac8:	000080e7          	jalr	ra # 80021ac4 <_ZN15MemoryAllocator6mallocEm>
    80020acc:	02a4b023          	sd	a0,32(s1)
        if (!t->systemstackSpace) return nullptr;
    80020ad0:	0a050463          	beqz	a0,80020b78 <_ZN6kernel6Thread12createThreadEPFvPvES1_+0x100>
        t->userstackSpace = MemoryAllocator::malloc(stackBlock);
    80020ad4:	04000513          	li	a0,64
    80020ad8:	00001097          	auipc	ra,0x1
    80020adc:	fec080e7          	jalr	-20(ra) # 80021ac4 <_ZN15MemoryAllocator6mallocEm>
    80020ae0:	00a4bc23          	sd	a0,24(s1)
        if (!t->userstackSpace) return nullptr;
    80020ae4:	08050e63          	beqz	a0,80020b80 <_ZN6kernel6Thread12createThreadEPFvPvES1_+0x108>
        t->stackSize = DEFAULT_STACK_SIZE;
    80020ae8:	000016b7          	lui	a3,0x1
    80020aec:	02d4b423          	sd	a3,40(s1)

        uint64* sysTop = (uint64*)((char*)t->systemstackSpace + DEFAULT_STACK_SIZE);
    80020af0:	0204b603          	ld	a2,32(s1)
    80020af4:	00d605b3          	add	a1,a2,a3
        uint64* userTop = (uint64*)((char*)t->userstackSpace + DEFAULT_STACK_SIZE);
    80020af8:	00d50533          	add	a0,a0,a3

        uint64* frame = (uint64*)sysTop;
        frame -= 13;
    80020afc:	f9868693          	addi	a3,a3,-104 # f98 <_entry-0x7ffff068>
    80020b00:	00d606b3          	add	a3,a2,a3
        frame[0] = (uint64)&userThreadStart;
    80020b04:	0000a797          	auipc	a5,0xa
    80020b08:	e047b783          	ld	a5,-508(a5) # 8002a908 <_GLOBAL_OFFSET_TABLE_+0x30>
    80020b0c:	f8f5bc23          	sd	a5,-104(a1)
        for (int i = 1; i < 13; frame[i++] = 0);
    80020b10:	00100793          	li	a5,1
    80020b14:	00c00713          	li	a4,12
    80020b18:	00f74c63          	blt	a4,a5,80020b30 <_ZN6kernel6Thread12createThreadEPFvPvES1_+0xb8>
    80020b1c:	00379713          	slli	a4,a5,0x3
    80020b20:	00e68733          	add	a4,a3,a4
    80020b24:	00073023          	sd	zero,0(a4)
    80020b28:	0017879b          	addiw	a5,a5,1
    80020b2c:	fe9ff06f          	j	80020b14 <_ZN6kernel6Thread12createThreadEPFvPvES1_+0x9c>
        frame[2] = (uint64)userTop;
    80020b30:	000017b7          	lui	a5,0x1
    80020b34:	00f607b3          	add	a5,a2,a5
    80020b38:	faa7b423          	sd	a0,-88(a5) # fa8 <_entry-0x7ffff058>
        frame[3] = (uint64)&threadWrapper;
    80020b3c:	00000717          	auipc	a4,0x0
    80020b40:	e0470713          	addi	a4,a4,-508 # 80020940 <threadWrapper>
    80020b44:	fae7b823          	sd	a4,-80(a5)
        frame[4] = (uint64)sysTop;
    80020b48:	fab7bc23          	sd	a1,-72(a5)

        t->context.sp = (uint64)frame;
    80020b4c:	00d4b023          	sd	a3,0(s1)
        t->state = READY;
    80020b50:	0204a823          	sw	zero,48(s1)
        t->kernelThread = false;
    80020b54:	02048a23          	sb	zero,52(s1)
        return t;
    }
    80020b58:	00048513          	mv	a0,s1
    80020b5c:	02813083          	ld	ra,40(sp)
    80020b60:	02013403          	ld	s0,32(sp)
    80020b64:	01813483          	ld	s1,24(sp)
    80020b68:	01013903          	ld	s2,16(sp)
    80020b6c:	00813983          	ld	s3,8(sp)
    80020b70:	03010113          	addi	sp,sp,48
    80020b74:	00008067          	ret
        if (!t->systemstackSpace) return nullptr;
    80020b78:	00050493          	mv	s1,a0
    80020b7c:	fddff06f          	j	80020b58 <_ZN6kernel6Thread12createThreadEPFvPvES1_+0xe0>
        if (!t->userstackSpace) return nullptr;
    80020b80:	00050493          	mv	s1,a0
    80020b84:	fd5ff06f          	j	80020b58 <_ZN6kernel6Thread12createThreadEPFvPvES1_+0xe0>

0000000080020b88 <_ZN6kernel6Thread18createKernelThreadEPFvPvES1_>:

    Thread *Thread::createKernelThread(void (*func)(void *), void *arg) {
    80020b88:	fd010113          	addi	sp,sp,-48
    80020b8c:	02113423          	sd	ra,40(sp)
    80020b90:	02813023          	sd	s0,32(sp)
    80020b94:	00913c23          	sd	s1,24(sp)
    80020b98:	01213823          	sd	s2,16(sp)
    80020b9c:	01313423          	sd	s3,8(sp)
    80020ba0:	03010413          	addi	s0,sp,48
    80020ba4:	00050913          	mv	s2,a0
    80020ba8:	00058993          	mv	s3,a1
        uint64 threadBlock = (sizeof(Thread) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        void* mem = MemoryAllocator::malloc(threadBlock);
    80020bac:	00300513          	li	a0,3
    80020bb0:	00001097          	auipc	ra,0x1
    80020bb4:	f14080e7          	jalr	-236(ra) # 80021ac4 <_ZN15MemoryAllocator6mallocEm>
    80020bb8:	00050493          	mv	s1,a0
        if (!mem) return nullptr;
    80020bbc:	08050c63          	beqz	a0,80020c54 <_ZN6kernel6Thread18createKernelThreadEPFvPvES1_+0xcc>
        Thread* t = new(mem) Thread(func, arg);
    80020bc0:	00098613          	mv	a2,s3
    80020bc4:	00090593          	mv	a1,s2
    80020bc8:	00000097          	auipc	ra,0x0
    80020bcc:	db4080e7          	jalr	-588(ra) # 8002097c <_ZN6kernel6ThreadC1EPFvPvES1_>

        uint64 stackBlock = (DEFAULT_STACK_SIZE + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        t->systemstackSpace = MemoryAllocator::malloc(stackBlock);
    80020bd0:	04000513          	li	a0,64
    80020bd4:	00001097          	auipc	ra,0x1
    80020bd8:	ef0080e7          	jalr	-272(ra) # 80021ac4 <_ZN15MemoryAllocator6mallocEm>
    80020bdc:	02a4b023          	sd	a0,32(s1)
        if (!t->systemstackSpace) return nullptr;
    80020be0:	08050a63          	beqz	a0,80020c74 <_ZN6kernel6Thread18createKernelThreadEPFvPvES1_+0xec>
        t->userstackSpace = nullptr;
    80020be4:	0004bc23          	sd	zero,24(s1)
        t->stackSize = DEFAULT_STACK_SIZE;
    80020be8:	000016b7          	lui	a3,0x1
    80020bec:	02d4b423          	sd	a3,40(s1)
        t->kernelThread = true;
    80020bf0:	00100793          	li	a5,1
    80020bf4:	02f48a23          	sb	a5,52(s1)

        uint64* sysTop = (uint64*)((char*)t->systemstackSpace + DEFAULT_STACK_SIZE);
    80020bf8:	00d50633          	add	a2,a0,a3

        uint64* frame = (uint64*)sysTop;
        frame -= 13;
    80020bfc:	f9868693          	addi	a3,a3,-104 # f98 <_entry-0x7ffff068>
    80020c00:	00d506b3          	add	a3,a0,a3
        frame[0] = (uint64)&kernelThreadStart;
    80020c04:	0000a797          	auipc	a5,0xa
    80020c08:	d1c7b783          	ld	a5,-740(a5) # 8002a920 <_GLOBAL_OFFSET_TABLE_+0x48>
    80020c0c:	f8f63c23          	sd	a5,-104(a2)
        for (int i = 1; i < 13; frame[i++] = 0);
    80020c10:	00100793          	li	a5,1
    80020c14:	00c00713          	li	a4,12
    80020c18:	00f74c63          	blt	a4,a5,80020c30 <_ZN6kernel6Thread18createKernelThreadEPFvPvES1_+0xa8>
    80020c1c:	00379713          	slli	a4,a5,0x3
    80020c20:	00e68733          	add	a4,a3,a4
    80020c24:	00073023          	sd	zero,0(a4)
    80020c28:	0017879b          	addiw	a5,a5,1
    80020c2c:	fe9ff06f          	j	80020c14 <_ZN6kernel6Thread18createKernelThreadEPFvPvES1_+0x8c>
        frame[2] = (uint64)sysTop;
    80020c30:	000017b7          	lui	a5,0x1
    80020c34:	00f50533          	add	a0,a0,a5
    80020c38:	fac53423          	sd	a2,-88(a0)
        frame[3] = (uint64)&threadWrapper;
    80020c3c:	00000797          	auipc	a5,0x0
    80020c40:	d0478793          	addi	a5,a5,-764 # 80020940 <threadWrapper>
    80020c44:	faf53823          	sd	a5,-80(a0)
        frame[4] = (uint64)sysTop;
    80020c48:	fac53c23          	sd	a2,-72(a0)

        t->context.sp = (uint64)frame;
    80020c4c:	00d4b023          	sd	a3,0(s1)
        t->state = READY;
    80020c50:	0204a823          	sw	zero,48(s1)
        return t;
    }
    80020c54:	00048513          	mv	a0,s1
    80020c58:	02813083          	ld	ra,40(sp)
    80020c5c:	02013403          	ld	s0,32(sp)
    80020c60:	01813483          	ld	s1,24(sp)
    80020c64:	01013903          	ld	s2,16(sp)
    80020c68:	00813983          	ld	s3,8(sp)
    80020c6c:	03010113          	addi	sp,sp,48
    80020c70:	00008067          	ret
        if (!t->systemstackSpace) return nullptr;
    80020c74:	00050493          	mv	s1,a0
    80020c78:	fddff06f          	j	80020c54 <_ZN6kernel6Thread18createKernelThreadEPFvPvES1_+0xcc>

0000000080020c7c <_ZN6kernel6Thread4sendEPS0_Pc>:

    void Thread::send(Thread* t, char* message){
    80020c7c:	fd010113          	addi	sp,sp,-48
    80020c80:	02113423          	sd	ra,40(sp)
    80020c84:	02813023          	sd	s0,32(sp)
    80020c88:	00913c23          	sd	s1,24(sp)
    80020c8c:	01213823          	sd	s2,16(sp)
    80020c90:	01313423          	sd	s3,8(sp)
    80020c94:	01413023          	sd	s4,0(sp)
    80020c98:	03010413          	addi	s0,sp,48
    80020c9c:	00058493          	mv	s1,a1
    80020ca0:	00060993          	mv	s3,a2
        Thread* cur = Scheduler::getRunning();
    80020ca4:	00000097          	auipc	ra,0x0
    80020ca8:	1d4080e7          	jalr	468(ra) # 80020e78 <_ZN6kernel9Scheduler10getRunningEv>

        if (t->mail) {
    80020cac:	0704b783          	ld	a5,112(s1)
    80020cb0:	02078c63          	beqz	a5,80020ce8 <_ZN6kernel6Thread4sendEPS0_Pc+0x6c>
    80020cb4:	00050913          	mv	s2,a0
            t->sendersWaiting = cur;
    80020cb8:	06a4bc23          	sd	a0,120(s1)
            cur->state = BLOCKED;
    80020cbc:	00200793          	li	a5,2
    80020cc0:	02f52823          	sw	a5,48(a0)
            Thread* next = Scheduler::get();
    80020cc4:	00000097          	auipc	ra,0x0
    80020cc8:	164080e7          	jalr	356(ra) # 80020e28 <_ZN6kernel9Scheduler3getEv>
    80020ccc:	00050a13          	mv	s4,a0
            Scheduler::setRunning(next);
    80020cd0:	00000097          	auipc	ra,0x0
    80020cd4:	1c8080e7          	jalr	456(ra) # 80020e98 <_ZN6kernel9Scheduler10setRunningEPNS_6ThreadE>
            yield(cur, next);
    80020cd8:	000a0593          	mv	a1,s4
    80020cdc:	00090513          	mv	a0,s2
    80020ce0:	fffff097          	auipc	ra,0xfffff
    80020ce4:	34c080e7          	jalr	844(ra) # 8002002c <yield>
        }

        t->mail = message;
    80020ce8:	0734b823          	sd	s3,112(s1)

        if (t->recvWaiting) {
    80020cec:	0804c783          	lbu	a5,128(s1)
    80020cf0:	02079263          	bnez	a5,80020d14 <_ZN6kernel6Thread4sendEPS0_Pc+0x98>
            t->recvWaiting = false;
            Scheduler::put(t);
        }
    }
    80020cf4:	02813083          	ld	ra,40(sp)
    80020cf8:	02013403          	ld	s0,32(sp)
    80020cfc:	01813483          	ld	s1,24(sp)
    80020d00:	01013903          	ld	s2,16(sp)
    80020d04:	00813983          	ld	s3,8(sp)
    80020d08:	00013a03          	ld	s4,0(sp)
    80020d0c:	03010113          	addi	sp,sp,48
    80020d10:	00008067          	ret
            t->recvWaiting = false;
    80020d14:	08048023          	sb	zero,128(s1)
            Scheduler::put(t);
    80020d18:	00048513          	mv	a0,s1
    80020d1c:	00000097          	auipc	ra,0x0
    80020d20:	0a8080e7          	jalr	168(ra) # 80020dc4 <_ZN6kernel9Scheduler3putEPNS_6ThreadE>
    }
    80020d24:	fd1ff06f          	j	80020cf4 <_ZN6kernel6Thread4sendEPS0_Pc+0x78>

0000000080020d28 <_ZN6kernel6Thread7recieveEv>:

    char *Thread::recieve() {
    80020d28:	fe010113          	addi	sp,sp,-32
    80020d2c:	00113c23          	sd	ra,24(sp)
    80020d30:	00813823          	sd	s0,16(sp)
    80020d34:	00913423          	sd	s1,8(sp)
    80020d38:	01213023          	sd	s2,0(sp)
    80020d3c:	02010413          	addi	s0,sp,32
        Thread* cur = Scheduler::getRunning();
    80020d40:	00000097          	auipc	ra,0x0
    80020d44:	138080e7          	jalr	312(ra) # 80020e78 <_ZN6kernel9Scheduler10getRunningEv>
    80020d48:	00050493          	mv	s1,a0

        if (!cur->mail) {
    80020d4c:	07053783          	ld	a5,112(a0)
    80020d50:	02078e63          	beqz	a5,80020d8c <_ZN6kernel6Thread7recieveEv+0x64>
            Thread* next = Scheduler::get();
            Scheduler::setRunning(next);
            yield(cur, next);
        }

        char* msg = cur->mail;
    80020d54:	0704b903          	ld	s2,112(s1)
        cur->mail = nullptr;
    80020d58:	0604b823          	sd	zero,112(s1)

        if (cur->sendersWaiting) {
    80020d5c:	0784b503          	ld	a0,120(s1)
    80020d60:	00050863          	beqz	a0,80020d70 <_ZN6kernel6Thread7recieveEv+0x48>
            Thread* s = cur->sendersWaiting;
            cur->sendersWaiting = nullptr;
    80020d64:	0604bc23          	sd	zero,120(s1)
            Scheduler::put(s);
    80020d68:	00000097          	auipc	ra,0x0
    80020d6c:	05c080e7          	jalr	92(ra) # 80020dc4 <_ZN6kernel9Scheduler3putEPNS_6ThreadE>
        }
        return msg;
    }
    80020d70:	00090513          	mv	a0,s2
    80020d74:	01813083          	ld	ra,24(sp)
    80020d78:	01013403          	ld	s0,16(sp)
    80020d7c:	00813483          	ld	s1,8(sp)
    80020d80:	00013903          	ld	s2,0(sp)
    80020d84:	02010113          	addi	sp,sp,32
    80020d88:	00008067          	ret
            cur->recvWaiting = true;
    80020d8c:	00100793          	li	a5,1
    80020d90:	08f50023          	sb	a5,128(a0)
            cur->state = BLOCKED;
    80020d94:	00200793          	li	a5,2
    80020d98:	02f52823          	sw	a5,48(a0)
            Thread* next = Scheduler::get();
    80020d9c:	00000097          	auipc	ra,0x0
    80020da0:	08c080e7          	jalr	140(ra) # 80020e28 <_ZN6kernel9Scheduler3getEv>
    80020da4:	00050913          	mv	s2,a0
            Scheduler::setRunning(next);
    80020da8:	00000097          	auipc	ra,0x0
    80020dac:	0f0080e7          	jalr	240(ra) # 80020e98 <_ZN6kernel9Scheduler10setRunningEPNS_6ThreadE>
            yield(cur, next);
    80020db0:	00090593          	mv	a1,s2
    80020db4:	00048513          	mv	a0,s1
    80020db8:	fffff097          	auipc	ra,0xfffff
    80020dbc:	274080e7          	jalr	628(ra) # 8002002c <yield>
    80020dc0:	f95ff06f          	j	80020d54 <_ZN6kernel6Thread7recieveEv+0x2c>

0000000080020dc4 <_ZN6kernel9Scheduler3putEPNS_6ThreadE>:
    Thread* Scheduler::readyTail = nullptr;
    Thread* Scheduler::running = nullptr;
    Thread* Scheduler::sleepingHead = nullptr;
    Thread* Scheduler::idleThread = nullptr;

    void Scheduler::put(Thread* t) {
    80020dc4:	ff010113          	addi	sp,sp,-16
    80020dc8:	00813423          	sd	s0,8(sp)
    80020dcc:	01010413          	addi	s0,sp,16
        if (!t || t == idleThread)
    80020dd0:	02050c63          	beqz	a0,80020e08 <_ZN6kernel9Scheduler3putEPNS_6ThreadE+0x44>
    80020dd4:	0000a797          	auipc	a5,0xa
    80020dd8:	bac7b783          	ld	a5,-1108(a5) # 8002a980 <_ZN6kernel9Scheduler10idleThreadE>
    80020ddc:	02a78663          	beq	a5,a0,80020e08 <_ZN6kernel9Scheduler3putEPNS_6ThreadE+0x44>
            return;
        t->readyNext = nullptr;
    80020de0:	04053423          	sd	zero,72(a0)
        t->state = READY;
    80020de4:	02052823          	sw	zero,48(a0)
        if (!readyHead) {
    80020de8:	0000a797          	auipc	a5,0xa
    80020dec:	ba07b783          	ld	a5,-1120(a5) # 8002a988 <_ZN6kernel9Scheduler9readyHeadE>
    80020df0:	02078263          	beqz	a5,80020e14 <_ZN6kernel9Scheduler3putEPNS_6ThreadE+0x50>
            readyHead = readyTail = t;
        } else {
            readyTail->readyNext = t;
    80020df4:	0000a797          	auipc	a5,0xa
    80020df8:	b8c78793          	addi	a5,a5,-1140 # 8002a980 <_ZN6kernel9Scheduler10idleThreadE>
    80020dfc:	0107b703          	ld	a4,16(a5)
    80020e00:	04a73423          	sd	a0,72(a4)
            readyTail = readyTail->readyNext;
    80020e04:	00a7b823          	sd	a0,16(a5)
        }
    }
    80020e08:	00813403          	ld	s0,8(sp)
    80020e0c:	01010113          	addi	sp,sp,16
    80020e10:	00008067          	ret
            readyHead = readyTail = t;
    80020e14:	0000a797          	auipc	a5,0xa
    80020e18:	b6c78793          	addi	a5,a5,-1172 # 8002a980 <_ZN6kernel9Scheduler10idleThreadE>
    80020e1c:	00a7b823          	sd	a0,16(a5)
    80020e20:	00a7b423          	sd	a0,8(a5)
    80020e24:	fe5ff06f          	j	80020e08 <_ZN6kernel9Scheduler3putEPNS_6ThreadE+0x44>

0000000080020e28 <_ZN6kernel9Scheduler3getEv>:

    Thread *Scheduler::get() {
    80020e28:	ff010113          	addi	sp,sp,-16
    80020e2c:	00813423          	sd	s0,8(sp)
    80020e30:	01010413          	addi	s0,sp,16
        if (!readyHead) return idleThread;
    80020e34:	0000a517          	auipc	a0,0xa
    80020e38:	b5453503          	ld	a0,-1196(a0) # 8002a988 <_ZN6kernel9Scheduler9readyHeadE>
    80020e3c:	02050263          	beqz	a0,80020e60 <_ZN6kernel9Scheduler3getEv+0x38>
        Thread* t = readyHead;
        readyHead = readyHead->readyNext;
    80020e40:	04853783          	ld	a5,72(a0)
    80020e44:	0000a717          	auipc	a4,0xa
    80020e48:	b4f73223          	sd	a5,-1212(a4) # 8002a988 <_ZN6kernel9Scheduler9readyHeadE>
        if (!readyHead) readyTail = nullptr;
    80020e4c:	02078063          	beqz	a5,80020e6c <_ZN6kernel9Scheduler3getEv+0x44>
        t->readyNext = nullptr;
    80020e50:	04053423          	sd	zero,72(a0)
        return t;
    }
    80020e54:	00813403          	ld	s0,8(sp)
    80020e58:	01010113          	addi	sp,sp,16
    80020e5c:	00008067          	ret
        if (!readyHead) return idleThread;
    80020e60:	0000a517          	auipc	a0,0xa
    80020e64:	b2053503          	ld	a0,-1248(a0) # 8002a980 <_ZN6kernel9Scheduler10idleThreadE>
    80020e68:	fedff06f          	j	80020e54 <_ZN6kernel9Scheduler3getEv+0x2c>
        if (!readyHead) readyTail = nullptr;
    80020e6c:	0000a797          	auipc	a5,0xa
    80020e70:	b207b223          	sd	zero,-1244(a5) # 8002a990 <_ZN6kernel9Scheduler9readyTailE>
    80020e74:	fddff06f          	j	80020e50 <_ZN6kernel9Scheduler3getEv+0x28>

0000000080020e78 <_ZN6kernel9Scheduler10getRunningEv>:

    Thread* Scheduler::getRunning() {
    80020e78:	ff010113          	addi	sp,sp,-16
    80020e7c:	00813423          	sd	s0,8(sp)
    80020e80:	01010413          	addi	s0,sp,16
        return running;
    }
    80020e84:	0000a517          	auipc	a0,0xa
    80020e88:	b1453503          	ld	a0,-1260(a0) # 8002a998 <_ZN6kernel9Scheduler7runningE>
    80020e8c:	00813403          	ld	s0,8(sp)
    80020e90:	01010113          	addi	sp,sp,16
    80020e94:	00008067          	ret

0000000080020e98 <_ZN6kernel9Scheduler10setRunningEPNS_6ThreadE>:

    void Scheduler::setRunning(Thread *t) {
    80020e98:	ff010113          	addi	sp,sp,-16
    80020e9c:	00813423          	sd	s0,8(sp)
    80020ea0:	01010413          	addi	s0,sp,16
        running = t;
    80020ea4:	0000a797          	auipc	a5,0xa
    80020ea8:	aea7ba23          	sd	a0,-1292(a5) # 8002a998 <_ZN6kernel9Scheduler7runningE>
        if (t) t->state = RUNNING;
    80020eac:	00050663          	beqz	a0,80020eb8 <_ZN6kernel9Scheduler10setRunningEPNS_6ThreadE+0x20>
    80020eb0:	00100793          	li	a5,1
    80020eb4:	02f52823          	sw	a5,48(a0)
    }
    80020eb8:	00813403          	ld	s0,8(sp)
    80020ebc:	01010113          	addi	sp,sp,16
    80020ec0:	00008067          	ret

0000000080020ec4 <_ZN6kernel9Scheduler13setIdleThreadEPNS_6ThreadE>:


    void Scheduler::setIdleThread(Thread *t) {
    80020ec4:	ff010113          	addi	sp,sp,-16
    80020ec8:	00813423          	sd	s0,8(sp)
    80020ecc:	01010413          	addi	s0,sp,16
        idleThread = t;
    80020ed0:	0000a797          	auipc	a5,0xa
    80020ed4:	aaa7b823          	sd	a0,-1360(a5) # 8002a980 <_ZN6kernel9Scheduler10idleThreadE>
    }
    80020ed8:	00813403          	ld	s0,8(sp)
    80020edc:	01010113          	addi	sp,sp,16
    80020ee0:	00008067          	ret

0000000080020ee4 <_ZN6kernel9Scheduler10putToSleepEPNS_6ThreadEm>:

    void Scheduler::putToSleep(Thread *t, uint64 ticks) {
        t->state = BLOCKED;
    80020ee4:	00200793          	li	a5,2
    80020ee8:	02f52823          	sw	a5,48(a0)
        t->sleepNext = nullptr;
    80020eec:	04053023          	sd	zero,64(a0)

        if (ticks == 0) {
    80020ef0:	02058463          	beqz	a1,80020f18 <_ZN6kernel9Scheduler10putToSleepEPNS_6ThreadEm+0x34>
            put(t);
            return;
        }

        Thread** curr = &sleepingHead;
    80020ef4:	0000a697          	auipc	a3,0xa
    80020ef8:	aac68693          	addi	a3,a3,-1364 # 8002a9a0 <_ZN6kernel9Scheduler12sleepingHeadE>
        while (*curr && (*curr)->timeToWake <= ticks) {
    80020efc:	0006b783          	ld	a5,0(a3)
    80020f00:	04078063          	beqz	a5,80020f40 <_ZN6kernel9Scheduler10putToSleepEPNS_6ThreadEm+0x5c>
    80020f04:	0387b703          	ld	a4,56(a5)
    80020f08:	02e5ec63          	bltu	a1,a4,80020f40 <_ZN6kernel9Scheduler10putToSleepEPNS_6ThreadEm+0x5c>
            ticks -= (*curr)->timeToWake;
    80020f0c:	40e585b3          	sub	a1,a1,a4
            curr = &(*curr)->sleepNext;
    80020f10:	04078693          	addi	a3,a5,64
        while (*curr && (*curr)->timeToWake <= ticks) {
    80020f14:	fe9ff06f          	j	80020efc <_ZN6kernel9Scheduler10putToSleepEPNS_6ThreadEm+0x18>
    void Scheduler::putToSleep(Thread *t, uint64 ticks) {
    80020f18:	ff010113          	addi	sp,sp,-16
    80020f1c:	00113423          	sd	ra,8(sp)
    80020f20:	00813023          	sd	s0,0(sp)
    80020f24:	01010413          	addi	s0,sp,16
            put(t);
    80020f28:	00000097          	auipc	ra,0x0
    80020f2c:	e9c080e7          	jalr	-356(ra) # 80020dc4 <_ZN6kernel9Scheduler3putEPNS_6ThreadE>
        t->sleepNext = *curr;
        if (*curr) {
            (*curr)->timeToWake -= ticks;
        }
        (*curr) = t;
    }
    80020f30:	00813083          	ld	ra,8(sp)
    80020f34:	00013403          	ld	s0,0(sp)
    80020f38:	01010113          	addi	sp,sp,16
    80020f3c:	00008067          	ret
        t->timeToWake = ticks;
    80020f40:	02b53c23          	sd	a1,56(a0)
        t->sleepNext = *curr;
    80020f44:	0006b783          	ld	a5,0(a3)
    80020f48:	04f53023          	sd	a5,64(a0)
        if (*curr) {
    80020f4c:	00078863          	beqz	a5,80020f5c <_ZN6kernel9Scheduler10putToSleepEPNS_6ThreadEm+0x78>
            (*curr)->timeToWake -= ticks;
    80020f50:	0387b703          	ld	a4,56(a5)
    80020f54:	40b705b3          	sub	a1,a4,a1
    80020f58:	02b7bc23          	sd	a1,56(a5)
        (*curr) = t;
    80020f5c:	00a6b023          	sd	a0,0(a3)
    80020f60:	00008067          	ret

0000000080020f64 <_ZN6kernel9Scheduler6onTickEv>:

    void Scheduler::onTick() {
        if (!sleepingHead) return;
    80020f64:	0000a797          	auipc	a5,0xa
    80020f68:	a3c7b783          	ld	a5,-1476(a5) # 8002a9a0 <_ZN6kernel9Scheduler12sleepingHeadE>
    80020f6c:	06078a63          	beqz	a5,80020fe0 <_ZN6kernel9Scheduler6onTickEv+0x7c>
        sleepingHead->timeToWake--;
    80020f70:	0387b703          	ld	a4,56(a5)
    80020f74:	fff70713          	addi	a4,a4,-1
    80020f78:	02e7bc23          	sd	a4,56(a5)
        while (sleepingHead && sleepingHead->timeToWake == 0) {
    80020f7c:	0000a517          	auipc	a0,0xa
    80020f80:	a2453503          	ld	a0,-1500(a0) # 8002a9a0 <_ZN6kernel9Scheduler12sleepingHeadE>
    80020f84:	04050e63          	beqz	a0,80020fe0 <_ZN6kernel9Scheduler6onTickEv+0x7c>
    80020f88:	03853783          	ld	a5,56(a0)
    80020f8c:	04079a63          	bnez	a5,80020fe0 <_ZN6kernel9Scheduler6onTickEv+0x7c>
    void Scheduler::onTick() {
    80020f90:	ff010113          	addi	sp,sp,-16
    80020f94:	00113423          	sd	ra,8(sp)
    80020f98:	00813023          	sd	s0,0(sp)
    80020f9c:	01010413          	addi	s0,sp,16
    80020fa0:	00c0006f          	j	80020fac <_ZN6kernel9Scheduler6onTickEv+0x48>
        while (sleepingHead && sleepingHead->timeToWake == 0) {
    80020fa4:	03853783          	ld	a5,56(a0)
    80020fa8:	02079463          	bnez	a5,80020fd0 <_ZN6kernel9Scheduler6onTickEv+0x6c>
            Thread* t = sleepingHead;
            sleepingHead = sleepingHead->sleepNext;
    80020fac:	04053783          	ld	a5,64(a0)
    80020fb0:	0000a717          	auipc	a4,0xa
    80020fb4:	9ef73823          	sd	a5,-1552(a4) # 8002a9a0 <_ZN6kernel9Scheduler12sleepingHeadE>
            t->sleepNext = nullptr;
    80020fb8:	04053023          	sd	zero,64(a0)
            put(t);
    80020fbc:	00000097          	auipc	ra,0x0
    80020fc0:	e08080e7          	jalr	-504(ra) # 80020dc4 <_ZN6kernel9Scheduler3putEPNS_6ThreadE>
        while (sleepingHead && sleepingHead->timeToWake == 0) {
    80020fc4:	0000a517          	auipc	a0,0xa
    80020fc8:	9dc53503          	ld	a0,-1572(a0) # 8002a9a0 <_ZN6kernel9Scheduler12sleepingHeadE>
    80020fcc:	fc051ce3          	bnez	a0,80020fa4 <_ZN6kernel9Scheduler6onTickEv+0x40>
        }
    }
    80020fd0:	00813083          	ld	ra,8(sp)
    80020fd4:	00013403          	ld	s0,0(sp)
    80020fd8:	01010113          	addi	sp,sp,16
    80020fdc:	00008067          	ret
    80020fe0:	00008067          	ret

0000000080020fe4 <_Z41__static_initialization_and_destruction_0ii>:
                inItems->signal();
            }
        }
    }

    80020fe4:	ff010113          	addi	sp,sp,-16
    80020fe8:	00813423          	sd	s0,8(sp)
    80020fec:	01010413          	addi	s0,sp,16
    80020ff0:	00100793          	li	a5,1
    80020ff4:	00f50863          	beq	a0,a5,80021004 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80020ff8:	00813403          	ld	s0,8(sp)
    80020ffc:	01010113          	addi	sp,sp,16
    80021000:	00008067          	ret
    80021004:	000107b7          	lui	a5,0x10
    80021008:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8002100c:	fef596e3          	bne	a1,a5,80020ff8 <_Z41__static_initialization_and_destruction_0ii+0x14>
#include "../lib/hw.h"

template<typename T, uint64 CAP>
class Buffer {
public:
    Buffer() : head(0), tail(0), count(0) {}
    80021010:	0000a797          	auipc	a5,0xa
    80021014:	99878793          	addi	a5,a5,-1640 # 8002a9a8 <_ZN6kernel7Console5inBufE>
    80021018:	1007b023          	sd	zero,256(a5)
    8002101c:	1007b423          	sd	zero,264(a5)
    80021020:	1007b823          	sd	zero,272(a5)
    80021024:	2007bc23          	sd	zero,536(a5)
    80021028:	2207b023          	sd	zero,544(a5)
    8002102c:	2207b423          	sd	zero,552(a5)
    80021030:	fc9ff06f          	j	80020ff8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080021034 <_ZN6kernel7Console16outputThreadBodyEPv>:
    void Console::outputThreadBody(void *) {
    80021034:	fe010113          	addi	sp,sp,-32
    80021038:	00113c23          	sd	ra,24(sp)
    8002103c:	00813823          	sd	s0,16(sp)
    80021040:	00913423          	sd	s1,8(sp)
    80021044:	02010413          	addi	s0,sp,32
    80021048:	0500006f          	j	80021098 <_ZN6kernel7Console16outputThreadBodyEPv+0x64>
            char c = 0;
    8002104c:	00000493          	li	s1,0
    80021050:	00c0006f          	j	8002105c <_ZN6kernel7Console16outputThreadBodyEPv+0x28>
                thread_dispatch();
    80021054:	fffff097          	auipc	ra,0xfffff
    80021058:	488080e7          	jalr	1160(ra) # 800204dc <_Z15thread_dispatchv>
            while ((readReg(CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) == 0) {
    8002105c:	0000a797          	auipc	a5,0xa
    80021060:	88c7b783          	ld	a5,-1908(a5) # 8002a8e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80021064:	0007b783          	ld	a5,0(a5)
        return *(volatile uint8*)addr;
    80021068:	0007c783          	lbu	a5,0(a5)
    8002106c:	0ff7f793          	andi	a5,a5,255
            while ((readReg(CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) == 0) {
    80021070:	0207f793          	andi	a5,a5,32
    80021074:	fe0780e3          	beqz	a5,80021054 <_ZN6kernel7Console16outputThreadBodyEPv+0x20>
            writeReg(CONSOLE_TX_DATA, c);
    80021078:	0000a797          	auipc	a5,0xa
    8002107c:	8807b783          	ld	a5,-1920(a5) # 8002a8f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80021080:	0007b783          	ld	a5,0(a5)
        *(volatile uint8*)addr = (uint8)c;
    80021084:	00978023          	sb	s1,0(a5)
            outSpace->signal();
    80021088:	0000a517          	auipc	a0,0xa
    8002108c:	b5853503          	ld	a0,-1192(a0) # 8002abe0 <_ZN6kernel7Console8outSpaceE>
    80021090:	00000097          	auipc	ra,0x0
    80021094:	858080e7          	jalr	-1960(ra) # 800208e8 <_ZN6kernel9Semaphore6signalEv>
            outItems->wait();
    80021098:	0000a497          	auipc	s1,0xa
    8002109c:	91048493          	addi	s1,s1,-1776 # 8002a9a8 <_ZN6kernel7Console5inBufE>
    800210a0:	2304b503          	ld	a0,560(s1)
    800210a4:	fffff097          	auipc	ra,0xfffff
    800210a8:	7d4080e7          	jalr	2004(ra) # 80020878 <_ZN6kernel9Semaphore4waitEv>
    bool isEmpty() {return count == 0;}
    800210ac:	2284b703          	ld	a4,552(s1)
        tail = (tail + 1) % CAP;
        count++;
        return true;
    }
    bool get(T& out) {
        if (isEmpty()) return false;
    800210b0:	f8070ee3          	beqz	a4,8002104c <_ZN6kernel7Console16outputThreadBodyEPv+0x18>
        out = data[head];
    800210b4:	00048693          	mv	a3,s1
    800210b8:	2184b783          	ld	a5,536(s1)
    800210bc:	00f48633          	add	a2,s1,a5
    800210c0:	11864483          	lbu	s1,280(a2)
        head = (head + 1) % CAP;
    800210c4:	00178793          	addi	a5,a5,1
    800210c8:	0ff7f793          	andi	a5,a5,255
    800210cc:	20f6bc23          	sd	a5,536(a3)
        count--;
    800210d0:	fff70713          	addi	a4,a4,-1
    800210d4:	22e6b423          	sd	a4,552(a3)
        return true;
    800210d8:	f85ff06f          	j	8002105c <_ZN6kernel7Console16outputThreadBodyEPv+0x28>

00000000800210dc <_ZN6kernel7Console10initializeEv>:
    void Console::initialize() {
    800210dc:	fe010113          	addi	sp,sp,-32
    800210e0:	00113c23          	sd	ra,24(sp)
    800210e4:	00813823          	sd	s0,16(sp)
    800210e8:	00913423          	sd	s1,8(sp)
    800210ec:	02010413          	addi	s0,sp,32
        inItems = Semaphore::createSemaphore(0);
    800210f0:	00000513          	li	a0,0
    800210f4:	fffff097          	auipc	ra,0xfffff
    800210f8:	5f8080e7          	jalr	1528(ra) # 800206ec <_ZN6kernel9Semaphore15createSemaphoreEj>
    800210fc:	0000a497          	auipc	s1,0xa
    80021100:	8ac48493          	addi	s1,s1,-1876 # 8002a9a8 <_ZN6kernel7Console5inBufE>
    80021104:	24a4b023          	sd	a0,576(s1)
        outSpace = Semaphore::createSemaphore(256);
    80021108:	10000513          	li	a0,256
    8002110c:	fffff097          	auipc	ra,0xfffff
    80021110:	5e0080e7          	jalr	1504(ra) # 800206ec <_ZN6kernel9Semaphore15createSemaphoreEj>
    80021114:	22a4bc23          	sd	a0,568(s1)
        outItems = Semaphore::createSemaphore(0);
    80021118:	00000513          	li	a0,0
    8002111c:	fffff097          	auipc	ra,0xfffff
    80021120:	5d0080e7          	jalr	1488(ra) # 800206ec <_ZN6kernel9Semaphore15createSemaphoreEj>
    80021124:	22a4b823          	sd	a0,560(s1)
        Thread* out = Thread::createKernelThread(outputThreadBody, nullptr);
    80021128:	00000593          	li	a1,0
    8002112c:	00000517          	auipc	a0,0x0
    80021130:	f0850513          	addi	a0,a0,-248 # 80021034 <_ZN6kernel7Console16outputThreadBodyEPv>
    80021134:	00000097          	auipc	ra,0x0
    80021138:	a54080e7          	jalr	-1452(ra) # 80020b88 <_ZN6kernel6Thread18createKernelThreadEPFvPvES1_>
        Scheduler::put(out);
    8002113c:	00000097          	auipc	ra,0x0
    80021140:	c88080e7          	jalr	-888(ra) # 80020dc4 <_ZN6kernel9Scheduler3putEPNS_6ThreadE>
    }
    80021144:	01813083          	ld	ra,24(sp)
    80021148:	01013403          	ld	s0,16(sp)
    8002114c:	00813483          	ld	s1,8(sp)
    80021150:	02010113          	addi	sp,sp,32
    80021154:	00008067          	ret

0000000080021158 <_ZN6kernel7Console4putcEc>:
    void Console::putc(char c) {
    80021158:	fe010113          	addi	sp,sp,-32
    8002115c:	00113c23          	sd	ra,24(sp)
    80021160:	00813823          	sd	s0,16(sp)
    80021164:	00913423          	sd	s1,8(sp)
    80021168:	01213023          	sd	s2,0(sp)
    8002116c:	02010413          	addi	s0,sp,32
    80021170:	00050493          	mv	s1,a0
        outSpace->wait();
    80021174:	0000a917          	auipc	s2,0xa
    80021178:	83490913          	addi	s2,s2,-1996 # 8002a9a8 <_ZN6kernel7Console5inBufE>
    8002117c:	23893503          	ld	a0,568(s2)
    80021180:	fffff097          	auipc	ra,0xfffff
    80021184:	6f8080e7          	jalr	1784(ra) # 80020878 <_ZN6kernel9Semaphore4waitEv>
    bool isFull() { return count == CAP; }
    80021188:	22893703          	ld	a4,552(s2)
        if (isFull()) return false;
    8002118c:	10000793          	li	a5,256
    80021190:	02f70263          	beq	a4,a5,800211b4 <_ZN6kernel7Console4putcEc+0x5c>
        data[tail] = x;
    80021194:	22093783          	ld	a5,544(s2)
    80021198:	00f90633          	add	a2,s2,a5
    8002119c:	10960c23          	sb	s1,280(a2)
        tail = (tail + 1) % CAP;
    800211a0:	00178793          	addi	a5,a5,1
    800211a4:	0ff7f793          	andi	a5,a5,255
    800211a8:	22f93023          	sd	a5,544(s2)
        count++;
    800211ac:	00170713          	addi	a4,a4,1
    800211b0:	22e93423          	sd	a4,552(s2)
        outItems->signal();
    800211b4:	0000a517          	auipc	a0,0xa
    800211b8:	a2453503          	ld	a0,-1500(a0) # 8002abd8 <_ZN6kernel7Console8outItemsE>
    800211bc:	fffff097          	auipc	ra,0xfffff
    800211c0:	72c080e7          	jalr	1836(ra) # 800208e8 <_ZN6kernel9Semaphore6signalEv>
    }
    800211c4:	01813083          	ld	ra,24(sp)
    800211c8:	01013403          	ld	s0,16(sp)
    800211cc:	00813483          	ld	s1,8(sp)
    800211d0:	00013903          	ld	s2,0(sp)
    800211d4:	02010113          	addi	sp,sp,32
    800211d8:	00008067          	ret

00000000800211dc <_ZN6kernel7Console4getcEv>:
        if (overflow) {
    800211dc:	0000a797          	auipc	a5,0xa
    800211e0:	a147c783          	lbu	a5,-1516(a5) # 8002abf0 <_ZN6kernel7Console8overflowE>
    800211e4:	06079463          	bnez	a5,8002124c <_ZN6kernel7Console4getcEv+0x70>
    char Console::getc() {
    800211e8:	fe010113          	addi	sp,sp,-32
    800211ec:	00113c23          	sd	ra,24(sp)
    800211f0:	00813823          	sd	s0,16(sp)
    800211f4:	00913423          	sd	s1,8(sp)
    800211f8:	02010413          	addi	s0,sp,32
        inItems->wait();
    800211fc:	00009497          	auipc	s1,0x9
    80021200:	7ac48493          	addi	s1,s1,1964 # 8002a9a8 <_ZN6kernel7Console5inBufE>
    80021204:	2404b503          	ld	a0,576(s1)
    80021208:	fffff097          	auipc	ra,0xfffff
    8002120c:	670080e7          	jalr	1648(ra) # 80020878 <_ZN6kernel9Semaphore4waitEv>
    bool isEmpty() {return count == 0;}
    80021210:	1104b703          	ld	a4,272(s1)
        if (isEmpty()) return false;
    80021214:	04070063          	beqz	a4,80021254 <_ZN6kernel7Console4getcEv+0x78>
        out = data[head];
    80021218:	1004b783          	ld	a5,256(s1)
    8002121c:	00f48633          	add	a2,s1,a5
    80021220:	00064503          	lbu	a0,0(a2)
        head = (head + 1) % CAP;
    80021224:	00178793          	addi	a5,a5,1
    80021228:	0ff7f793          	andi	a5,a5,255
    8002122c:	10f4b023          	sd	a5,256(s1)
        count--;
    80021230:	fff70713          	addi	a4,a4,-1
    80021234:	10e4b823          	sd	a4,272(s1)
    }
    80021238:	01813083          	ld	ra,24(sp)
    8002123c:	01013403          	ld	s0,16(sp)
    80021240:	00813483          	ld	s1,8(sp)
    80021244:	02010113          	addi	sp,sp,32
    80021248:	00008067          	ret
            return (char)-1;
    8002124c:	0ff00513          	li	a0,255
    }
    80021250:	00008067          	ret
        char c = 0;
    80021254:	00000513          	li	a0,0
    80021258:	fe1ff06f          	j	80021238 <_ZN6kernel7Console4getcEv+0x5c>

000000008002125c <_ZN6kernel7Console15handleInterruptEv>:
        while (readReg(CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    8002125c:	00009797          	auipc	a5,0x9
    80021260:	68c7b783          	ld	a5,1676(a5) # 8002a8e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80021264:	0007b783          	ld	a5,0(a5)
        return *(volatile uint8*)addr;
    80021268:	0007c783          	lbu	a5,0(a5)
        while (readReg(CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    8002126c:	0017f793          	andi	a5,a5,1
    80021270:	0a078c63          	beqz	a5,80021328 <_ZN6kernel7Console15handleInterruptEv+0xcc>
    void Console::handleInterrupt() {
    80021274:	ff010113          	addi	sp,sp,-16
    80021278:	00113423          	sd	ra,8(sp)
    8002127c:	00813023          	sd	s0,0(sp)
    80021280:	01010413          	addi	s0,sp,16
    80021284:	0500006f          	j	800212d4 <_ZN6kernel7Console15handleInterruptEv+0x78>
        data[tail] = x;
    80021288:	00009717          	auipc	a4,0x9
    8002128c:	72070713          	addi	a4,a4,1824 # 8002a9a8 <_ZN6kernel7Console5inBufE>
    80021290:	10873783          	ld	a5,264(a4)
    80021294:	00f705b3          	add	a1,a4,a5
    80021298:	00c58023          	sb	a2,0(a1)
        tail = (tail + 1) % CAP;
    8002129c:	00178793          	addi	a5,a5,1
    800212a0:	0ff7f793          	andi	a5,a5,255
    800212a4:	10f73423          	sd	a5,264(a4)
        count++;
    800212a8:	00168693          	addi	a3,a3,1
    800212ac:	10d73823          	sd	a3,272(a4)
                inItems->signal();
    800212b0:	24073503          	ld	a0,576(a4)
    800212b4:	fffff097          	auipc	ra,0xfffff
    800212b8:	634080e7          	jalr	1588(ra) # 800208e8 <_ZN6kernel9Semaphore6signalEv>
        while (readReg(CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    800212bc:	00009797          	auipc	a5,0x9
    800212c0:	62c7b783          	ld	a5,1580(a5) # 8002a8e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800212c4:	0007b783          	ld	a5,0(a5)
        return *(volatile uint8*)addr;
    800212c8:	0007c783          	lbu	a5,0(a5)
        while (readReg(CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    800212cc:	0017f793          	andi	a5,a5,1
    800212d0:	04078463          	beqz	a5,80021318 <_ZN6kernel7Console15handleInterruptEv+0xbc>
            char c = (char)readReg(CONSOLE_RX_DATA);
    800212d4:	00009797          	auipc	a5,0x9
    800212d8:	60c7b783          	ld	a5,1548(a5) # 8002a8e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800212dc:	0007b783          	ld	a5,0(a5)
        return *(volatile uint8*)addr;
    800212e0:	0007c783          	lbu	a5,0(a5)
    800212e4:	0ff7f613          	andi	a2,a5,255
    bool isFull() { return count == CAP; }
    800212e8:	00009697          	auipc	a3,0x9
    800212ec:	7d06b683          	ld	a3,2000(a3) # 8002aab8 <_ZN6kernel7Console5inBufE+0x110>
        if (isFull()) return false;
    800212f0:	10000793          	li	a5,256
    800212f4:	f8f69ae3          	bne	a3,a5,80021288 <_ZN6kernel7Console15handleInterruptEv+0x2c>
                overflow = true;
    800212f8:	00009797          	auipc	a5,0x9
    800212fc:	6b078793          	addi	a5,a5,1712 # 8002a9a8 <_ZN6kernel7Console5inBufE>
    80021300:	00100713          	li	a4,1
    80021304:	24e78423          	sb	a4,584(a5)
                inItems->signal();
    80021308:	2407b503          	ld	a0,576(a5)
    8002130c:	fffff097          	auipc	ra,0xfffff
    80021310:	5dc080e7          	jalr	1500(ra) # 800208e8 <_ZN6kernel9Semaphore6signalEv>
    80021314:	fa9ff06f          	j	800212bc <_ZN6kernel7Console15handleInterruptEv+0x60>
    }
    80021318:	00813083          	ld	ra,8(sp)
    8002131c:	00013403          	ld	s0,0(sp)
    80021320:	01010113          	addi	sp,sp,16
    80021324:	00008067          	ret
    80021328:	00008067          	ret

000000008002132c <_GLOBAL__sub_I__ZN6kernel7Console5inBufE>:
    8002132c:	ff010113          	addi	sp,sp,-16
    80021330:	00113423          	sd	ra,8(sp)
    80021334:	00813023          	sd	s0,0(sp)
    80021338:	01010413          	addi	s0,sp,16
    8002133c:	000105b7          	lui	a1,0x10
    80021340:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80021344:	00100513          	li	a0,1
    80021348:	00000097          	auipc	ra,0x0
    8002134c:	c9c080e7          	jalr	-868(ra) # 80020fe4 <_Z41__static_initialization_and_destruction_0ii>
    80021350:	00813083          	ld	ra,8(sp)
    80021354:	00013403          	ld	s0,0(sp)
    80021358:	01010113          	addi	sp,sp,16
    8002135c:	00008067          	ret

0000000080021360 <_ZL15set_trap_vectorv>:
#include "../lib/hw.h"

extern "C" void trap();
void userMain();

static void set_trap_vector() {
    80021360:	ff010113          	addi	sp,sp,-16
    80021364:	00813423          	sd	s0,8(sp)
    80021368:	01010413          	addi	s0,sp,16
    uint64 trapAddr = (uint64) &trap;
    8002136c:	00009797          	auipc	a5,0x9
    80021370:	5a47b783          	ld	a5,1444(a5) # 8002a910 <_GLOBAL_OFFSET_TABLE_+0x38>
    asm volatile("csrw stvec, %0" : : "r"(trapAddr));
    80021374:	10579073          	csrw	stvec,a5
}
    80021378:	00813403          	ld	s0,8(sp)
    8002137c:	01010113          	addi	sp,sp,16
    80021380:	00008067          	ret

0000000080021384 <_Z8idleBodyPv>:

void idleBody(void*) {
    80021384:	ff010113          	addi	sp,sp,-16
    80021388:	00113423          	sd	ra,8(sp)
    8002138c:	00813023          	sd	s0,0(sp)
    80021390:	01010413          	addi	s0,sp,16
    while (true)
        thread_dispatch();
    80021394:	fffff097          	auipc	ra,0xfffff
    80021398:	148080e7          	jalr	328(ra) # 800204dc <_Z15thread_dispatchv>
    while (true)
    8002139c:	ff9ff06f          	j	80021394 <_Z8idleBodyPv+0x10>

00000000800213a0 <_Z15userMainWrapperPv>:
}

static sem_t userMainDone;

void userMainWrapper(void*) {
    800213a0:	ff010113          	addi	sp,sp,-16
    800213a4:	00113423          	sd	ra,8(sp)
    800213a8:	00813023          	sd	s0,0(sp)
    800213ac:	01010413          	addi	s0,sp,16
    userMain();
    800213b0:	00003097          	auipc	ra,0x3
    800213b4:	4e8080e7          	jalr	1256(ra) # 80024898 <_Z8userMainv>
    sem_signal(userMainDone);
    800213b8:	0000a517          	auipc	a0,0xa
    800213bc:	84053503          	ld	a0,-1984(a0) # 8002abf8 <_ZL12userMainDone>
    800213c0:	fffff097          	auipc	ra,0xfffff
    800213c4:	270080e7          	jalr	624(ra) # 80020630 <_Z10sem_signalP4_sem>
}
    800213c8:	00813083          	ld	ra,8(sp)
    800213cc:	00013403          	ld	s0,0(sp)
    800213d0:	01010113          	addi	sp,sp,16
    800213d4:	00008067          	ret

00000000800213d8 <main>:

int main() {
    800213d8:	fd010113          	addi	sp,sp,-48
    800213dc:	02113423          	sd	ra,40(sp)
    800213e0:	02813023          	sd	s0,32(sp)
    800213e4:	00913c23          	sd	s1,24(sp)
    800213e8:	03010413          	addi	s0,sp,48
    MemoryAllocator::initialize_memory();
    800213ec:	00000097          	auipc	ra,0x0
    800213f0:	684080e7          	jalr	1668(ra) # 80021a70 <_ZN15MemoryAllocator17initialize_memoryEv>
    set_trap_vector();
    800213f4:	00000097          	auipc	ra,0x0
    800213f8:	f6c080e7          	jalr	-148(ra) # 80021360 <_ZL15set_trap_vectorv>

    kernel::Thread* mainThread = kernel::Thread::createMainThread();
    800213fc:	fffff097          	auipc	ra,0xfffff
    80021400:	5f8080e7          	jalr	1528(ra) # 800209f4 <_ZN6kernel6Thread16createMainThreadEv>
    80021404:	00050493          	mv	s1,a0
    kernel::Scheduler::setRunning(mainThread);
    80021408:	00000097          	auipc	ra,0x0
    8002140c:	a90080e7          	jalr	-1392(ra) # 80020e98 <_ZN6kernel9Scheduler10setRunningEPNS_6ThreadE>
        void* getSystemStackBase() const { return systemstackSpace; }
    80021410:	0204b783          	ld	a5,32(s1)
    uint64 sysStackTop = (uint64)mainThread->getSystemStackBase() + DEFAULT_STACK_SIZE;
    80021414:	00001737          	lui	a4,0x1
    80021418:	00e787b3          	add	a5,a5,a4
    asm volatile("csrw sscratch, %0" : : "r"(sysStackTop));
    8002141c:	14079073          	csrw	sscratch,a5

    kernel::Thread* idleT = kernel::Thread::createThread(idleBody, nullptr);
    80021420:	00000593          	li	a1,0
    80021424:	00000517          	auipc	a0,0x0
    80021428:	f6050513          	addi	a0,a0,-160 # 80021384 <_Z8idleBodyPv>
    8002142c:	fffff097          	auipc	ra,0xfffff
    80021430:	64c080e7          	jalr	1612(ra) # 80020a78 <_ZN6kernel6Thread12createThreadEPFvPvES1_>
    kernel::Scheduler::setIdleThread(idleT);
    80021434:	00000097          	auipc	ra,0x0
    80021438:	a90080e7          	jalr	-1392(ra) # 80020ec4 <_ZN6kernel9Scheduler13setIdleThreadEPNS_6ThreadE>

    kernel::Console::initialize();
    8002143c:	00000097          	auipc	ra,0x0
    80021440:	ca0080e7          	jalr	-864(ra) # 800210dc <_ZN6kernel7Console10initializeEv>

    uint64 sie;
    asm volatile("csrr %0, sie" : "=r"(sie));
    80021444:	104027f3          	csrr	a5,sie
    sie |= (1UL << 1);
    sie |= (1UL << 9);
    80021448:	2027e793          	ori	a5,a5,514
    asm volatile("csrw sie, %0" : : "r"(sie));
    8002144c:	10479073          	csrw	sie,a5

    uint64 sstatus;
    asm volatile("csrr %0, sstatus" : "=r"(sstatus));
    80021450:	100027f3          	csrr	a5,sstatus
    sstatus |= (1UL << 1);
    sstatus |= (1UL << 5);
    80021454:	0227e793          	ori	a5,a5,34
    asm volatile("csrw sstatus, %0" : : "r"(sstatus));
    80021458:	10079073          	csrw	sstatus,a5

    sem_open(&userMainDone, 0);
    8002145c:	00009497          	auipc	s1,0x9
    80021460:	79c48493          	addi	s1,s1,1948 # 8002abf8 <_ZL12userMainDone>
    80021464:	00000593          	li	a1,0
    80021468:	00048513          	mv	a0,s1
    8002146c:	fffff097          	auipc	ra,0xfffff
    80021470:	13c080e7          	jalr	316(ra) # 800205a8 <_Z8sem_openPP4_semj>

    thread_t um;
    thread_create(&um, userMainWrapper, nullptr);
    80021474:	00000613          	li	a2,0
    80021478:	00000597          	auipc	a1,0x0
    8002147c:	f2858593          	addi	a1,a1,-216 # 800213a0 <_Z15userMainWrapperPv>
    80021480:	fd840513          	addi	a0,s0,-40
    80021484:	fffff097          	auipc	ra,0xfffff
    80021488:	078080e7          	jalr	120(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>

    sem_wait(userMainDone);
    8002148c:	0004b503          	ld	a0,0(s1)
    80021490:	fffff097          	auipc	ra,0xfffff
    80021494:	178080e7          	jalr	376(ra) # 80020608 <_Z8sem_waitP4_sem>

    *((volatile unsigned*)0x100000) = 0x5555;
    80021498:	00100737          	lui	a4,0x100
    8002149c:	000057b7          	lui	a5,0x5
    800214a0:	5557879b          	addiw	a5,a5,1365
    800214a4:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
    return 0;
    800214a8:	00000513          	li	a0,0
    800214ac:	02813083          	ld	ra,40(sp)
    800214b0:	02013403          	ld	s0,32(sp)
    800214b4:	01813483          	ld	s1,24(sp)
    800214b8:	03010113          	addi	sp,sp,48
    800214bc:	00008067          	ret

00000000800214c0 <_ZN6ThreadD1Ev>:
    : myHandle(nullptr), func(func), arg(arg){}

Thread::Thread()
    : myHandle(nullptr), func(nullptr), arg(nullptr){}

Thread::~Thread() {}
    800214c0:	ff010113          	addi	sp,sp,-16
    800214c4:	00813423          	sd	s0,8(sp)
    800214c8:	01010413          	addi	s0,sp,16
    800214cc:	00813403          	ld	s0,8(sp)
    800214d0:	01010113          	addi	sp,sp,16
    800214d4:	00008067          	ret

00000000800214d8 <_ZN6Thread10runWrapperEPv>:
    } else {
        return thread_create(&myHandle, &Thread::runWrapper, this);
    }
}

void Thread::runWrapper(void* arg) {
    800214d8:	ff010113          	addi	sp,sp,-16
    800214dc:	00113423          	sd	ra,8(sp)
    800214e0:	00813023          	sd	s0,0(sp)
    800214e4:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*)arg;
    t->run();
    800214e8:	00053783          	ld	a5,0(a0)
    800214ec:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    800214f0:	000780e7          	jalr	a5
}
    800214f4:	00813083          	ld	ra,8(sp)
    800214f8:	00013403          	ld	s0,0(sp)
    800214fc:	01010113          	addi	sp,sp,16
    80021500:	00008067          	ret

0000000080021504 <_ZN14PeriodicThread3runEv>:
}

PeriodicThread::PeriodicThread(time_t period)
    : Thread(), period(period){}

void PeriodicThread::run() {
    80021504:	fe010113          	addi	sp,sp,-32
    80021508:	00113c23          	sd	ra,24(sp)
    8002150c:	00813823          	sd	s0,16(sp)
    80021510:	00913423          	sd	s1,8(sp)
    80021514:	02010413          	addi	s0,sp,32
    80021518:	00050493          	mv	s1,a0
    while (period != 0) {
    8002151c:	0204b783          	ld	a5,32(s1)
    80021520:	02078463          	beqz	a5,80021548 <_ZN14PeriodicThread3runEv+0x44>
        periodicActivation();
    80021524:	0004b783          	ld	a5,0(s1)
    80021528:	0187b783          	ld	a5,24(a5)
    8002152c:	00048513          	mv	a0,s1
    80021530:	000780e7          	jalr	a5
        if (period != 0) time_sleep(period);
    80021534:	0204b503          	ld	a0,32(s1)
    80021538:	fe0502e3          	beqz	a0,8002151c <_ZN14PeriodicThread3runEv+0x18>
    8002153c:	fffff097          	auipc	ra,0xfffff
    80021540:	11c080e7          	jalr	284(ra) # 80020658 <_Z10time_sleepm>
    80021544:	fd9ff06f          	j	8002151c <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80021548:	01813083          	ld	ra,24(sp)
    8002154c:	01013403          	ld	s0,16(sp)
    80021550:	00813483          	ld	s1,8(sp)
    80021554:	02010113          	addi	sp,sp,32
    80021558:	00008067          	ret

000000008002155c <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    8002155c:	ff010113          	addi	sp,sp,-16
    80021560:	00113423          	sd	ra,8(sp)
    80021564:	00813023          	sd	s0,0(sp)
    80021568:	01010413          	addi	s0,sp,16
    8002156c:	00009797          	auipc	a5,0x9
    80021570:	17c78793          	addi	a5,a5,380 # 8002a6e8 <_ZTV9Semaphore+0x10>
    80021574:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80021578:	00853503          	ld	a0,8(a0)
    8002157c:	fffff097          	auipc	ra,0xfffff
    80021580:	064080e7          	jalr	100(ra) # 800205e0 <_Z9sem_closeP4_sem>
}
    80021584:	00813083          	ld	ra,8(sp)
    80021588:	00013403          	ld	s0,0(sp)
    8002158c:	01010113          	addi	sp,sp,16
    80021590:	00008067          	ret

0000000080021594 <_Znwm>:
void* operator new(size_t size) { return mem_alloc(size);}
    80021594:	ff010113          	addi	sp,sp,-16
    80021598:	00113423          	sd	ra,8(sp)
    8002159c:	00813023          	sd	s0,0(sp)
    800215a0:	01010413          	addi	s0,sp,16
    800215a4:	fffff097          	auipc	ra,0xfffff
    800215a8:	eb8080e7          	jalr	-328(ra) # 8002045c <_Z9mem_allocm>
    800215ac:	00813083          	ld	ra,8(sp)
    800215b0:	00013403          	ld	s0,0(sp)
    800215b4:	01010113          	addi	sp,sp,16
    800215b8:	00008067          	ret

00000000800215bc <_ZdlPv>:
void operator delete(void* ptr) { mem_free(ptr); }
    800215bc:	ff010113          	addi	sp,sp,-16
    800215c0:	00113423          	sd	ra,8(sp)
    800215c4:	00813023          	sd	s0,0(sp)
    800215c8:	01010413          	addi	s0,sp,16
    800215cc:	fffff097          	auipc	ra,0xfffff
    800215d0:	eb8080e7          	jalr	-328(ra) # 80020484 <_Z8mem_freePv>
    800215d4:	00813083          	ld	ra,8(sp)
    800215d8:	00013403          	ld	s0,0(sp)
    800215dc:	01010113          	addi	sp,sp,16
    800215e0:	00008067          	ret

00000000800215e4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    800215e4:	ff010113          	addi	sp,sp,-16
    800215e8:	00113423          	sd	ra,8(sp)
    800215ec:	00813023          	sd	s0,0(sp)
    800215f0:	01010413          	addi	s0,sp,16
    800215f4:	00000097          	auipc	ra,0x0
    800215f8:	fc8080e7          	jalr	-56(ra) # 800215bc <_ZdlPv>
    800215fc:	00813083          	ld	ra,8(sp)
    80021600:	00013403          	ld	s0,0(sp)
    80021604:	01010113          	addi	sp,sp,16
    80021608:	00008067          	ret

000000008002160c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8002160c:	fe010113          	addi	sp,sp,-32
    80021610:	00113c23          	sd	ra,24(sp)
    80021614:	00813823          	sd	s0,16(sp)
    80021618:	00913423          	sd	s1,8(sp)
    8002161c:	02010413          	addi	s0,sp,32
    80021620:	00050493          	mv	s1,a0
}
    80021624:	00000097          	auipc	ra,0x0
    80021628:	f38080e7          	jalr	-200(ra) # 8002155c <_ZN9SemaphoreD1Ev>
    8002162c:	00048513          	mv	a0,s1
    80021630:	00000097          	auipc	ra,0x0
    80021634:	f8c080e7          	jalr	-116(ra) # 800215bc <_ZdlPv>
    80021638:	01813083          	ld	ra,24(sp)
    8002163c:	01013403          	ld	s0,16(sp)
    80021640:	00813483          	ld	s1,8(sp)
    80021644:	02010113          	addi	sp,sp,32
    80021648:	00008067          	ret

000000008002164c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*func)(void*), void* arg)
    8002164c:	ff010113          	addi	sp,sp,-16
    80021650:	00813423          	sd	s0,8(sp)
    80021654:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), func(func), arg(arg){}
    80021658:	00009797          	auipc	a5,0x9
    8002165c:	06878793          	addi	a5,a5,104 # 8002a6c0 <_ZTV6Thread+0x10>
    80021660:	00f53023          	sd	a5,0(a0)
    80021664:	00053423          	sd	zero,8(a0)
    80021668:	00b53823          	sd	a1,16(a0)
    8002166c:	00c53c23          	sd	a2,24(a0)
    80021670:	00813403          	ld	s0,8(sp)
    80021674:	01010113          	addi	sp,sp,16
    80021678:	00008067          	ret

000000008002167c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8002167c:	ff010113          	addi	sp,sp,-16
    80021680:	00813423          	sd	s0,8(sp)
    80021684:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), func(nullptr), arg(nullptr){}
    80021688:	00009797          	auipc	a5,0x9
    8002168c:	03878793          	addi	a5,a5,56 # 8002a6c0 <_ZTV6Thread+0x10>
    80021690:	00f53023          	sd	a5,0(a0)
    80021694:	00053423          	sd	zero,8(a0)
    80021698:	00053823          	sd	zero,16(a0)
    8002169c:	00053c23          	sd	zero,24(a0)
    800216a0:	00813403          	ld	s0,8(sp)
    800216a4:	01010113          	addi	sp,sp,16
    800216a8:	00008067          	ret

00000000800216ac <_ZN6Thread5startEv>:
int Thread::start() {
    800216ac:	ff010113          	addi	sp,sp,-16
    800216b0:	00113423          	sd	ra,8(sp)
    800216b4:	00813023          	sd	s0,0(sp)
    800216b8:	01010413          	addi	s0,sp,16
    if (func) {
    800216bc:	01053583          	ld	a1,16(a0)
    800216c0:	02058263          	beqz	a1,800216e4 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, func, arg);
    800216c4:	01853603          	ld	a2,24(a0)
    800216c8:	00850513          	addi	a0,a0,8
    800216cc:	fffff097          	auipc	ra,0xfffff
    800216d0:	e30080e7          	jalr	-464(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
}
    800216d4:	00813083          	ld	ra,8(sp)
    800216d8:	00013403          	ld	s0,0(sp)
    800216dc:	01010113          	addi	sp,sp,16
    800216e0:	00008067          	ret
        return thread_create(&myHandle, &Thread::runWrapper, this);
    800216e4:	00050613          	mv	a2,a0
    800216e8:	00000597          	auipc	a1,0x0
    800216ec:	df058593          	addi	a1,a1,-528 # 800214d8 <_ZN6Thread10runWrapperEPv>
    800216f0:	00850513          	addi	a0,a0,8
    800216f4:	fffff097          	auipc	ra,0xfffff
    800216f8:	e08080e7          	jalr	-504(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    800216fc:	fd9ff06f          	j	800216d4 <_ZN6Thread5startEv+0x28>

0000000080021700 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80021700:	ff010113          	addi	sp,sp,-16
    80021704:	00113423          	sd	ra,8(sp)
    80021708:	00813023          	sd	s0,0(sp)
    8002170c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80021710:	fffff097          	auipc	ra,0xfffff
    80021714:	dcc080e7          	jalr	-564(ra) # 800204dc <_Z15thread_dispatchv>
}
    80021718:	00813083          	ld	ra,8(sp)
    8002171c:	00013403          	ld	s0,0(sp)
    80021720:	01010113          	addi	sp,sp,16
    80021724:	00008067          	ret

0000000080021728 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80021728:	ff010113          	addi	sp,sp,-16
    8002172c:	00113423          	sd	ra,8(sp)
    80021730:	00813023          	sd	s0,0(sp)
    80021734:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80021738:	fffff097          	auipc	ra,0xfffff
    8002173c:	f20080e7          	jalr	-224(ra) # 80020658 <_Z10time_sleepm>
}
    80021740:	00813083          	ld	ra,8(sp)
    80021744:	00013403          	ld	s0,0(sp)
    80021748:	01010113          	addi	sp,sp,16
    8002174c:	00008067          	ret

0000000080021750 <_ZN6Thread5getIdEv>:
int Thread::getId() {
    80021750:	ff010113          	addi	sp,sp,-16
    80021754:	00113423          	sd	ra,8(sp)
    80021758:	00813023          	sd	s0,0(sp)
    8002175c:	01010413          	addi	s0,sp,16
    return get_thread_id();
    80021760:	fffff097          	auipc	ra,0xfffff
    80021764:	dd4080e7          	jalr	-556(ra) # 80020534 <_Z13get_thread_idv>
}
    80021768:	00813083          	ld	ra,8(sp)
    8002176c:	00013403          	ld	s0,0(sp)
    80021770:	01010113          	addi	sp,sp,16
    80021774:	00008067          	ret

0000000080021778 <_ZN6Thread4sendEPc>:
void Thread::send(char *msg) {
    80021778:	ff010113          	addi	sp,sp,-16
    8002177c:	00113423          	sd	ra,8(sp)
    80021780:	00813023          	sd	s0,0(sp)
    80021784:	01010413          	addi	s0,sp,16
    thread_send(this->myHandle, msg);
    80021788:	00853503          	ld	a0,8(a0)
    8002178c:	fffff097          	auipc	ra,0xfffff
    80021790:	dcc080e7          	jalr	-564(ra) # 80020558 <_Z11thread_sendP7_threadPc>
}
    80021794:	00813083          	ld	ra,8(sp)
    80021798:	00013403          	ld	s0,0(sp)
    8002179c:	01010113          	addi	sp,sp,16
    800217a0:	00008067          	ret

00000000800217a4 <_ZN6Thread7recieveEv>:
char* Thread::recieve() {
    800217a4:	ff010113          	addi	sp,sp,-16
    800217a8:	00113423          	sd	ra,8(sp)
    800217ac:	00813023          	sd	s0,0(sp)
    800217b0:	01010413          	addi	s0,sp,16
    return thread_recieve();
    800217b4:	fffff097          	auipc	ra,0xfffff
    800217b8:	dd4080e7          	jalr	-556(ra) # 80020588 <_Z14thread_recievev>
}
    800217bc:	00813083          	ld	ra,8(sp)
    800217c0:	00013403          	ld	s0,0(sp)
    800217c4:	01010113          	addi	sp,sp,16
    800217c8:	00008067          	ret

00000000800217cc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    800217cc:	ff010113          	addi	sp,sp,-16
    800217d0:	00113423          	sd	ra,8(sp)
    800217d4:	00813023          	sd	s0,0(sp)
    800217d8:	01010413          	addi	s0,sp,16
    800217dc:	00009797          	auipc	a5,0x9
    800217e0:	f0c78793          	addi	a5,a5,-244 # 8002a6e8 <_ZTV9Semaphore+0x10>
    800217e4:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800217e8:	00850513          	addi	a0,a0,8
    800217ec:	fffff097          	auipc	ra,0xfffff
    800217f0:	dbc080e7          	jalr	-580(ra) # 800205a8 <_Z8sem_openPP4_semj>
}
    800217f4:	00813083          	ld	ra,8(sp)
    800217f8:	00013403          	ld	s0,0(sp)
    800217fc:	01010113          	addi	sp,sp,16
    80021800:	00008067          	ret

0000000080021804 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80021804:	ff010113          	addi	sp,sp,-16
    80021808:	00113423          	sd	ra,8(sp)
    8002180c:	00813023          	sd	s0,0(sp)
    80021810:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80021814:	00853503          	ld	a0,8(a0)
    80021818:	fffff097          	auipc	ra,0xfffff
    8002181c:	df0080e7          	jalr	-528(ra) # 80020608 <_Z8sem_waitP4_sem>
}
    80021820:	00813083          	ld	ra,8(sp)
    80021824:	00013403          	ld	s0,0(sp)
    80021828:	01010113          	addi	sp,sp,16
    8002182c:	00008067          	ret

0000000080021830 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80021830:	ff010113          	addi	sp,sp,-16
    80021834:	00113423          	sd	ra,8(sp)
    80021838:	00813023          	sd	s0,0(sp)
    8002183c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80021840:	00853503          	ld	a0,8(a0)
    80021844:	fffff097          	auipc	ra,0xfffff
    80021848:	dec080e7          	jalr	-532(ra) # 80020630 <_Z10sem_signalP4_sem>
}
    8002184c:	00813083          	ld	ra,8(sp)
    80021850:	00013403          	ld	s0,0(sp)
    80021854:	01010113          	addi	sp,sp,16
    80021858:	00008067          	ret

000000008002185c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period)
    8002185c:	fe010113          	addi	sp,sp,-32
    80021860:	00113c23          	sd	ra,24(sp)
    80021864:	00813823          	sd	s0,16(sp)
    80021868:	00913423          	sd	s1,8(sp)
    8002186c:	01213023          	sd	s2,0(sp)
    80021870:	02010413          	addi	s0,sp,32
    80021874:	00050493          	mv	s1,a0
    80021878:	00058913          	mv	s2,a1
    : Thread(), period(period){}
    8002187c:	00000097          	auipc	ra,0x0
    80021880:	e00080e7          	jalr	-512(ra) # 8002167c <_ZN6ThreadC1Ev>
    80021884:	00009797          	auipc	a5,0x9
    80021888:	e8478793          	addi	a5,a5,-380 # 8002a708 <_ZTV14PeriodicThread+0x10>
    8002188c:	00f4b023          	sd	a5,0(s1)
    80021890:	0324b023          	sd	s2,32(s1)
    80021894:	01813083          	ld	ra,24(sp)
    80021898:	01013403          	ld	s0,16(sp)
    8002189c:	00813483          	ld	s1,8(sp)
    800218a0:	00013903          	ld	s2,0(sp)
    800218a4:	02010113          	addi	sp,sp,32
    800218a8:	00008067          	ret

00000000800218ac <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    800218ac:	ff010113          	addi	sp,sp,-16
    800218b0:	00813423          	sd	s0,8(sp)
    800218b4:	01010413          	addi	s0,sp,16
    period = 0;
    800218b8:	02053023          	sd	zero,32(a0)
}
    800218bc:	00813403          	ld	s0,8(sp)
    800218c0:	01010113          	addi	sp,sp,16
    800218c4:	00008067          	ret

00000000800218c8 <_ZN7Console4getcEv>:

char Console::getc() {
    800218c8:	ff010113          	addi	sp,sp,-16
    800218cc:	00113423          	sd	ra,8(sp)
    800218d0:	00813023          	sd	s0,0(sp)
    800218d4:	01010413          	addi	s0,sp,16
    return ::getc();
    800218d8:	fffff097          	auipc	ra,0xfffff
    800218dc:	da8080e7          	jalr	-600(ra) # 80020680 <_Z4getcv>
}
    800218e0:	00813083          	ld	ra,8(sp)
    800218e4:	00013403          	ld	s0,0(sp)
    800218e8:	01010113          	addi	sp,sp,16
    800218ec:	00008067          	ret

00000000800218f0 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800218f0:	ff010113          	addi	sp,sp,-16
    800218f4:	00113423          	sd	ra,8(sp)
    800218f8:	00813023          	sd	s0,0(sp)
    800218fc:	01010413          	addi	s0,sp,16
    ::putc(c);
    80021900:	fffff097          	auipc	ra,0xfffff
    80021904:	da4080e7          	jalr	-604(ra) # 800206a4 <_Z4putcc>
    80021908:	00813083          	ld	ra,8(sp)
    8002190c:	00013403          	ld	s0,0(sp)
    80021910:	01010113          	addi	sp,sp,16
    80021914:	00008067          	ret

0000000080021918 <_ZN6Thread3runEv>:

    void send(char* msg);
    char* recieve();
protected:
    Thread();
    virtual void run() {}
    80021918:	ff010113          	addi	sp,sp,-16
    8002191c:	00813423          	sd	s0,8(sp)
    80021920:	01010413          	addi	s0,sp,16
    80021924:	00813403          	ld	s0,8(sp)
    80021928:	01010113          	addi	sp,sp,16
    8002192c:	00008067          	ret

0000000080021930 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread: public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t);
    virtual void periodicActivation() {}
    80021930:	ff010113          	addi	sp,sp,-16
    80021934:	00813423          	sd	s0,8(sp)
    80021938:	01010413          	addi	s0,sp,16
    8002193c:	00813403          	ld	s0,8(sp)
    80021940:	01010113          	addi	sp,sp,16
    80021944:	00008067          	ret

0000000080021948 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread: public Thread {
    80021948:	ff010113          	addi	sp,sp,-16
    8002194c:	00813423          	sd	s0,8(sp)
    80021950:	01010413          	addi	s0,sp,16
    80021954:	00009797          	auipc	a5,0x9
    80021958:	db478793          	addi	a5,a5,-588 # 8002a708 <_ZTV14PeriodicThread+0x10>
    8002195c:	00f53023          	sd	a5,0(a0)
    80021960:	00813403          	ld	s0,8(sp)
    80021964:	01010113          	addi	sp,sp,16
    80021968:	00008067          	ret

000000008002196c <_ZN14PeriodicThreadD0Ev>:
    8002196c:	ff010113          	addi	sp,sp,-16
    80021970:	00113423          	sd	ra,8(sp)
    80021974:	00813023          	sd	s0,0(sp)
    80021978:	01010413          	addi	s0,sp,16
    8002197c:	00009797          	auipc	a5,0x9
    80021980:	d8c78793          	addi	a5,a5,-628 # 8002a708 <_ZTV14PeriodicThread+0x10>
    80021984:	00f53023          	sd	a5,0(a0)
    80021988:	00000097          	auipc	ra,0x0
    8002198c:	c34080e7          	jalr	-972(ra) # 800215bc <_ZdlPv>
    80021990:	00813083          	ld	ra,8(sp)
    80021994:	00013403          	ld	s0,0(sp)
    80021998:	01010113          	addi	sp,sp,16
    8002199c:	00008067          	ret

00000000800219a0 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus>:
MemoryAllocator::MemPiece *MemoryAllocator::free = nullptr;

uint64 MemoryAllocator::allocd = 0;
uint64 MemoryAllocator::deallocd = 0;

void MemoryAllocator::insert(MemPiece **head, MemPiece *node, MemoryStatus status) {
    800219a0:	ff010113          	addi	sp,sp,-16
    800219a4:	00813423          	sd	s0,8(sp)
    800219a8:	01010413          	addi	s0,sp,16
    if (!node)
    800219ac:	02058e63          	beqz	a1,800219e8 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus+0x48>
        return;

    node->status = status;
    800219b0:	00c5a823          	sw	a2,16(a1)
    if (!(*head)) {
    800219b4:	00053703          	ld	a4,0(a0)
    800219b8:	02070063          	beqz	a4,800219d8 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus+0x38>
        *head = node;
        return;
    }

    MemPiece *curr = *head;
    if (node < curr) {
    800219bc:	02e5e263          	bltu	a1,a4,800219e0 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus+0x40>
        *head = node;
        return;
    }

    MemPiece *prev = curr;
    for (MemPiece *c = curr->next; c; c = c->next) {
    800219c0:	00873783          	ld	a5,8(a4)
    800219c4:	02078e63          	beqz	a5,80021a00 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus+0x60>
        if (node < c) {
    800219c8:	02f5e663          	bltu	a1,a5,800219f4 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus+0x54>
            prev->next = node;
            node->next = c;
            return;
        }
        prev = c;
    800219cc:	00078713          	mv	a4,a5
    for (MemPiece *c = curr->next; c; c = c->next) {
    800219d0:	0087b783          	ld	a5,8(a5)
    800219d4:	ff1ff06f          	j	800219c4 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus+0x24>
        *head = node;
    800219d8:	00b53023          	sd	a1,0(a0)
        return;
    800219dc:	00c0006f          	j	800219e8 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus+0x48>
        node->next = curr;
    800219e0:	00e5b423          	sd	a4,8(a1)
        *head = node;
    800219e4:	00b53023          	sd	a1,0(a0)
    }
    prev->next = node;
}
    800219e8:	00813403          	ld	s0,8(sp)
    800219ec:	01010113          	addi	sp,sp,16
    800219f0:	00008067          	ret
            prev->next = node;
    800219f4:	00b73423          	sd	a1,8(a4)
            node->next = c;
    800219f8:	00f5b423          	sd	a5,8(a1)
            return;
    800219fc:	fedff06f          	j	800219e8 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus+0x48>
    prev->next = node;
    80021a00:	00b73423          	sd	a1,8(a4)
    80021a04:	fe5ff06f          	j	800219e8 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus+0x48>

0000000080021a08 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_>:

void MemoryAllocator::remove(MemPiece **head, MemPiece *node) {
    80021a08:	ff010113          	addi	sp,sp,-16
    80021a0c:	00813423          	sd	s0,8(sp)
    80021a10:	01010413          	addi	s0,sp,16
    if (!head || !node || !(*head)) return;
    80021a14:	04050063          	beqz	a0,80021a54 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_+0x4c>
    80021a18:	02058e63          	beqz	a1,80021a54 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_+0x4c>
    80021a1c:	00053703          	ld	a4,0(a0)
    80021a20:	02070a63          	beqz	a4,80021a54 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_+0x4c>

    MemPiece *cur = *head;
    if (cur == node) {
    80021a24:	00b70e63          	beq	a4,a1,80021a40 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_+0x38>
        node->next = nullptr;
        return;
    }

    MemPiece *prev = cur;
    cur = cur->next;
    80021a28:	00873783          	ld	a5,8(a4)

    while (cur && cur != node) {
    80021a2c:	02078263          	beqz	a5,80021a50 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_+0x48>
    80021a30:	02b78063          	beq	a5,a1,80021a50 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_+0x48>
        prev = cur;
    80021a34:	00078713          	mv	a4,a5
        cur = cur->next;
    80021a38:	0087b783          	ld	a5,8(a5)
    while (cur && cur != node) {
    80021a3c:	ff1ff06f          	j	80021a2c <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_+0x24>
        *head = cur->next;
    80021a40:	00873783          	ld	a5,8(a4)
    80021a44:	00f53023          	sd	a5,0(a0)
        node->next = nullptr;
    80021a48:	0005b423          	sd	zero,8(a1)
        return;
    80021a4c:	0080006f          	j	80021a54 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_+0x4c>
    }

    if (cur == node) {
    80021a50:	00b78863          	beq	a5,a1,80021a60 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_+0x58>
        prev->next = node->next;
        node->next = nullptr;
    }
}
    80021a54:	00813403          	ld	s0,8(sp)
    80021a58:	01010113          	addi	sp,sp,16
    80021a5c:	00008067          	ret
        prev->next = node->next;
    80021a60:	0085b783          	ld	a5,8(a1)
    80021a64:	00f73423          	sd	a5,8(a4)
        node->next = nullptr;
    80021a68:	0005b423          	sd	zero,8(a1)
    80021a6c:	fe9ff06f          	j	80021a54 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_+0x4c>

0000000080021a70 <_ZN15MemoryAllocator17initialize_memoryEv>:

void MemoryAllocator::initialize_memory() {
    80021a70:	ff010113          	addi	sp,sp,-16
    80021a74:	00813423          	sd	s0,8(sp)
    80021a78:	01010413          	addi	s0,sp,16
    free = (MemPiece*)HEAP_START_ADDR;
    80021a7c:	00009797          	auipc	a5,0x9
    80021a80:	e747b783          	ld	a5,-396(a5) # 8002a8f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80021a84:	0007b703          	ld	a4,0(a5)
    80021a88:	00009697          	auipc	a3,0x9
    80021a8c:	17868693          	addi	a3,a3,376 # 8002ac00 <_ZN15MemoryAllocator4freeE>
    80021a90:	00e6b023          	sd	a4,0(a3)
    free->size = (size_t)((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    80021a94:	00009797          	auipc	a5,0x9
    80021a98:	e847b783          	ld	a5,-380(a5) # 8002a918 <_GLOBAL_OFFSET_TABLE_+0x40>
    80021a9c:	0007b783          	ld	a5,0(a5)
    80021aa0:	40e787b3          	sub	a5,a5,a4
    80021aa4:	0067d793          	srli	a5,a5,0x6
    80021aa8:	00f73023          	sd	a5,0(a4)
    free->next = nullptr;
    80021aac:	0006b783          	ld	a5,0(a3)
    80021ab0:	0007b423          	sd	zero,8(a5)
    free->status = FREE;
    80021ab4:	0007a823          	sw	zero,16(a5)
}
    80021ab8:	00813403          	ld	s0,8(sp)
    80021abc:	01010113          	addi	sp,sp,16
    80021ac0:	00008067          	ret

0000000080021ac4 <_ZN15MemoryAllocator6mallocEm>:

void *MemoryAllocator::malloc(size_t size) {
    80021ac4:	fc010113          	addi	sp,sp,-64
    80021ac8:	02113c23          	sd	ra,56(sp)
    80021acc:	02813823          	sd	s0,48(sp)
    80021ad0:	02913423          	sd	s1,40(sp)
    80021ad4:	03213023          	sd	s2,32(sp)
    80021ad8:	01313c23          	sd	s3,24(sp)
    80021adc:	01413823          	sd	s4,16(sp)
    80021ae0:	01513423          	sd	s5,8(sp)
    80021ae4:	04010413          	addi	s0,sp,64
    if (size == 0 || size * MEM_BLOCK_SIZE > (size_t)((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR))
    80021ae8:	12050263          	beqz	a0,80021c0c <_ZN15MemoryAllocator6mallocEm+0x148>
    80021aec:	00050913          	mv	s2,a0
    80021af0:	00651993          	slli	s3,a0,0x6
    80021af4:	00009797          	auipc	a5,0x9
    80021af8:	e247b783          	ld	a5,-476(a5) # 8002a918 <_GLOBAL_OFFSET_TABLE_+0x40>
    80021afc:	0007b783          	ld	a5,0(a5)
    80021b00:	00009717          	auipc	a4,0x9
    80021b04:	df073703          	ld	a4,-528(a4) # 8002a8f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80021b08:	00073703          	ld	a4,0(a4)
    80021b0c:	40e787b3          	sub	a5,a5,a4
    80021b10:	1137e263          	bltu	a5,s3,80021c14 <_ZN15MemoryAllocator6mallocEm+0x150>
        return nullptr;

    MemPiece *block = free;
    80021b14:	00009497          	auipc	s1,0x9
    80021b18:	0ec4b483          	ld	s1,236(s1) # 8002ac00 <_ZN15MemoryAllocator4freeE>
    80021b1c:	0700006f          	j	80021b8c <_ZN15MemoryAllocator6mallocEm+0xc8>

    for (; block != nullptr; block = block->next) {
        if (block->size == size) {
            remove(&free,block);
    80021b20:	00009997          	auipc	s3,0x9
    80021b24:	0e098993          	addi	s3,s3,224 # 8002ac00 <_ZN15MemoryAllocator4freeE>
    80021b28:	00048593          	mv	a1,s1
    80021b2c:	00098513          	mv	a0,s3
    80021b30:	00000097          	auipc	ra,0x0
    80021b34:	ed8080e7          	jalr	-296(ra) # 80021a08 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_>
            insert(&allocated, block, OCCUPIED);
    80021b38:	00100613          	li	a2,1
    80021b3c:	00048593          	mv	a1,s1
    80021b40:	00009517          	auipc	a0,0x9
    80021b44:	0c850513          	addi	a0,a0,200 # 8002ac08 <_ZN15MemoryAllocator9allocatedE>
    80021b48:	00000097          	auipc	ra,0x0
    80021b4c:	e58080e7          	jalr	-424(ra) # 800219a0 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus>
            allocd+=size;
    80021b50:	0109b783          	ld	a5,16(s3)
    80021b54:	01278933          	add	s2,a5,s2
    80021b58:	0129b823          	sd	s2,16(s3)
            return (void*)((char*)block + sizeof(MemPiece));
    80021b5c:	01848493          	addi	s1,s1,24
            allocd += size;
            return (void*)ret_add;
        }
    }
    return nullptr;
}
    80021b60:	00048513          	mv	a0,s1
    80021b64:	03813083          	ld	ra,56(sp)
    80021b68:	03013403          	ld	s0,48(sp)
    80021b6c:	02813483          	ld	s1,40(sp)
    80021b70:	02013903          	ld	s2,32(sp)
    80021b74:	01813983          	ld	s3,24(sp)
    80021b78:	01013a03          	ld	s4,16(sp)
    80021b7c:	00813a83          	ld	s5,8(sp)
    80021b80:	04010113          	addi	sp,sp,64
    80021b84:	00008067          	ret
    for (; block != nullptr; block = block->next) {
    80021b88:	0084b483          	ld	s1,8(s1)
    80021b8c:	fc048ae3          	beqz	s1,80021b60 <_ZN15MemoryAllocator6mallocEm+0x9c>
        if (block->size == size) {
    80021b90:	0004b783          	ld	a5,0(s1)
    80021b94:	f92786e3          	beq	a5,s2,80021b20 <_ZN15MemoryAllocator6mallocEm+0x5c>
        else if (block->size > size) {
    80021b98:	fef978e3          	bgeu	s2,a5,80021b88 <_ZN15MemoryAllocator6mallocEm+0xc4>
            remove(&free, block);
    80021b9c:	00009a17          	auipc	s4,0x9
    80021ba0:	064a0a13          	addi	s4,s4,100 # 8002ac00 <_ZN15MemoryAllocator4freeE>
    80021ba4:	00048593          	mv	a1,s1
    80021ba8:	000a0513          	mv	a0,s4
    80021bac:	00000097          	auipc	ra,0x0
    80021bb0:	e5c080e7          	jalr	-420(ra) # 80021a08 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_>
            size_t originalSize = block->size;
    80021bb4:	0004ba83          	ld	s5,0(s1)
            block->size = size;
    80021bb8:	0124b023          	sd	s2,0(s1)
            insert(&allocated, block, OCCUPIED);
    80021bbc:	00100613          	li	a2,1
    80021bc0:	00048593          	mv	a1,s1
    80021bc4:	00009517          	auipc	a0,0x9
    80021bc8:	04450513          	addi	a0,a0,68 # 8002ac08 <_ZN15MemoryAllocator9allocatedE>
    80021bcc:	00000097          	auipc	ra,0x0
    80021bd0:	dd4080e7          	jalr	-556(ra) # 800219a0 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus>
            MemPiece* new_node = (MemPiece*)((char*)block + sizeof(MemPiece) + size * MEM_BLOCK_SIZE);
    80021bd4:	01898593          	addi	a1,s3,24
    80021bd8:	00b485b3          	add	a1,s1,a1
            new_node->next = nullptr;
    80021bdc:	0005b423          	sd	zero,8(a1)
            new_node->size = originalSize - size;
    80021be0:	412a8ab3          	sub	s5,s5,s2
    80021be4:	0155b023          	sd	s5,0(a1)
            insert(&free, new_node, FREE);
    80021be8:	00000613          	li	a2,0
    80021bec:	000a0513          	mv	a0,s4
    80021bf0:	00000097          	auipc	ra,0x0
    80021bf4:	db0080e7          	jalr	-592(ra) # 800219a0 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus>
            char* ret_add = (char*)block + sizeof(MemPiece);
    80021bf8:	01848493          	addi	s1,s1,24
            allocd += size;
    80021bfc:	010a3783          	ld	a5,16(s4)
    80021c00:	01278933          	add	s2,a5,s2
    80021c04:	012a3823          	sd	s2,16(s4)
            return (void*)ret_add;
    80021c08:	f59ff06f          	j	80021b60 <_ZN15MemoryAllocator6mallocEm+0x9c>
        return nullptr;
    80021c0c:	00000493          	li	s1,0
    80021c10:	f51ff06f          	j	80021b60 <_ZN15MemoryAllocator6mallocEm+0x9c>
    80021c14:	00000493          	li	s1,0
    80021c18:	f49ff06f          	j	80021b60 <_ZN15MemoryAllocator6mallocEm+0x9c>

0000000080021c1c <_ZN15MemoryAllocator7deallocEPv>:

int MemoryAllocator::dealloc(void *ptr) {
    if (!ptr)
    80021c1c:	0c050a63          	beqz	a0,80021cf0 <_ZN15MemoryAllocator7deallocEPv+0xd4>
int MemoryAllocator::dealloc(void *ptr) {
    80021c20:	fd010113          	addi	sp,sp,-48
    80021c24:	02113423          	sd	ra,40(sp)
    80021c28:	02813023          	sd	s0,32(sp)
    80021c2c:	00913c23          	sd	s1,24(sp)
    80021c30:	01213823          	sd	s2,16(sp)
    80021c34:	01313423          	sd	s3,8(sp)
    80021c38:	03010413          	addi	s0,sp,48
    80021c3c:	00050493          	mv	s1,a0
        return -1;

    MemPiece* mem = (MemPiece*)((char*)ptr - sizeof(MemPiece));
    80021c40:	fe850913          	addi	s2,a0,-24

    if (mem->status != OCCUPIED)
    80021c44:	ff852703          	lw	a4,-8(a0)
    80021c48:	00100793          	li	a5,1
    80021c4c:	02f70263          	beq	a4,a5,80021c70 <_ZN15MemoryAllocator7deallocEPv+0x54>
        return -1;
    80021c50:	fff00513          	li	a0,-1
        mem->size += sizeof(MemPiece) / MEM_BLOCK_SIZE + next->size;
        remove(&free, next);
    }

    return 1;
    80021c54:	02813083          	ld	ra,40(sp)
    80021c58:	02013403          	ld	s0,32(sp)
    80021c5c:	01813483          	ld	s1,24(sp)
    80021c60:	01013903          	ld	s2,16(sp)
    80021c64:	00813983          	ld	s3,8(sp)
    80021c68:	03010113          	addi	sp,sp,48
    80021c6c:	00008067          	ret
    deallocd += mem->size;
    80021c70:	fe853703          	ld	a4,-24(a0)
    80021c74:	00009997          	auipc	s3,0x9
    80021c78:	f8c98993          	addi	s3,s3,-116 # 8002ac00 <_ZN15MemoryAllocator4freeE>
    80021c7c:	0189b783          	ld	a5,24(s3)
    80021c80:	00e787b3          	add	a5,a5,a4
    80021c84:	00f9bc23          	sd	a5,24(s3)
    remove(&allocated, mem);
    80021c88:	00090593          	mv	a1,s2
    80021c8c:	00009517          	auipc	a0,0x9
    80021c90:	f7c50513          	addi	a0,a0,-132 # 8002ac08 <_ZN15MemoryAllocator9allocatedE>
    80021c94:	00000097          	auipc	ra,0x0
    80021c98:	d74080e7          	jalr	-652(ra) # 80021a08 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_>
    insert(&free, mem, FREE);
    80021c9c:	00000613          	li	a2,0
    80021ca0:	00090593          	mv	a1,s2
    80021ca4:	00098513          	mv	a0,s3
    80021ca8:	00000097          	auipc	ra,0x0
    80021cac:	cf8080e7          	jalr	-776(ra) # 800219a0 <_ZN15MemoryAllocator6insertEPPNS_8MemPieceES1_12MemoryStatus>
    MemPiece *next = mem->next;
    80021cb0:	ff04b583          	ld	a1,-16(s1)
    if (next && (char*)mem + sizeof(MemPiece) + mem->size * MEM_BLOCK_SIZE == (char*)next) {
    80021cb4:	04058263          	beqz	a1,80021cf8 <_ZN15MemoryAllocator7deallocEPv+0xdc>
    80021cb8:	fe84b703          	ld	a4,-24(s1)
    80021cbc:	00671793          	slli	a5,a4,0x6
    80021cc0:	00f487b3          	add	a5,s1,a5
    80021cc4:	00b78663          	beq	a5,a1,80021cd0 <_ZN15MemoryAllocator7deallocEPv+0xb4>
    return 1;
    80021cc8:	00100513          	li	a0,1
    80021ccc:	f89ff06f          	j	80021c54 <_ZN15MemoryAllocator7deallocEPv+0x38>
        mem->size += sizeof(MemPiece) / MEM_BLOCK_SIZE + next->size;
    80021cd0:	0005b783          	ld	a5,0(a1)
    80021cd4:	00f70733          	add	a4,a4,a5
    80021cd8:	fee4b423          	sd	a4,-24(s1)
        remove(&free, next);
    80021cdc:	00098513          	mv	a0,s3
    80021ce0:	00000097          	auipc	ra,0x0
    80021ce4:	d28080e7          	jalr	-728(ra) # 80021a08 <_ZN15MemoryAllocator6removeEPPNS_8MemPieceES1_>
    return 1;
    80021ce8:	00100513          	li	a0,1
    80021cec:	f69ff06f          	j	80021c54 <_ZN15MemoryAllocator7deallocEPv+0x38>
        return -1;
    80021cf0:	fff00513          	li	a0,-1
    80021cf4:	00008067          	ret
    return 1;
    80021cf8:	00100513          	li	a0,1
    80021cfc:	f59ff06f          	j	80021c54 <_ZN15MemoryAllocator7deallocEPv+0x38>

0000000080021d00 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80021d00:	fe010113          	addi	sp,sp,-32
    80021d04:	00113c23          	sd	ra,24(sp)
    80021d08:	00813823          	sd	s0,16(sp)
    80021d0c:	00913423          	sd	s1,8(sp)
    80021d10:	01213023          	sd	s2,0(sp)
    80021d14:	02010413          	addi	s0,sp,32
    80021d18:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80021d1c:	00000913          	li	s2,0
    80021d20:	00c0006f          	j	80021d2c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80021d24:	ffffe097          	auipc	ra,0xffffe
    80021d28:	7b8080e7          	jalr	1976(ra) # 800204dc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80021d2c:	fffff097          	auipc	ra,0xfffff
    80021d30:	954080e7          	jalr	-1708(ra) # 80020680 <_Z4getcv>
    80021d34:	0005059b          	sext.w	a1,a0
    80021d38:	01b00793          	li	a5,27
    80021d3c:	02f58a63          	beq	a1,a5,80021d70 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80021d40:	0084b503          	ld	a0,8(s1)
    80021d44:	00003097          	auipc	ra,0x3
    80021d48:	474080e7          	jalr	1140(ra) # 800251b8 <_ZN6Buffer3putEi>
        i++;
    80021d4c:	0019071b          	addiw	a4,s2,1
    80021d50:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80021d54:	0004a683          	lw	a3,0(s1)
    80021d58:	0026979b          	slliw	a5,a3,0x2
    80021d5c:	00d787bb          	addw	a5,a5,a3
    80021d60:	0017979b          	slliw	a5,a5,0x1
    80021d64:	02f767bb          	remw	a5,a4,a5
    80021d68:	fc0792e3          	bnez	a5,80021d2c <_ZL16producerKeyboardPv+0x2c>
    80021d6c:	fb9ff06f          	j	80021d24 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80021d70:	00100793          	li	a5,1
    80021d74:	00009717          	auipc	a4,0x9
    80021d78:	eaf72623          	sw	a5,-340(a4) # 8002ac20 <_ZL9threadEnd>
    data->buffer->put('!');
    80021d7c:	02100593          	li	a1,33
    80021d80:	0084b503          	ld	a0,8(s1)
    80021d84:	00003097          	auipc	ra,0x3
    80021d88:	434080e7          	jalr	1076(ra) # 800251b8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80021d8c:	0104b503          	ld	a0,16(s1)
    80021d90:	fffff097          	auipc	ra,0xfffff
    80021d94:	8a0080e7          	jalr	-1888(ra) # 80020630 <_Z10sem_signalP4_sem>
}
    80021d98:	01813083          	ld	ra,24(sp)
    80021d9c:	01013403          	ld	s0,16(sp)
    80021da0:	00813483          	ld	s1,8(sp)
    80021da4:	00013903          	ld	s2,0(sp)
    80021da8:	02010113          	addi	sp,sp,32
    80021dac:	00008067          	ret

0000000080021db0 <_ZL8producerPv>:

static void producer(void *arg) {
    80021db0:	fe010113          	addi	sp,sp,-32
    80021db4:	00113c23          	sd	ra,24(sp)
    80021db8:	00813823          	sd	s0,16(sp)
    80021dbc:	00913423          	sd	s1,8(sp)
    80021dc0:	01213023          	sd	s2,0(sp)
    80021dc4:	02010413          	addi	s0,sp,32
    80021dc8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80021dcc:	00000913          	li	s2,0
    80021dd0:	00c0006f          	j	80021ddc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80021dd4:	ffffe097          	auipc	ra,0xffffe
    80021dd8:	708080e7          	jalr	1800(ra) # 800204dc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80021ddc:	00009797          	auipc	a5,0x9
    80021de0:	e447a783          	lw	a5,-444(a5) # 8002ac20 <_ZL9threadEnd>
    80021de4:	02079e63          	bnez	a5,80021e20 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80021de8:	0004a583          	lw	a1,0(s1)
    80021dec:	0305859b          	addiw	a1,a1,48
    80021df0:	0084b503          	ld	a0,8(s1)
    80021df4:	00003097          	auipc	ra,0x3
    80021df8:	3c4080e7          	jalr	964(ra) # 800251b8 <_ZN6Buffer3putEi>
        i++;
    80021dfc:	0019071b          	addiw	a4,s2,1
    80021e00:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80021e04:	0004a683          	lw	a3,0(s1)
    80021e08:	0026979b          	slliw	a5,a3,0x2
    80021e0c:	00d787bb          	addw	a5,a5,a3
    80021e10:	0017979b          	slliw	a5,a5,0x1
    80021e14:	02f767bb          	remw	a5,a4,a5
    80021e18:	fc0792e3          	bnez	a5,80021ddc <_ZL8producerPv+0x2c>
    80021e1c:	fb9ff06f          	j	80021dd4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80021e20:	0104b503          	ld	a0,16(s1)
    80021e24:	fffff097          	auipc	ra,0xfffff
    80021e28:	80c080e7          	jalr	-2036(ra) # 80020630 <_Z10sem_signalP4_sem>
}
    80021e2c:	01813083          	ld	ra,24(sp)
    80021e30:	01013403          	ld	s0,16(sp)
    80021e34:	00813483          	ld	s1,8(sp)
    80021e38:	00013903          	ld	s2,0(sp)
    80021e3c:	02010113          	addi	sp,sp,32
    80021e40:	00008067          	ret

0000000080021e44 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80021e44:	fd010113          	addi	sp,sp,-48
    80021e48:	02113423          	sd	ra,40(sp)
    80021e4c:	02813023          	sd	s0,32(sp)
    80021e50:	00913c23          	sd	s1,24(sp)
    80021e54:	01213823          	sd	s2,16(sp)
    80021e58:	01313423          	sd	s3,8(sp)
    80021e5c:	03010413          	addi	s0,sp,48
    80021e60:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80021e64:	00000993          	li	s3,0
    80021e68:	01c0006f          	j	80021e84 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80021e6c:	ffffe097          	auipc	ra,0xffffe
    80021e70:	670080e7          	jalr	1648(ra) # 800204dc <_Z15thread_dispatchv>
    80021e74:	0500006f          	j	80021ec4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80021e78:	00a00513          	li	a0,10
    80021e7c:	fffff097          	auipc	ra,0xfffff
    80021e80:	828080e7          	jalr	-2008(ra) # 800206a4 <_Z4putcc>
    while (!threadEnd) {
    80021e84:	00009797          	auipc	a5,0x9
    80021e88:	d9c7a783          	lw	a5,-612(a5) # 8002ac20 <_ZL9threadEnd>
    80021e8c:	06079063          	bnez	a5,80021eec <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80021e90:	00893503          	ld	a0,8(s2)
    80021e94:	00003097          	auipc	ra,0x3
    80021e98:	3b4080e7          	jalr	948(ra) # 80025248 <_ZN6Buffer3getEv>
        i++;
    80021e9c:	0019849b          	addiw	s1,s3,1
    80021ea0:	0004899b          	sext.w	s3,s1
        putc(key);
    80021ea4:	0ff57513          	andi	a0,a0,255
    80021ea8:	ffffe097          	auipc	ra,0xffffe
    80021eac:	7fc080e7          	jalr	2044(ra) # 800206a4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80021eb0:	00092703          	lw	a4,0(s2)
    80021eb4:	0027179b          	slliw	a5,a4,0x2
    80021eb8:	00e787bb          	addw	a5,a5,a4
    80021ebc:	02f4e7bb          	remw	a5,s1,a5
    80021ec0:	fa0786e3          	beqz	a5,80021e6c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80021ec4:	05000793          	li	a5,80
    80021ec8:	02f4e4bb          	remw	s1,s1,a5
    80021ecc:	fa049ce3          	bnez	s1,80021e84 <_ZL8consumerPv+0x40>
    80021ed0:	fa9ff06f          	j	80021e78 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80021ed4:	00893503          	ld	a0,8(s2)
    80021ed8:	00003097          	auipc	ra,0x3
    80021edc:	370080e7          	jalr	880(ra) # 80025248 <_ZN6Buffer3getEv>
        putc(key);
    80021ee0:	0ff57513          	andi	a0,a0,255
    80021ee4:	ffffe097          	auipc	ra,0xffffe
    80021ee8:	7c0080e7          	jalr	1984(ra) # 800206a4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80021eec:	00893503          	ld	a0,8(s2)
    80021ef0:	00003097          	auipc	ra,0x3
    80021ef4:	3e4080e7          	jalr	996(ra) # 800252d4 <_ZN6Buffer6getCntEv>
    80021ef8:	fca04ee3          	bgtz	a0,80021ed4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80021efc:	01093503          	ld	a0,16(s2)
    80021f00:	ffffe097          	auipc	ra,0xffffe
    80021f04:	730080e7          	jalr	1840(ra) # 80020630 <_Z10sem_signalP4_sem>
}
    80021f08:	02813083          	ld	ra,40(sp)
    80021f0c:	02013403          	ld	s0,32(sp)
    80021f10:	01813483          	ld	s1,24(sp)
    80021f14:	01013903          	ld	s2,16(sp)
    80021f18:	00813983          	ld	s3,8(sp)
    80021f1c:	03010113          	addi	sp,sp,48
    80021f20:	00008067          	ret

0000000080021f24 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80021f24:	f9010113          	addi	sp,sp,-112
    80021f28:	06113423          	sd	ra,104(sp)
    80021f2c:	06813023          	sd	s0,96(sp)
    80021f30:	04913c23          	sd	s1,88(sp)
    80021f34:	05213823          	sd	s2,80(sp)
    80021f38:	05313423          	sd	s3,72(sp)
    80021f3c:	05413023          	sd	s4,64(sp)
    80021f40:	03513c23          	sd	s5,56(sp)
    80021f44:	03613823          	sd	s6,48(sp)
    80021f48:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80021f4c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80021f50:	00006517          	auipc	a0,0x6
    80021f54:	1e050513          	addi	a0,a0,480 # 80028130 <CONSOLE_STATUS+0x120>
    80021f58:	00002097          	auipc	ra,0x2
    80021f5c:	278080e7          	jalr	632(ra) # 800241d0 <_Z11printStringPKc>
    getString(input, 30);
    80021f60:	01e00593          	li	a1,30
    80021f64:	fa040493          	addi	s1,s0,-96
    80021f68:	00048513          	mv	a0,s1
    80021f6c:	00002097          	auipc	ra,0x2
    80021f70:	2ec080e7          	jalr	748(ra) # 80024258 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80021f74:	00048513          	mv	a0,s1
    80021f78:	00002097          	auipc	ra,0x2
    80021f7c:	3b8080e7          	jalr	952(ra) # 80024330 <_Z11stringToIntPKc>
    80021f80:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80021f84:	00006517          	auipc	a0,0x6
    80021f88:	1cc50513          	addi	a0,a0,460 # 80028150 <CONSOLE_STATUS+0x140>
    80021f8c:	00002097          	auipc	ra,0x2
    80021f90:	244080e7          	jalr	580(ra) # 800241d0 <_Z11printStringPKc>
    getString(input, 30);
    80021f94:	01e00593          	li	a1,30
    80021f98:	00048513          	mv	a0,s1
    80021f9c:	00002097          	auipc	ra,0x2
    80021fa0:	2bc080e7          	jalr	700(ra) # 80024258 <_Z9getStringPci>
    n = stringToInt(input);
    80021fa4:	00048513          	mv	a0,s1
    80021fa8:	00002097          	auipc	ra,0x2
    80021fac:	388080e7          	jalr	904(ra) # 80024330 <_Z11stringToIntPKc>
    80021fb0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80021fb4:	00006517          	auipc	a0,0x6
    80021fb8:	1bc50513          	addi	a0,a0,444 # 80028170 <CONSOLE_STATUS+0x160>
    80021fbc:	00002097          	auipc	ra,0x2
    80021fc0:	214080e7          	jalr	532(ra) # 800241d0 <_Z11printStringPKc>
    80021fc4:	00000613          	li	a2,0
    80021fc8:	00a00593          	li	a1,10
    80021fcc:	00090513          	mv	a0,s2
    80021fd0:	00002097          	auipc	ra,0x2
    80021fd4:	3b0080e7          	jalr	944(ra) # 80024380 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80021fd8:	00006517          	auipc	a0,0x6
    80021fdc:	1b050513          	addi	a0,a0,432 # 80028188 <CONSOLE_STATUS+0x178>
    80021fe0:	00002097          	auipc	ra,0x2
    80021fe4:	1f0080e7          	jalr	496(ra) # 800241d0 <_Z11printStringPKc>
    80021fe8:	00000613          	li	a2,0
    80021fec:	00a00593          	li	a1,10
    80021ff0:	00048513          	mv	a0,s1
    80021ff4:	00002097          	auipc	ra,0x2
    80021ff8:	38c080e7          	jalr	908(ra) # 80024380 <_Z8printIntiii>
    printString(".\n");
    80021ffc:	00006517          	auipc	a0,0x6
    80022000:	1a450513          	addi	a0,a0,420 # 800281a0 <CONSOLE_STATUS+0x190>
    80022004:	00002097          	auipc	ra,0x2
    80022008:	1cc080e7          	jalr	460(ra) # 800241d0 <_Z11printStringPKc>
    if(threadNum > n) {
    8002200c:	0324c463          	blt	s1,s2,80022034 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80022010:	03205c63          	blez	s2,80022048 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80022014:	03800513          	li	a0,56
    80022018:	fffff097          	auipc	ra,0xfffff
    8002201c:	57c080e7          	jalr	1404(ra) # 80021594 <_Znwm>
    80022020:	00050a13          	mv	s4,a0
    80022024:	00048593          	mv	a1,s1
    80022028:	00003097          	auipc	ra,0x3
    8002202c:	0f4080e7          	jalr	244(ra) # 8002511c <_ZN6BufferC1Ei>
    80022030:	0300006f          	j	80022060 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80022034:	00006517          	auipc	a0,0x6
    80022038:	17450513          	addi	a0,a0,372 # 800281a8 <CONSOLE_STATUS+0x198>
    8002203c:	00002097          	auipc	ra,0x2
    80022040:	194080e7          	jalr	404(ra) # 800241d0 <_Z11printStringPKc>
        return;
    80022044:	0140006f          	j	80022058 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80022048:	00006517          	auipc	a0,0x6
    8002204c:	1a050513          	addi	a0,a0,416 # 800281e8 <CONSOLE_STATUS+0x1d8>
    80022050:	00002097          	auipc	ra,0x2
    80022054:	180080e7          	jalr	384(ra) # 800241d0 <_Z11printStringPKc>
        return;
    80022058:	000b0113          	mv	sp,s6
    8002205c:	1500006f          	j	800221ac <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80022060:	00000593          	li	a1,0
    80022064:	00009517          	auipc	a0,0x9
    80022068:	bc450513          	addi	a0,a0,-1084 # 8002ac28 <_ZL10waitForAll>
    8002206c:	ffffe097          	auipc	ra,0xffffe
    80022070:	53c080e7          	jalr	1340(ra) # 800205a8 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80022074:	00391793          	slli	a5,s2,0x3
    80022078:	00f78793          	addi	a5,a5,15
    8002207c:	ff07f793          	andi	a5,a5,-16
    80022080:	40f10133          	sub	sp,sp,a5
    80022084:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80022088:	0019071b          	addiw	a4,s2,1
    8002208c:	00171793          	slli	a5,a4,0x1
    80022090:	00e787b3          	add	a5,a5,a4
    80022094:	00379793          	slli	a5,a5,0x3
    80022098:	00f78793          	addi	a5,a5,15
    8002209c:	ff07f793          	andi	a5,a5,-16
    800220a0:	40f10133          	sub	sp,sp,a5
    800220a4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800220a8:	00191613          	slli	a2,s2,0x1
    800220ac:	012607b3          	add	a5,a2,s2
    800220b0:	00379793          	slli	a5,a5,0x3
    800220b4:	00f987b3          	add	a5,s3,a5
    800220b8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800220bc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800220c0:	00009717          	auipc	a4,0x9
    800220c4:	b6873703          	ld	a4,-1176(a4) # 8002ac28 <_ZL10waitForAll>
    800220c8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800220cc:	00078613          	mv	a2,a5
    800220d0:	00000597          	auipc	a1,0x0
    800220d4:	d7458593          	addi	a1,a1,-652 # 80021e44 <_ZL8consumerPv>
    800220d8:	f9840513          	addi	a0,s0,-104
    800220dc:	ffffe097          	auipc	ra,0xffffe
    800220e0:	420080e7          	jalr	1056(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800220e4:	00000493          	li	s1,0
    800220e8:	0280006f          	j	80022110 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800220ec:	00000597          	auipc	a1,0x0
    800220f0:	c1458593          	addi	a1,a1,-1004 # 80021d00 <_ZL16producerKeyboardPv>
                      data + i);
    800220f4:	00179613          	slli	a2,a5,0x1
    800220f8:	00f60633          	add	a2,a2,a5
    800220fc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80022100:	00c98633          	add	a2,s3,a2
    80022104:	ffffe097          	auipc	ra,0xffffe
    80022108:	3f8080e7          	jalr	1016(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8002210c:	0014849b          	addiw	s1,s1,1
    80022110:	0524d263          	bge	s1,s2,80022154 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80022114:	00149793          	slli	a5,s1,0x1
    80022118:	009787b3          	add	a5,a5,s1
    8002211c:	00379793          	slli	a5,a5,0x3
    80022120:	00f987b3          	add	a5,s3,a5
    80022124:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80022128:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8002212c:	00009717          	auipc	a4,0x9
    80022130:	afc73703          	ld	a4,-1284(a4) # 8002ac28 <_ZL10waitForAll>
    80022134:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80022138:	00048793          	mv	a5,s1
    8002213c:	00349513          	slli	a0,s1,0x3
    80022140:	00aa8533          	add	a0,s5,a0
    80022144:	fa9054e3          	blez	s1,800220ec <_Z22producerConsumer_C_APIv+0x1c8>
    80022148:	00000597          	auipc	a1,0x0
    8002214c:	c6858593          	addi	a1,a1,-920 # 80021db0 <_ZL8producerPv>
    80022150:	fa5ff06f          	j	800220f4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80022154:	ffffe097          	auipc	ra,0xffffe
    80022158:	388080e7          	jalr	904(ra) # 800204dc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8002215c:	00000493          	li	s1,0
    80022160:	00994e63          	blt	s2,s1,8002217c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80022164:	00009517          	auipc	a0,0x9
    80022168:	ac453503          	ld	a0,-1340(a0) # 8002ac28 <_ZL10waitForAll>
    8002216c:	ffffe097          	auipc	ra,0xffffe
    80022170:	49c080e7          	jalr	1180(ra) # 80020608 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80022174:	0014849b          	addiw	s1,s1,1
    80022178:	fe9ff06f          	j	80022160 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8002217c:	00009517          	auipc	a0,0x9
    80022180:	aac53503          	ld	a0,-1364(a0) # 8002ac28 <_ZL10waitForAll>
    80022184:	ffffe097          	auipc	ra,0xffffe
    80022188:	45c080e7          	jalr	1116(ra) # 800205e0 <_Z9sem_closeP4_sem>
    delete buffer;
    8002218c:	000a0e63          	beqz	s4,800221a8 <_Z22producerConsumer_C_APIv+0x284>
    80022190:	000a0513          	mv	a0,s4
    80022194:	00003097          	auipc	ra,0x3
    80022198:	1c8080e7          	jalr	456(ra) # 8002535c <_ZN6BufferD1Ev>
    8002219c:	000a0513          	mv	a0,s4
    800221a0:	fffff097          	auipc	ra,0xfffff
    800221a4:	41c080e7          	jalr	1052(ra) # 800215bc <_ZdlPv>
    800221a8:	000b0113          	mv	sp,s6

}
    800221ac:	f9040113          	addi	sp,s0,-112
    800221b0:	06813083          	ld	ra,104(sp)
    800221b4:	06013403          	ld	s0,96(sp)
    800221b8:	05813483          	ld	s1,88(sp)
    800221bc:	05013903          	ld	s2,80(sp)
    800221c0:	04813983          	ld	s3,72(sp)
    800221c4:	04013a03          	ld	s4,64(sp)
    800221c8:	03813a83          	ld	s5,56(sp)
    800221cc:	03013b03          	ld	s6,48(sp)
    800221d0:	07010113          	addi	sp,sp,112
    800221d4:	00008067          	ret
    800221d8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800221dc:	000a0513          	mv	a0,s4
    800221e0:	fffff097          	auipc	ra,0xfffff
    800221e4:	3dc080e7          	jalr	988(ra) # 800215bc <_ZdlPv>
    800221e8:	00048513          	mv	a0,s1
    800221ec:	0000a097          	auipc	ra,0xa
    800221f0:	b4c080e7          	jalr	-1204(ra) # 8002bd38 <_Unwind_Resume>

00000000800221f4 <_Z8mod_testv>:
#include "ModTest.hpp"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"

void mod_test() {
    800221f4:	ff010113          	addi	sp,sp,-16
    800221f8:	00113423          	sd	ra,8(sp)
    800221fc:	00813023          	sd	s0,0(sp)
    80022200:	01010413          	addi	s0,sp,16
    int c = getc();
    80022204:	ffffe097          	auipc	ra,0xffffe
    80022208:	47c080e7          	jalr	1148(ra) # 80020680 <_Z4getcv>
    if (c == -1) {
        printString("Prepravljivanje ulaza");
        return;
    }

    printString("\n-------------\n");
    8002220c:	00006517          	auipc	a0,0x6
    80022210:	00c50513          	addi	a0,a0,12 # 80028218 <CONSOLE_STATUS+0x208>
    80022214:	00002097          	auipc	ra,0x2
    80022218:	fbc080e7          	jalr	-68(ra) # 800241d0 <_Z11printStringPKc>
    printString("TEST FINISHED");
    8002221c:	00006517          	auipc	a0,0x6
    80022220:	00c50513          	addi	a0,a0,12 # 80028228 <CONSOLE_STATUS+0x218>
    80022224:	00002097          	auipc	ra,0x2
    80022228:	fac080e7          	jalr	-84(ra) # 800241d0 <_Z11printStringPKc>
    printString("\n-------------\n");
    8002222c:	00006517          	auipc	a0,0x6
    80022230:	fec50513          	addi	a0,a0,-20 # 80028218 <CONSOLE_STATUS+0x208>
    80022234:	00002097          	auipc	ra,0x2
    80022238:	f9c080e7          	jalr	-100(ra) # 800241d0 <_Z11printStringPKc>
}
    8002223c:	00813083          	ld	ra,8(sp)
    80022240:	00013403          	ld	s0,0(sp)
    80022244:	01010113          	addi	sp,sp,16
    80022248:	00008067          	ret

000000008002224c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8002224c:	fe010113          	addi	sp,sp,-32
    80022250:	00113c23          	sd	ra,24(sp)
    80022254:	00813823          	sd	s0,16(sp)
    80022258:	00913423          	sd	s1,8(sp)
    8002225c:	01213023          	sd	s2,0(sp)
    80022260:	02010413          	addi	s0,sp,32
    80022264:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80022268:	00100793          	li	a5,1
    8002226c:	02a7f863          	bgeu	a5,a0,8002229c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80022270:	00a00793          	li	a5,10
    80022274:	02f577b3          	remu	a5,a0,a5
    80022278:	02078e63          	beqz	a5,800222b4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8002227c:	fff48513          	addi	a0,s1,-1
    80022280:	00000097          	auipc	ra,0x0
    80022284:	fcc080e7          	jalr	-52(ra) # 8002224c <_ZL9fibonaccim>
    80022288:	00050913          	mv	s2,a0
    8002228c:	ffe48513          	addi	a0,s1,-2
    80022290:	00000097          	auipc	ra,0x0
    80022294:	fbc080e7          	jalr	-68(ra) # 8002224c <_ZL9fibonaccim>
    80022298:	00a90533          	add	a0,s2,a0
}
    8002229c:	01813083          	ld	ra,24(sp)
    800222a0:	01013403          	ld	s0,16(sp)
    800222a4:	00813483          	ld	s1,8(sp)
    800222a8:	00013903          	ld	s2,0(sp)
    800222ac:	02010113          	addi	sp,sp,32
    800222b0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800222b4:	ffffe097          	auipc	ra,0xffffe
    800222b8:	228080e7          	jalr	552(ra) # 800204dc <_Z15thread_dispatchv>
    800222bc:	fc1ff06f          	j	8002227c <_ZL9fibonaccim+0x30>

00000000800222c0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800222c0:	fe010113          	addi	sp,sp,-32
    800222c4:	00113c23          	sd	ra,24(sp)
    800222c8:	00813823          	sd	s0,16(sp)
    800222cc:	00913423          	sd	s1,8(sp)
    800222d0:	01213023          	sd	s2,0(sp)
    800222d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800222d8:	00000913          	li	s2,0
    800222dc:	0380006f          	j	80022314 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800222e0:	ffffe097          	auipc	ra,0xffffe
    800222e4:	1fc080e7          	jalr	508(ra) # 800204dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800222e8:	00148493          	addi	s1,s1,1
    800222ec:	000027b7          	lui	a5,0x2
    800222f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800222f4:	0097ee63          	bltu	a5,s1,80022310 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800222f8:	00000713          	li	a4,0
    800222fc:	000077b7          	lui	a5,0x7
    80022300:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80022304:	fce7eee3          	bltu	a5,a4,800222e0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80022308:	00170713          	addi	a4,a4,1
    8002230c:	ff1ff06f          	j	800222fc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80022310:	00190913          	addi	s2,s2,1
    80022314:	00900793          	li	a5,9
    80022318:	0527e063          	bltu	a5,s2,80022358 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8002231c:	00006517          	auipc	a0,0x6
    80022320:	f1c50513          	addi	a0,a0,-228 # 80028238 <CONSOLE_STATUS+0x228>
    80022324:	00002097          	auipc	ra,0x2
    80022328:	eac080e7          	jalr	-340(ra) # 800241d0 <_Z11printStringPKc>
    8002232c:	00000613          	li	a2,0
    80022330:	00a00593          	li	a1,10
    80022334:	0009051b          	sext.w	a0,s2
    80022338:	00002097          	auipc	ra,0x2
    8002233c:	048080e7          	jalr	72(ra) # 80024380 <_Z8printIntiii>
    80022340:	00006517          	auipc	a0,0x6
    80022344:	14850513          	addi	a0,a0,328 # 80028488 <CONSOLE_STATUS+0x478>
    80022348:	00002097          	auipc	ra,0x2
    8002234c:	e88080e7          	jalr	-376(ra) # 800241d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80022350:	00000493          	li	s1,0
    80022354:	f99ff06f          	j	800222ec <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80022358:	00006517          	auipc	a0,0x6
    8002235c:	ee850513          	addi	a0,a0,-280 # 80028240 <CONSOLE_STATUS+0x230>
    80022360:	00002097          	auipc	ra,0x2
    80022364:	e70080e7          	jalr	-400(ra) # 800241d0 <_Z11printStringPKc>
    finishedA = true;
    80022368:	00100793          	li	a5,1
    8002236c:	00009717          	auipc	a4,0x9
    80022370:	8cf70223          	sb	a5,-1852(a4) # 8002ac30 <_ZL9finishedA>
}
    80022374:	01813083          	ld	ra,24(sp)
    80022378:	01013403          	ld	s0,16(sp)
    8002237c:	00813483          	ld	s1,8(sp)
    80022380:	00013903          	ld	s2,0(sp)
    80022384:	02010113          	addi	sp,sp,32
    80022388:	00008067          	ret

000000008002238c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8002238c:	fe010113          	addi	sp,sp,-32
    80022390:	00113c23          	sd	ra,24(sp)
    80022394:	00813823          	sd	s0,16(sp)
    80022398:	00913423          	sd	s1,8(sp)
    8002239c:	01213023          	sd	s2,0(sp)
    800223a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800223a4:	00000913          	li	s2,0
    800223a8:	0380006f          	j	800223e0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800223ac:	ffffe097          	auipc	ra,0xffffe
    800223b0:	130080e7          	jalr	304(ra) # 800204dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800223b4:	00148493          	addi	s1,s1,1
    800223b8:	000027b7          	lui	a5,0x2
    800223bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800223c0:	0097ee63          	bltu	a5,s1,800223dc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800223c4:	00000713          	li	a4,0
    800223c8:	000077b7          	lui	a5,0x7
    800223cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800223d0:	fce7eee3          	bltu	a5,a4,800223ac <_ZN7WorkerB11workerBodyBEPv+0x20>
    800223d4:	00170713          	addi	a4,a4,1
    800223d8:	ff1ff06f          	j	800223c8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800223dc:	00190913          	addi	s2,s2,1
    800223e0:	00f00793          	li	a5,15
    800223e4:	0527e063          	bltu	a5,s2,80022424 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800223e8:	00006517          	auipc	a0,0x6
    800223ec:	e6850513          	addi	a0,a0,-408 # 80028250 <CONSOLE_STATUS+0x240>
    800223f0:	00002097          	auipc	ra,0x2
    800223f4:	de0080e7          	jalr	-544(ra) # 800241d0 <_Z11printStringPKc>
    800223f8:	00000613          	li	a2,0
    800223fc:	00a00593          	li	a1,10
    80022400:	0009051b          	sext.w	a0,s2
    80022404:	00002097          	auipc	ra,0x2
    80022408:	f7c080e7          	jalr	-132(ra) # 80024380 <_Z8printIntiii>
    8002240c:	00006517          	auipc	a0,0x6
    80022410:	07c50513          	addi	a0,a0,124 # 80028488 <CONSOLE_STATUS+0x478>
    80022414:	00002097          	auipc	ra,0x2
    80022418:	dbc080e7          	jalr	-580(ra) # 800241d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8002241c:	00000493          	li	s1,0
    80022420:	f99ff06f          	j	800223b8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80022424:	00006517          	auipc	a0,0x6
    80022428:	e3450513          	addi	a0,a0,-460 # 80028258 <CONSOLE_STATUS+0x248>
    8002242c:	00002097          	auipc	ra,0x2
    80022430:	da4080e7          	jalr	-604(ra) # 800241d0 <_Z11printStringPKc>
    finishedB = true;
    80022434:	00100793          	li	a5,1
    80022438:	00008717          	auipc	a4,0x8
    8002243c:	7ef70ca3          	sb	a5,2041(a4) # 8002ac31 <_ZL9finishedB>
    thread_dispatch();
    80022440:	ffffe097          	auipc	ra,0xffffe
    80022444:	09c080e7          	jalr	156(ra) # 800204dc <_Z15thread_dispatchv>
}
    80022448:	01813083          	ld	ra,24(sp)
    8002244c:	01013403          	ld	s0,16(sp)
    80022450:	00813483          	ld	s1,8(sp)
    80022454:	00013903          	ld	s2,0(sp)
    80022458:	02010113          	addi	sp,sp,32
    8002245c:	00008067          	ret

0000000080022460 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80022460:	fe010113          	addi	sp,sp,-32
    80022464:	00113c23          	sd	ra,24(sp)
    80022468:	00813823          	sd	s0,16(sp)
    8002246c:	00913423          	sd	s1,8(sp)
    80022470:	01213023          	sd	s2,0(sp)
    80022474:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80022478:	00000493          	li	s1,0
    8002247c:	0400006f          	j	800224bc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80022480:	00006517          	auipc	a0,0x6
    80022484:	de850513          	addi	a0,a0,-536 # 80028268 <CONSOLE_STATUS+0x258>
    80022488:	00002097          	auipc	ra,0x2
    8002248c:	d48080e7          	jalr	-696(ra) # 800241d0 <_Z11printStringPKc>
    80022490:	00000613          	li	a2,0
    80022494:	00a00593          	li	a1,10
    80022498:	00048513          	mv	a0,s1
    8002249c:	00002097          	auipc	ra,0x2
    800224a0:	ee4080e7          	jalr	-284(ra) # 80024380 <_Z8printIntiii>
    800224a4:	00006517          	auipc	a0,0x6
    800224a8:	fe450513          	addi	a0,a0,-28 # 80028488 <CONSOLE_STATUS+0x478>
    800224ac:	00002097          	auipc	ra,0x2
    800224b0:	d24080e7          	jalr	-732(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800224b4:	0014849b          	addiw	s1,s1,1
    800224b8:	0ff4f493          	andi	s1,s1,255
    800224bc:	00200793          	li	a5,2
    800224c0:	fc97f0e3          	bgeu	a5,s1,80022480 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800224c4:	00006517          	auipc	a0,0x6
    800224c8:	dac50513          	addi	a0,a0,-596 # 80028270 <CONSOLE_STATUS+0x260>
    800224cc:	00002097          	auipc	ra,0x2
    800224d0:	d04080e7          	jalr	-764(ra) # 800241d0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800224d4:	00700313          	li	t1,7
    thread_dispatch();
    800224d8:	ffffe097          	auipc	ra,0xffffe
    800224dc:	004080e7          	jalr	4(ra) # 800204dc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800224e0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800224e4:	00006517          	auipc	a0,0x6
    800224e8:	d9c50513          	addi	a0,a0,-612 # 80028280 <CONSOLE_STATUS+0x270>
    800224ec:	00002097          	auipc	ra,0x2
    800224f0:	ce4080e7          	jalr	-796(ra) # 800241d0 <_Z11printStringPKc>
    800224f4:	00000613          	li	a2,0
    800224f8:	00a00593          	li	a1,10
    800224fc:	0009051b          	sext.w	a0,s2
    80022500:	00002097          	auipc	ra,0x2
    80022504:	e80080e7          	jalr	-384(ra) # 80024380 <_Z8printIntiii>
    80022508:	00006517          	auipc	a0,0x6
    8002250c:	f8050513          	addi	a0,a0,-128 # 80028488 <CONSOLE_STATUS+0x478>
    80022510:	00002097          	auipc	ra,0x2
    80022514:	cc0080e7          	jalr	-832(ra) # 800241d0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80022518:	00c00513          	li	a0,12
    8002251c:	00000097          	auipc	ra,0x0
    80022520:	d30080e7          	jalr	-720(ra) # 8002224c <_ZL9fibonaccim>
    80022524:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80022528:	00006517          	auipc	a0,0x6
    8002252c:	d6050513          	addi	a0,a0,-672 # 80028288 <CONSOLE_STATUS+0x278>
    80022530:	00002097          	auipc	ra,0x2
    80022534:	ca0080e7          	jalr	-864(ra) # 800241d0 <_Z11printStringPKc>
    80022538:	00000613          	li	a2,0
    8002253c:	00a00593          	li	a1,10
    80022540:	0009051b          	sext.w	a0,s2
    80022544:	00002097          	auipc	ra,0x2
    80022548:	e3c080e7          	jalr	-452(ra) # 80024380 <_Z8printIntiii>
    8002254c:	00006517          	auipc	a0,0x6
    80022550:	f3c50513          	addi	a0,a0,-196 # 80028488 <CONSOLE_STATUS+0x478>
    80022554:	00002097          	auipc	ra,0x2
    80022558:	c7c080e7          	jalr	-900(ra) # 800241d0 <_Z11printStringPKc>
    8002255c:	0400006f          	j	8002259c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80022560:	00006517          	auipc	a0,0x6
    80022564:	d0850513          	addi	a0,a0,-760 # 80028268 <CONSOLE_STATUS+0x258>
    80022568:	00002097          	auipc	ra,0x2
    8002256c:	c68080e7          	jalr	-920(ra) # 800241d0 <_Z11printStringPKc>
    80022570:	00000613          	li	a2,0
    80022574:	00a00593          	li	a1,10
    80022578:	00048513          	mv	a0,s1
    8002257c:	00002097          	auipc	ra,0x2
    80022580:	e04080e7          	jalr	-508(ra) # 80024380 <_Z8printIntiii>
    80022584:	00006517          	auipc	a0,0x6
    80022588:	f0450513          	addi	a0,a0,-252 # 80028488 <CONSOLE_STATUS+0x478>
    8002258c:	00002097          	auipc	ra,0x2
    80022590:	c44080e7          	jalr	-956(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80022594:	0014849b          	addiw	s1,s1,1
    80022598:	0ff4f493          	andi	s1,s1,255
    8002259c:	00500793          	li	a5,5
    800225a0:	fc97f0e3          	bgeu	a5,s1,80022560 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800225a4:	00006517          	auipc	a0,0x6
    800225a8:	c9c50513          	addi	a0,a0,-868 # 80028240 <CONSOLE_STATUS+0x230>
    800225ac:	00002097          	auipc	ra,0x2
    800225b0:	c24080e7          	jalr	-988(ra) # 800241d0 <_Z11printStringPKc>
    finishedC = true;
    800225b4:	00100793          	li	a5,1
    800225b8:	00008717          	auipc	a4,0x8
    800225bc:	66f70d23          	sb	a5,1658(a4) # 8002ac32 <_ZL9finishedC>
    thread_dispatch();
    800225c0:	ffffe097          	auipc	ra,0xffffe
    800225c4:	f1c080e7          	jalr	-228(ra) # 800204dc <_Z15thread_dispatchv>
}
    800225c8:	01813083          	ld	ra,24(sp)
    800225cc:	01013403          	ld	s0,16(sp)
    800225d0:	00813483          	ld	s1,8(sp)
    800225d4:	00013903          	ld	s2,0(sp)
    800225d8:	02010113          	addi	sp,sp,32
    800225dc:	00008067          	ret

00000000800225e0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800225e0:	fe010113          	addi	sp,sp,-32
    800225e4:	00113c23          	sd	ra,24(sp)
    800225e8:	00813823          	sd	s0,16(sp)
    800225ec:	00913423          	sd	s1,8(sp)
    800225f0:	01213023          	sd	s2,0(sp)
    800225f4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800225f8:	00a00493          	li	s1,10
    800225fc:	0400006f          	j	8002263c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80022600:	00006517          	auipc	a0,0x6
    80022604:	c9850513          	addi	a0,a0,-872 # 80028298 <CONSOLE_STATUS+0x288>
    80022608:	00002097          	auipc	ra,0x2
    8002260c:	bc8080e7          	jalr	-1080(ra) # 800241d0 <_Z11printStringPKc>
    80022610:	00000613          	li	a2,0
    80022614:	00a00593          	li	a1,10
    80022618:	00048513          	mv	a0,s1
    8002261c:	00002097          	auipc	ra,0x2
    80022620:	d64080e7          	jalr	-668(ra) # 80024380 <_Z8printIntiii>
    80022624:	00006517          	auipc	a0,0x6
    80022628:	e6450513          	addi	a0,a0,-412 # 80028488 <CONSOLE_STATUS+0x478>
    8002262c:	00002097          	auipc	ra,0x2
    80022630:	ba4080e7          	jalr	-1116(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80022634:	0014849b          	addiw	s1,s1,1
    80022638:	0ff4f493          	andi	s1,s1,255
    8002263c:	00c00793          	li	a5,12
    80022640:	fc97f0e3          	bgeu	a5,s1,80022600 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80022644:	00006517          	auipc	a0,0x6
    80022648:	c5c50513          	addi	a0,a0,-932 # 800282a0 <CONSOLE_STATUS+0x290>
    8002264c:	00002097          	auipc	ra,0x2
    80022650:	b84080e7          	jalr	-1148(ra) # 800241d0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80022654:	00500313          	li	t1,5
    thread_dispatch();
    80022658:	ffffe097          	auipc	ra,0xffffe
    8002265c:	e84080e7          	jalr	-380(ra) # 800204dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80022660:	01000513          	li	a0,16
    80022664:	00000097          	auipc	ra,0x0
    80022668:	be8080e7          	jalr	-1048(ra) # 8002224c <_ZL9fibonaccim>
    8002266c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80022670:	00006517          	auipc	a0,0x6
    80022674:	c4050513          	addi	a0,a0,-960 # 800282b0 <CONSOLE_STATUS+0x2a0>
    80022678:	00002097          	auipc	ra,0x2
    8002267c:	b58080e7          	jalr	-1192(ra) # 800241d0 <_Z11printStringPKc>
    80022680:	00000613          	li	a2,0
    80022684:	00a00593          	li	a1,10
    80022688:	0009051b          	sext.w	a0,s2
    8002268c:	00002097          	auipc	ra,0x2
    80022690:	cf4080e7          	jalr	-780(ra) # 80024380 <_Z8printIntiii>
    80022694:	00006517          	auipc	a0,0x6
    80022698:	df450513          	addi	a0,a0,-524 # 80028488 <CONSOLE_STATUS+0x478>
    8002269c:	00002097          	auipc	ra,0x2
    800226a0:	b34080e7          	jalr	-1228(ra) # 800241d0 <_Z11printStringPKc>
    800226a4:	0400006f          	j	800226e4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800226a8:	00006517          	auipc	a0,0x6
    800226ac:	bf050513          	addi	a0,a0,-1040 # 80028298 <CONSOLE_STATUS+0x288>
    800226b0:	00002097          	auipc	ra,0x2
    800226b4:	b20080e7          	jalr	-1248(ra) # 800241d0 <_Z11printStringPKc>
    800226b8:	00000613          	li	a2,0
    800226bc:	00a00593          	li	a1,10
    800226c0:	00048513          	mv	a0,s1
    800226c4:	00002097          	auipc	ra,0x2
    800226c8:	cbc080e7          	jalr	-836(ra) # 80024380 <_Z8printIntiii>
    800226cc:	00006517          	auipc	a0,0x6
    800226d0:	dbc50513          	addi	a0,a0,-580 # 80028488 <CONSOLE_STATUS+0x478>
    800226d4:	00002097          	auipc	ra,0x2
    800226d8:	afc080e7          	jalr	-1284(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800226dc:	0014849b          	addiw	s1,s1,1
    800226e0:	0ff4f493          	andi	s1,s1,255
    800226e4:	00f00793          	li	a5,15
    800226e8:	fc97f0e3          	bgeu	a5,s1,800226a8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800226ec:	00006517          	auipc	a0,0x6
    800226f0:	bd450513          	addi	a0,a0,-1068 # 800282c0 <CONSOLE_STATUS+0x2b0>
    800226f4:	00002097          	auipc	ra,0x2
    800226f8:	adc080e7          	jalr	-1316(ra) # 800241d0 <_Z11printStringPKc>
    finishedD = true;
    800226fc:	00100793          	li	a5,1
    80022700:	00008717          	auipc	a4,0x8
    80022704:	52f709a3          	sb	a5,1331(a4) # 8002ac33 <_ZL9finishedD>
    thread_dispatch();
    80022708:	ffffe097          	auipc	ra,0xffffe
    8002270c:	dd4080e7          	jalr	-556(ra) # 800204dc <_Z15thread_dispatchv>
}
    80022710:	01813083          	ld	ra,24(sp)
    80022714:	01013403          	ld	s0,16(sp)
    80022718:	00813483          	ld	s1,8(sp)
    8002271c:	00013903          	ld	s2,0(sp)
    80022720:	02010113          	addi	sp,sp,32
    80022724:	00008067          	ret

0000000080022728 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80022728:	fc010113          	addi	sp,sp,-64
    8002272c:	02113c23          	sd	ra,56(sp)
    80022730:	02813823          	sd	s0,48(sp)
    80022734:	02913423          	sd	s1,40(sp)
    80022738:	03213023          	sd	s2,32(sp)
    8002273c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80022740:	02000513          	li	a0,32
    80022744:	fffff097          	auipc	ra,0xfffff
    80022748:	e50080e7          	jalr	-432(ra) # 80021594 <_Znwm>
    8002274c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80022750:	fffff097          	auipc	ra,0xfffff
    80022754:	f2c080e7          	jalr	-212(ra) # 8002167c <_ZN6ThreadC1Ev>
    80022758:	00008797          	auipc	a5,0x8
    8002275c:	fe878793          	addi	a5,a5,-24 # 8002a740 <_ZTV7WorkerA+0x10>
    80022760:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80022764:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80022768:	00006517          	auipc	a0,0x6
    8002276c:	b6850513          	addi	a0,a0,-1176 # 800282d0 <CONSOLE_STATUS+0x2c0>
    80022770:	00002097          	auipc	ra,0x2
    80022774:	a60080e7          	jalr	-1440(ra) # 800241d0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80022778:	02000513          	li	a0,32
    8002277c:	fffff097          	auipc	ra,0xfffff
    80022780:	e18080e7          	jalr	-488(ra) # 80021594 <_Znwm>
    80022784:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80022788:	fffff097          	auipc	ra,0xfffff
    8002278c:	ef4080e7          	jalr	-268(ra) # 8002167c <_ZN6ThreadC1Ev>
    80022790:	00008797          	auipc	a5,0x8
    80022794:	fd878793          	addi	a5,a5,-40 # 8002a768 <_ZTV7WorkerB+0x10>
    80022798:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8002279c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800227a0:	00006517          	auipc	a0,0x6
    800227a4:	b4850513          	addi	a0,a0,-1208 # 800282e8 <CONSOLE_STATUS+0x2d8>
    800227a8:	00002097          	auipc	ra,0x2
    800227ac:	a28080e7          	jalr	-1496(ra) # 800241d0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800227b0:	02000513          	li	a0,32
    800227b4:	fffff097          	auipc	ra,0xfffff
    800227b8:	de0080e7          	jalr	-544(ra) # 80021594 <_Znwm>
    800227bc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800227c0:	fffff097          	auipc	ra,0xfffff
    800227c4:	ebc080e7          	jalr	-324(ra) # 8002167c <_ZN6ThreadC1Ev>
    800227c8:	00008797          	auipc	a5,0x8
    800227cc:	fc878793          	addi	a5,a5,-56 # 8002a790 <_ZTV7WorkerC+0x10>
    800227d0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800227d4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800227d8:	00006517          	auipc	a0,0x6
    800227dc:	b2850513          	addi	a0,a0,-1240 # 80028300 <CONSOLE_STATUS+0x2f0>
    800227e0:	00002097          	auipc	ra,0x2
    800227e4:	9f0080e7          	jalr	-1552(ra) # 800241d0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800227e8:	02000513          	li	a0,32
    800227ec:	fffff097          	auipc	ra,0xfffff
    800227f0:	da8080e7          	jalr	-600(ra) # 80021594 <_Znwm>
    800227f4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800227f8:	fffff097          	auipc	ra,0xfffff
    800227fc:	e84080e7          	jalr	-380(ra) # 8002167c <_ZN6ThreadC1Ev>
    80022800:	00008797          	auipc	a5,0x8
    80022804:	fb878793          	addi	a5,a5,-72 # 8002a7b8 <_ZTV7WorkerD+0x10>
    80022808:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8002280c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80022810:	00006517          	auipc	a0,0x6
    80022814:	b0850513          	addi	a0,a0,-1272 # 80028318 <CONSOLE_STATUS+0x308>
    80022818:	00002097          	auipc	ra,0x2
    8002281c:	9b8080e7          	jalr	-1608(ra) # 800241d0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80022820:	00000493          	li	s1,0
    80022824:	00300793          	li	a5,3
    80022828:	0297c663          	blt	a5,s1,80022854 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8002282c:	00349793          	slli	a5,s1,0x3
    80022830:	fe040713          	addi	a4,s0,-32
    80022834:	00f707b3          	add	a5,a4,a5
    80022838:	fe07b503          	ld	a0,-32(a5)
    8002283c:	fffff097          	auipc	ra,0xfffff
    80022840:	e70080e7          	jalr	-400(ra) # 800216ac <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80022844:	0014849b          	addiw	s1,s1,1
    80022848:	fddff06f          	j	80022824 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8002284c:	fffff097          	auipc	ra,0xfffff
    80022850:	eb4080e7          	jalr	-332(ra) # 80021700 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80022854:	00008797          	auipc	a5,0x8
    80022858:	3dc7c783          	lbu	a5,988(a5) # 8002ac30 <_ZL9finishedA>
    8002285c:	fe0788e3          	beqz	a5,8002284c <_Z20Threads_CPP_API_testv+0x124>
    80022860:	00008797          	auipc	a5,0x8
    80022864:	3d17c783          	lbu	a5,977(a5) # 8002ac31 <_ZL9finishedB>
    80022868:	fe0782e3          	beqz	a5,8002284c <_Z20Threads_CPP_API_testv+0x124>
    8002286c:	00008797          	auipc	a5,0x8
    80022870:	3c67c783          	lbu	a5,966(a5) # 8002ac32 <_ZL9finishedC>
    80022874:	fc078ce3          	beqz	a5,8002284c <_Z20Threads_CPP_API_testv+0x124>
    80022878:	00008797          	auipc	a5,0x8
    8002287c:	3bb7c783          	lbu	a5,955(a5) # 8002ac33 <_ZL9finishedD>
    80022880:	fc0786e3          	beqz	a5,8002284c <_Z20Threads_CPP_API_testv+0x124>
    80022884:	fc040493          	addi	s1,s0,-64
    80022888:	0080006f          	j	80022890 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8002288c:	00848493          	addi	s1,s1,8
    80022890:	fe040793          	addi	a5,s0,-32
    80022894:	08f48663          	beq	s1,a5,80022920 <_Z20Threads_CPP_API_testv+0x1f8>
    80022898:	0004b503          	ld	a0,0(s1)
    8002289c:	fe0508e3          	beqz	a0,8002288c <_Z20Threads_CPP_API_testv+0x164>
    800228a0:	00053783          	ld	a5,0(a0)
    800228a4:	0087b783          	ld	a5,8(a5)
    800228a8:	000780e7          	jalr	a5
    800228ac:	fe1ff06f          	j	8002288c <_Z20Threads_CPP_API_testv+0x164>
    800228b0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800228b4:	00048513          	mv	a0,s1
    800228b8:	fffff097          	auipc	ra,0xfffff
    800228bc:	d04080e7          	jalr	-764(ra) # 800215bc <_ZdlPv>
    800228c0:	00090513          	mv	a0,s2
    800228c4:	00009097          	auipc	ra,0x9
    800228c8:	474080e7          	jalr	1140(ra) # 8002bd38 <_Unwind_Resume>
    800228cc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800228d0:	00048513          	mv	a0,s1
    800228d4:	fffff097          	auipc	ra,0xfffff
    800228d8:	ce8080e7          	jalr	-792(ra) # 800215bc <_ZdlPv>
    800228dc:	00090513          	mv	a0,s2
    800228e0:	00009097          	auipc	ra,0x9
    800228e4:	458080e7          	jalr	1112(ra) # 8002bd38 <_Unwind_Resume>
    800228e8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800228ec:	00048513          	mv	a0,s1
    800228f0:	fffff097          	auipc	ra,0xfffff
    800228f4:	ccc080e7          	jalr	-820(ra) # 800215bc <_ZdlPv>
    800228f8:	00090513          	mv	a0,s2
    800228fc:	00009097          	auipc	ra,0x9
    80022900:	43c080e7          	jalr	1084(ra) # 8002bd38 <_Unwind_Resume>
    80022904:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80022908:	00048513          	mv	a0,s1
    8002290c:	fffff097          	auipc	ra,0xfffff
    80022910:	cb0080e7          	jalr	-848(ra) # 800215bc <_ZdlPv>
    80022914:	00090513          	mv	a0,s2
    80022918:	00009097          	auipc	ra,0x9
    8002291c:	420080e7          	jalr	1056(ra) # 8002bd38 <_Unwind_Resume>
}
    80022920:	03813083          	ld	ra,56(sp)
    80022924:	03013403          	ld	s0,48(sp)
    80022928:	02813483          	ld	s1,40(sp)
    8002292c:	02013903          	ld	s2,32(sp)
    80022930:	04010113          	addi	sp,sp,64
    80022934:	00008067          	ret

0000000080022938 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80022938:	ff010113          	addi	sp,sp,-16
    8002293c:	00113423          	sd	ra,8(sp)
    80022940:	00813023          	sd	s0,0(sp)
    80022944:	01010413          	addi	s0,sp,16
    80022948:	00008797          	auipc	a5,0x8
    8002294c:	df878793          	addi	a5,a5,-520 # 8002a740 <_ZTV7WorkerA+0x10>
    80022950:	00f53023          	sd	a5,0(a0)
    80022954:	fffff097          	auipc	ra,0xfffff
    80022958:	b6c080e7          	jalr	-1172(ra) # 800214c0 <_ZN6ThreadD1Ev>
    8002295c:	00813083          	ld	ra,8(sp)
    80022960:	00013403          	ld	s0,0(sp)
    80022964:	01010113          	addi	sp,sp,16
    80022968:	00008067          	ret

000000008002296c <_ZN7WorkerAD0Ev>:
    8002296c:	fe010113          	addi	sp,sp,-32
    80022970:	00113c23          	sd	ra,24(sp)
    80022974:	00813823          	sd	s0,16(sp)
    80022978:	00913423          	sd	s1,8(sp)
    8002297c:	02010413          	addi	s0,sp,32
    80022980:	00050493          	mv	s1,a0
    80022984:	00008797          	auipc	a5,0x8
    80022988:	dbc78793          	addi	a5,a5,-580 # 8002a740 <_ZTV7WorkerA+0x10>
    8002298c:	00f53023          	sd	a5,0(a0)
    80022990:	fffff097          	auipc	ra,0xfffff
    80022994:	b30080e7          	jalr	-1232(ra) # 800214c0 <_ZN6ThreadD1Ev>
    80022998:	00048513          	mv	a0,s1
    8002299c:	fffff097          	auipc	ra,0xfffff
    800229a0:	c20080e7          	jalr	-992(ra) # 800215bc <_ZdlPv>
    800229a4:	01813083          	ld	ra,24(sp)
    800229a8:	01013403          	ld	s0,16(sp)
    800229ac:	00813483          	ld	s1,8(sp)
    800229b0:	02010113          	addi	sp,sp,32
    800229b4:	00008067          	ret

00000000800229b8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800229b8:	ff010113          	addi	sp,sp,-16
    800229bc:	00113423          	sd	ra,8(sp)
    800229c0:	00813023          	sd	s0,0(sp)
    800229c4:	01010413          	addi	s0,sp,16
    800229c8:	00008797          	auipc	a5,0x8
    800229cc:	da078793          	addi	a5,a5,-608 # 8002a768 <_ZTV7WorkerB+0x10>
    800229d0:	00f53023          	sd	a5,0(a0)
    800229d4:	fffff097          	auipc	ra,0xfffff
    800229d8:	aec080e7          	jalr	-1300(ra) # 800214c0 <_ZN6ThreadD1Ev>
    800229dc:	00813083          	ld	ra,8(sp)
    800229e0:	00013403          	ld	s0,0(sp)
    800229e4:	01010113          	addi	sp,sp,16
    800229e8:	00008067          	ret

00000000800229ec <_ZN7WorkerBD0Ev>:
    800229ec:	fe010113          	addi	sp,sp,-32
    800229f0:	00113c23          	sd	ra,24(sp)
    800229f4:	00813823          	sd	s0,16(sp)
    800229f8:	00913423          	sd	s1,8(sp)
    800229fc:	02010413          	addi	s0,sp,32
    80022a00:	00050493          	mv	s1,a0
    80022a04:	00008797          	auipc	a5,0x8
    80022a08:	d6478793          	addi	a5,a5,-668 # 8002a768 <_ZTV7WorkerB+0x10>
    80022a0c:	00f53023          	sd	a5,0(a0)
    80022a10:	fffff097          	auipc	ra,0xfffff
    80022a14:	ab0080e7          	jalr	-1360(ra) # 800214c0 <_ZN6ThreadD1Ev>
    80022a18:	00048513          	mv	a0,s1
    80022a1c:	fffff097          	auipc	ra,0xfffff
    80022a20:	ba0080e7          	jalr	-1120(ra) # 800215bc <_ZdlPv>
    80022a24:	01813083          	ld	ra,24(sp)
    80022a28:	01013403          	ld	s0,16(sp)
    80022a2c:	00813483          	ld	s1,8(sp)
    80022a30:	02010113          	addi	sp,sp,32
    80022a34:	00008067          	ret

0000000080022a38 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80022a38:	ff010113          	addi	sp,sp,-16
    80022a3c:	00113423          	sd	ra,8(sp)
    80022a40:	00813023          	sd	s0,0(sp)
    80022a44:	01010413          	addi	s0,sp,16
    80022a48:	00008797          	auipc	a5,0x8
    80022a4c:	d4878793          	addi	a5,a5,-696 # 8002a790 <_ZTV7WorkerC+0x10>
    80022a50:	00f53023          	sd	a5,0(a0)
    80022a54:	fffff097          	auipc	ra,0xfffff
    80022a58:	a6c080e7          	jalr	-1428(ra) # 800214c0 <_ZN6ThreadD1Ev>
    80022a5c:	00813083          	ld	ra,8(sp)
    80022a60:	00013403          	ld	s0,0(sp)
    80022a64:	01010113          	addi	sp,sp,16
    80022a68:	00008067          	ret

0000000080022a6c <_ZN7WorkerCD0Ev>:
    80022a6c:	fe010113          	addi	sp,sp,-32
    80022a70:	00113c23          	sd	ra,24(sp)
    80022a74:	00813823          	sd	s0,16(sp)
    80022a78:	00913423          	sd	s1,8(sp)
    80022a7c:	02010413          	addi	s0,sp,32
    80022a80:	00050493          	mv	s1,a0
    80022a84:	00008797          	auipc	a5,0x8
    80022a88:	d0c78793          	addi	a5,a5,-756 # 8002a790 <_ZTV7WorkerC+0x10>
    80022a8c:	00f53023          	sd	a5,0(a0)
    80022a90:	fffff097          	auipc	ra,0xfffff
    80022a94:	a30080e7          	jalr	-1488(ra) # 800214c0 <_ZN6ThreadD1Ev>
    80022a98:	00048513          	mv	a0,s1
    80022a9c:	fffff097          	auipc	ra,0xfffff
    80022aa0:	b20080e7          	jalr	-1248(ra) # 800215bc <_ZdlPv>
    80022aa4:	01813083          	ld	ra,24(sp)
    80022aa8:	01013403          	ld	s0,16(sp)
    80022aac:	00813483          	ld	s1,8(sp)
    80022ab0:	02010113          	addi	sp,sp,32
    80022ab4:	00008067          	ret

0000000080022ab8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80022ab8:	ff010113          	addi	sp,sp,-16
    80022abc:	00113423          	sd	ra,8(sp)
    80022ac0:	00813023          	sd	s0,0(sp)
    80022ac4:	01010413          	addi	s0,sp,16
    80022ac8:	00008797          	auipc	a5,0x8
    80022acc:	cf078793          	addi	a5,a5,-784 # 8002a7b8 <_ZTV7WorkerD+0x10>
    80022ad0:	00f53023          	sd	a5,0(a0)
    80022ad4:	fffff097          	auipc	ra,0xfffff
    80022ad8:	9ec080e7          	jalr	-1556(ra) # 800214c0 <_ZN6ThreadD1Ev>
    80022adc:	00813083          	ld	ra,8(sp)
    80022ae0:	00013403          	ld	s0,0(sp)
    80022ae4:	01010113          	addi	sp,sp,16
    80022ae8:	00008067          	ret

0000000080022aec <_ZN7WorkerDD0Ev>:
    80022aec:	fe010113          	addi	sp,sp,-32
    80022af0:	00113c23          	sd	ra,24(sp)
    80022af4:	00813823          	sd	s0,16(sp)
    80022af8:	00913423          	sd	s1,8(sp)
    80022afc:	02010413          	addi	s0,sp,32
    80022b00:	00050493          	mv	s1,a0
    80022b04:	00008797          	auipc	a5,0x8
    80022b08:	cb478793          	addi	a5,a5,-844 # 8002a7b8 <_ZTV7WorkerD+0x10>
    80022b0c:	00f53023          	sd	a5,0(a0)
    80022b10:	fffff097          	auipc	ra,0xfffff
    80022b14:	9b0080e7          	jalr	-1616(ra) # 800214c0 <_ZN6ThreadD1Ev>
    80022b18:	00048513          	mv	a0,s1
    80022b1c:	fffff097          	auipc	ra,0xfffff
    80022b20:	aa0080e7          	jalr	-1376(ra) # 800215bc <_ZdlPv>
    80022b24:	01813083          	ld	ra,24(sp)
    80022b28:	01013403          	ld	s0,16(sp)
    80022b2c:	00813483          	ld	s1,8(sp)
    80022b30:	02010113          	addi	sp,sp,32
    80022b34:	00008067          	ret

0000000080022b38 <_ZN7WorkerA3runEv>:
    void run() override {
    80022b38:	ff010113          	addi	sp,sp,-16
    80022b3c:	00113423          	sd	ra,8(sp)
    80022b40:	00813023          	sd	s0,0(sp)
    80022b44:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80022b48:	00000593          	li	a1,0
    80022b4c:	fffff097          	auipc	ra,0xfffff
    80022b50:	774080e7          	jalr	1908(ra) # 800222c0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80022b54:	00813083          	ld	ra,8(sp)
    80022b58:	00013403          	ld	s0,0(sp)
    80022b5c:	01010113          	addi	sp,sp,16
    80022b60:	00008067          	ret

0000000080022b64 <_ZN7WorkerB3runEv>:
    void run() override {
    80022b64:	ff010113          	addi	sp,sp,-16
    80022b68:	00113423          	sd	ra,8(sp)
    80022b6c:	00813023          	sd	s0,0(sp)
    80022b70:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80022b74:	00000593          	li	a1,0
    80022b78:	00000097          	auipc	ra,0x0
    80022b7c:	814080e7          	jalr	-2028(ra) # 8002238c <_ZN7WorkerB11workerBodyBEPv>
    }
    80022b80:	00813083          	ld	ra,8(sp)
    80022b84:	00013403          	ld	s0,0(sp)
    80022b88:	01010113          	addi	sp,sp,16
    80022b8c:	00008067          	ret

0000000080022b90 <_ZN7WorkerC3runEv>:
    void run() override {
    80022b90:	ff010113          	addi	sp,sp,-16
    80022b94:	00113423          	sd	ra,8(sp)
    80022b98:	00813023          	sd	s0,0(sp)
    80022b9c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80022ba0:	00000593          	li	a1,0
    80022ba4:	00000097          	auipc	ra,0x0
    80022ba8:	8bc080e7          	jalr	-1860(ra) # 80022460 <_ZN7WorkerC11workerBodyCEPv>
    }
    80022bac:	00813083          	ld	ra,8(sp)
    80022bb0:	00013403          	ld	s0,0(sp)
    80022bb4:	01010113          	addi	sp,sp,16
    80022bb8:	00008067          	ret

0000000080022bbc <_ZN7WorkerD3runEv>:
    void run() override {
    80022bbc:	ff010113          	addi	sp,sp,-16
    80022bc0:	00113423          	sd	ra,8(sp)
    80022bc4:	00813023          	sd	s0,0(sp)
    80022bc8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80022bcc:	00000593          	li	a1,0
    80022bd0:	00000097          	auipc	ra,0x0
    80022bd4:	a10080e7          	jalr	-1520(ra) # 800225e0 <_ZN7WorkerD11workerBodyDEPv>
    }
    80022bd8:	00813083          	ld	ra,8(sp)
    80022bdc:	00013403          	ld	s0,0(sp)
    80022be0:	01010113          	addi	sp,sp,16
    80022be4:	00008067          	ret

0000000080022be8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80022be8:	f8010113          	addi	sp,sp,-128
    80022bec:	06113c23          	sd	ra,120(sp)
    80022bf0:	06813823          	sd	s0,112(sp)
    80022bf4:	06913423          	sd	s1,104(sp)
    80022bf8:	07213023          	sd	s2,96(sp)
    80022bfc:	05313c23          	sd	s3,88(sp)
    80022c00:	05413823          	sd	s4,80(sp)
    80022c04:	05513423          	sd	s5,72(sp)
    80022c08:	05613023          	sd	s6,64(sp)
    80022c0c:	03713c23          	sd	s7,56(sp)
    80022c10:	03813823          	sd	s8,48(sp)
    80022c14:	03913423          	sd	s9,40(sp)
    80022c18:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80022c1c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80022c20:	00005517          	auipc	a0,0x5
    80022c24:	51050513          	addi	a0,a0,1296 # 80028130 <CONSOLE_STATUS+0x120>
    80022c28:	00001097          	auipc	ra,0x1
    80022c2c:	5a8080e7          	jalr	1448(ra) # 800241d0 <_Z11printStringPKc>
    getString(input, 30);
    80022c30:	01e00593          	li	a1,30
    80022c34:	f8040493          	addi	s1,s0,-128
    80022c38:	00048513          	mv	a0,s1
    80022c3c:	00001097          	auipc	ra,0x1
    80022c40:	61c080e7          	jalr	1564(ra) # 80024258 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80022c44:	00048513          	mv	a0,s1
    80022c48:	00001097          	auipc	ra,0x1
    80022c4c:	6e8080e7          	jalr	1768(ra) # 80024330 <_Z11stringToIntPKc>
    80022c50:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80022c54:	00005517          	auipc	a0,0x5
    80022c58:	4fc50513          	addi	a0,a0,1276 # 80028150 <CONSOLE_STATUS+0x140>
    80022c5c:	00001097          	auipc	ra,0x1
    80022c60:	574080e7          	jalr	1396(ra) # 800241d0 <_Z11printStringPKc>
    getString(input, 30);
    80022c64:	01e00593          	li	a1,30
    80022c68:	00048513          	mv	a0,s1
    80022c6c:	00001097          	auipc	ra,0x1
    80022c70:	5ec080e7          	jalr	1516(ra) # 80024258 <_Z9getStringPci>
    n = stringToInt(input);
    80022c74:	00048513          	mv	a0,s1
    80022c78:	00001097          	auipc	ra,0x1
    80022c7c:	6b8080e7          	jalr	1720(ra) # 80024330 <_Z11stringToIntPKc>
    80022c80:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80022c84:	00005517          	auipc	a0,0x5
    80022c88:	4ec50513          	addi	a0,a0,1260 # 80028170 <CONSOLE_STATUS+0x160>
    80022c8c:	00001097          	auipc	ra,0x1
    80022c90:	544080e7          	jalr	1348(ra) # 800241d0 <_Z11printStringPKc>
    printInt(threadNum);
    80022c94:	00000613          	li	a2,0
    80022c98:	00a00593          	li	a1,10
    80022c9c:	00098513          	mv	a0,s3
    80022ca0:	00001097          	auipc	ra,0x1
    80022ca4:	6e0080e7          	jalr	1760(ra) # 80024380 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80022ca8:	00005517          	auipc	a0,0x5
    80022cac:	4e050513          	addi	a0,a0,1248 # 80028188 <CONSOLE_STATUS+0x178>
    80022cb0:	00001097          	auipc	ra,0x1
    80022cb4:	520080e7          	jalr	1312(ra) # 800241d0 <_Z11printStringPKc>
    printInt(n);
    80022cb8:	00000613          	li	a2,0
    80022cbc:	00a00593          	li	a1,10
    80022cc0:	00048513          	mv	a0,s1
    80022cc4:	00001097          	auipc	ra,0x1
    80022cc8:	6bc080e7          	jalr	1724(ra) # 80024380 <_Z8printIntiii>
    printString(".\n");
    80022ccc:	00005517          	auipc	a0,0x5
    80022cd0:	4d450513          	addi	a0,a0,1236 # 800281a0 <CONSOLE_STATUS+0x190>
    80022cd4:	00001097          	auipc	ra,0x1
    80022cd8:	4fc080e7          	jalr	1276(ra) # 800241d0 <_Z11printStringPKc>
    if (threadNum > n) {
    80022cdc:	0334c463          	blt	s1,s3,80022d04 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80022ce0:	03305c63          	blez	s3,80022d18 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80022ce4:	03800513          	li	a0,56
    80022ce8:	fffff097          	auipc	ra,0xfffff
    80022cec:	8ac080e7          	jalr	-1876(ra) # 80021594 <_Znwm>
    80022cf0:	00050a93          	mv	s5,a0
    80022cf4:	00048593          	mv	a1,s1
    80022cf8:	00001097          	auipc	ra,0x1
    80022cfc:	7a8080e7          	jalr	1960(ra) # 800244a0 <_ZN9BufferCPPC1Ei>
    80022d00:	0300006f          	j	80022d30 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80022d04:	00005517          	auipc	a0,0x5
    80022d08:	4a450513          	addi	a0,a0,1188 # 800281a8 <CONSOLE_STATUS+0x198>
    80022d0c:	00001097          	auipc	ra,0x1
    80022d10:	4c4080e7          	jalr	1220(ra) # 800241d0 <_Z11printStringPKc>
        return;
    80022d14:	0140006f          	j	80022d28 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80022d18:	00005517          	auipc	a0,0x5
    80022d1c:	4d050513          	addi	a0,a0,1232 # 800281e8 <CONSOLE_STATUS+0x1d8>
    80022d20:	00001097          	auipc	ra,0x1
    80022d24:	4b0080e7          	jalr	1200(ra) # 800241d0 <_Z11printStringPKc>
        return;
    80022d28:	000c0113          	mv	sp,s8
    80022d2c:	2140006f          	j	80022f40 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80022d30:	01000513          	li	a0,16
    80022d34:	fffff097          	auipc	ra,0xfffff
    80022d38:	860080e7          	jalr	-1952(ra) # 80021594 <_Znwm>
    80022d3c:	00050913          	mv	s2,a0
    80022d40:	00000593          	li	a1,0
    80022d44:	fffff097          	auipc	ra,0xfffff
    80022d48:	a88080e7          	jalr	-1400(ra) # 800217cc <_ZN9SemaphoreC1Ej>
    80022d4c:	00008797          	auipc	a5,0x8
    80022d50:	ef27ba23          	sd	s2,-268(a5) # 8002ac40 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80022d54:	00399793          	slli	a5,s3,0x3
    80022d58:	00f78793          	addi	a5,a5,15
    80022d5c:	ff07f793          	andi	a5,a5,-16
    80022d60:	40f10133          	sub	sp,sp,a5
    80022d64:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80022d68:	0019871b          	addiw	a4,s3,1
    80022d6c:	00171793          	slli	a5,a4,0x1
    80022d70:	00e787b3          	add	a5,a5,a4
    80022d74:	00379793          	slli	a5,a5,0x3
    80022d78:	00f78793          	addi	a5,a5,15
    80022d7c:	ff07f793          	andi	a5,a5,-16
    80022d80:	40f10133          	sub	sp,sp,a5
    80022d84:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80022d88:	00199493          	slli	s1,s3,0x1
    80022d8c:	013484b3          	add	s1,s1,s3
    80022d90:	00349493          	slli	s1,s1,0x3
    80022d94:	009b04b3          	add	s1,s6,s1
    80022d98:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80022d9c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80022da0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80022da4:	02800513          	li	a0,40
    80022da8:	ffffe097          	auipc	ra,0xffffe
    80022dac:	7ec080e7          	jalr	2028(ra) # 80021594 <_Znwm>
    80022db0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80022db4:	fffff097          	auipc	ra,0xfffff
    80022db8:	8c8080e7          	jalr	-1848(ra) # 8002167c <_ZN6ThreadC1Ev>
    80022dbc:	00008797          	auipc	a5,0x8
    80022dc0:	a7478793          	addi	a5,a5,-1420 # 8002a830 <_ZTV8Consumer+0x10>
    80022dc4:	00fbb023          	sd	a5,0(s7)
    80022dc8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80022dcc:	000b8513          	mv	a0,s7
    80022dd0:	fffff097          	auipc	ra,0xfffff
    80022dd4:	8dc080e7          	jalr	-1828(ra) # 800216ac <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80022dd8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80022ddc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80022de0:	00008797          	auipc	a5,0x8
    80022de4:	e607b783          	ld	a5,-416(a5) # 8002ac40 <_ZL10waitForAll>
    80022de8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80022dec:	02800513          	li	a0,40
    80022df0:	ffffe097          	auipc	ra,0xffffe
    80022df4:	7a4080e7          	jalr	1956(ra) # 80021594 <_Znwm>
    80022df8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80022dfc:	fffff097          	auipc	ra,0xfffff
    80022e00:	880080e7          	jalr	-1920(ra) # 8002167c <_ZN6ThreadC1Ev>
    80022e04:	00008797          	auipc	a5,0x8
    80022e08:	9dc78793          	addi	a5,a5,-1572 # 8002a7e0 <_ZTV16ProducerKeyborad+0x10>
    80022e0c:	00f4b023          	sd	a5,0(s1)
    80022e10:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80022e14:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80022e18:	00048513          	mv	a0,s1
    80022e1c:	fffff097          	auipc	ra,0xfffff
    80022e20:	890080e7          	jalr	-1904(ra) # 800216ac <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80022e24:	00100913          	li	s2,1
    80022e28:	0300006f          	j	80022e58 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80022e2c:	00008797          	auipc	a5,0x8
    80022e30:	9dc78793          	addi	a5,a5,-1572 # 8002a808 <_ZTV8Producer+0x10>
    80022e34:	00fcb023          	sd	a5,0(s9)
    80022e38:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80022e3c:	00391793          	slli	a5,s2,0x3
    80022e40:	00fa07b3          	add	a5,s4,a5
    80022e44:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80022e48:	000c8513          	mv	a0,s9
    80022e4c:	fffff097          	auipc	ra,0xfffff
    80022e50:	860080e7          	jalr	-1952(ra) # 800216ac <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80022e54:	0019091b          	addiw	s2,s2,1
    80022e58:	05395263          	bge	s2,s3,80022e9c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80022e5c:	00191493          	slli	s1,s2,0x1
    80022e60:	012484b3          	add	s1,s1,s2
    80022e64:	00349493          	slli	s1,s1,0x3
    80022e68:	009b04b3          	add	s1,s6,s1
    80022e6c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80022e70:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80022e74:	00008797          	auipc	a5,0x8
    80022e78:	dcc7b783          	ld	a5,-564(a5) # 8002ac40 <_ZL10waitForAll>
    80022e7c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80022e80:	02800513          	li	a0,40
    80022e84:	ffffe097          	auipc	ra,0xffffe
    80022e88:	710080e7          	jalr	1808(ra) # 80021594 <_Znwm>
    80022e8c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80022e90:	ffffe097          	auipc	ra,0xffffe
    80022e94:	7ec080e7          	jalr	2028(ra) # 8002167c <_ZN6ThreadC1Ev>
    80022e98:	f95ff06f          	j	80022e2c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80022e9c:	fffff097          	auipc	ra,0xfffff
    80022ea0:	864080e7          	jalr	-1948(ra) # 80021700 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80022ea4:	00000493          	li	s1,0
    80022ea8:	0099ce63          	blt	s3,s1,80022ec4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80022eac:	00008517          	auipc	a0,0x8
    80022eb0:	d9453503          	ld	a0,-620(a0) # 8002ac40 <_ZL10waitForAll>
    80022eb4:	fffff097          	auipc	ra,0xfffff
    80022eb8:	950080e7          	jalr	-1712(ra) # 80021804 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80022ebc:	0014849b          	addiw	s1,s1,1
    80022ec0:	fe9ff06f          	j	80022ea8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80022ec4:	00008517          	auipc	a0,0x8
    80022ec8:	d7c53503          	ld	a0,-644(a0) # 8002ac40 <_ZL10waitForAll>
    80022ecc:	00050863          	beqz	a0,80022edc <_Z20testConsumerProducerv+0x2f4>
    80022ed0:	00053783          	ld	a5,0(a0)
    80022ed4:	0087b783          	ld	a5,8(a5)
    80022ed8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80022edc:	00000493          	li	s1,0
    80022ee0:	0080006f          	j	80022ee8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80022ee4:	0014849b          	addiw	s1,s1,1
    80022ee8:	0334d263          	bge	s1,s3,80022f0c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80022eec:	00349793          	slli	a5,s1,0x3
    80022ef0:	00fa07b3          	add	a5,s4,a5
    80022ef4:	0007b503          	ld	a0,0(a5)
    80022ef8:	fe0506e3          	beqz	a0,80022ee4 <_Z20testConsumerProducerv+0x2fc>
    80022efc:	00053783          	ld	a5,0(a0)
    80022f00:	0087b783          	ld	a5,8(a5)
    80022f04:	000780e7          	jalr	a5
    80022f08:	fddff06f          	j	80022ee4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80022f0c:	000b8a63          	beqz	s7,80022f20 <_Z20testConsumerProducerv+0x338>
    80022f10:	000bb783          	ld	a5,0(s7)
    80022f14:	0087b783          	ld	a5,8(a5)
    80022f18:	000b8513          	mv	a0,s7
    80022f1c:	000780e7          	jalr	a5
    delete buffer;
    80022f20:	000a8e63          	beqz	s5,80022f3c <_Z20testConsumerProducerv+0x354>
    80022f24:	000a8513          	mv	a0,s5
    80022f28:	00002097          	auipc	ra,0x2
    80022f2c:	870080e7          	jalr	-1936(ra) # 80024798 <_ZN9BufferCPPD1Ev>
    80022f30:	000a8513          	mv	a0,s5
    80022f34:	ffffe097          	auipc	ra,0xffffe
    80022f38:	688080e7          	jalr	1672(ra) # 800215bc <_ZdlPv>
    80022f3c:	000c0113          	mv	sp,s8
}
    80022f40:	f8040113          	addi	sp,s0,-128
    80022f44:	07813083          	ld	ra,120(sp)
    80022f48:	07013403          	ld	s0,112(sp)
    80022f4c:	06813483          	ld	s1,104(sp)
    80022f50:	06013903          	ld	s2,96(sp)
    80022f54:	05813983          	ld	s3,88(sp)
    80022f58:	05013a03          	ld	s4,80(sp)
    80022f5c:	04813a83          	ld	s5,72(sp)
    80022f60:	04013b03          	ld	s6,64(sp)
    80022f64:	03813b83          	ld	s7,56(sp)
    80022f68:	03013c03          	ld	s8,48(sp)
    80022f6c:	02813c83          	ld	s9,40(sp)
    80022f70:	08010113          	addi	sp,sp,128
    80022f74:	00008067          	ret
    80022f78:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80022f7c:	000a8513          	mv	a0,s5
    80022f80:	ffffe097          	auipc	ra,0xffffe
    80022f84:	63c080e7          	jalr	1596(ra) # 800215bc <_ZdlPv>
    80022f88:	00048513          	mv	a0,s1
    80022f8c:	00009097          	auipc	ra,0x9
    80022f90:	dac080e7          	jalr	-596(ra) # 8002bd38 <_Unwind_Resume>
    80022f94:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80022f98:	00090513          	mv	a0,s2
    80022f9c:	ffffe097          	auipc	ra,0xffffe
    80022fa0:	620080e7          	jalr	1568(ra) # 800215bc <_ZdlPv>
    80022fa4:	00048513          	mv	a0,s1
    80022fa8:	00009097          	auipc	ra,0x9
    80022fac:	d90080e7          	jalr	-624(ra) # 8002bd38 <_Unwind_Resume>
    80022fb0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80022fb4:	000b8513          	mv	a0,s7
    80022fb8:	ffffe097          	auipc	ra,0xffffe
    80022fbc:	604080e7          	jalr	1540(ra) # 800215bc <_ZdlPv>
    80022fc0:	00048513          	mv	a0,s1
    80022fc4:	00009097          	auipc	ra,0x9
    80022fc8:	d74080e7          	jalr	-652(ra) # 8002bd38 <_Unwind_Resume>
    80022fcc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80022fd0:	00048513          	mv	a0,s1
    80022fd4:	ffffe097          	auipc	ra,0xffffe
    80022fd8:	5e8080e7          	jalr	1512(ra) # 800215bc <_ZdlPv>
    80022fdc:	00090513          	mv	a0,s2
    80022fe0:	00009097          	auipc	ra,0x9
    80022fe4:	d58080e7          	jalr	-680(ra) # 8002bd38 <_Unwind_Resume>
    80022fe8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80022fec:	000c8513          	mv	a0,s9
    80022ff0:	ffffe097          	auipc	ra,0xffffe
    80022ff4:	5cc080e7          	jalr	1484(ra) # 800215bc <_ZdlPv>
    80022ff8:	00048513          	mv	a0,s1
    80022ffc:	00009097          	auipc	ra,0x9
    80023000:	d3c080e7          	jalr	-708(ra) # 8002bd38 <_Unwind_Resume>

0000000080023004 <_ZN8Consumer3runEv>:
    void run() override {
    80023004:	fd010113          	addi	sp,sp,-48
    80023008:	02113423          	sd	ra,40(sp)
    8002300c:	02813023          	sd	s0,32(sp)
    80023010:	00913c23          	sd	s1,24(sp)
    80023014:	01213823          	sd	s2,16(sp)
    80023018:	01313423          	sd	s3,8(sp)
    8002301c:	03010413          	addi	s0,sp,48
    80023020:	00050913          	mv	s2,a0
        int i = 0;
    80023024:	00000993          	li	s3,0
    80023028:	0100006f          	j	80023038 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8002302c:	00a00513          	li	a0,10
    80023030:	fffff097          	auipc	ra,0xfffff
    80023034:	8c0080e7          	jalr	-1856(ra) # 800218f0 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80023038:	00008797          	auipc	a5,0x8
    8002303c:	c007a783          	lw	a5,-1024(a5) # 8002ac38 <_ZL9threadEnd>
    80023040:	04079a63          	bnez	a5,80023094 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80023044:	02093783          	ld	a5,32(s2)
    80023048:	0087b503          	ld	a0,8(a5)
    8002304c:	00001097          	auipc	ra,0x1
    80023050:	638080e7          	jalr	1592(ra) # 80024684 <_ZN9BufferCPP3getEv>
            i++;
    80023054:	0019849b          	addiw	s1,s3,1
    80023058:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8002305c:	0ff57513          	andi	a0,a0,255
    80023060:	fffff097          	auipc	ra,0xfffff
    80023064:	890080e7          	jalr	-1904(ra) # 800218f0 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80023068:	05000793          	li	a5,80
    8002306c:	02f4e4bb          	remw	s1,s1,a5
    80023070:	fc0494e3          	bnez	s1,80023038 <_ZN8Consumer3runEv+0x34>
    80023074:	fb9ff06f          	j	8002302c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80023078:	02093783          	ld	a5,32(s2)
    8002307c:	0087b503          	ld	a0,8(a5)
    80023080:	00001097          	auipc	ra,0x1
    80023084:	604080e7          	jalr	1540(ra) # 80024684 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80023088:	0ff57513          	andi	a0,a0,255
    8002308c:	fffff097          	auipc	ra,0xfffff
    80023090:	864080e7          	jalr	-1948(ra) # 800218f0 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80023094:	02093783          	ld	a5,32(s2)
    80023098:	0087b503          	ld	a0,8(a5)
    8002309c:	00001097          	auipc	ra,0x1
    800230a0:	674080e7          	jalr	1652(ra) # 80024710 <_ZN9BufferCPP6getCntEv>
    800230a4:	fca04ae3          	bgtz	a0,80023078 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800230a8:	02093783          	ld	a5,32(s2)
    800230ac:	0107b503          	ld	a0,16(a5)
    800230b0:	ffffe097          	auipc	ra,0xffffe
    800230b4:	780080e7          	jalr	1920(ra) # 80021830 <_ZN9Semaphore6signalEv>
    }
    800230b8:	02813083          	ld	ra,40(sp)
    800230bc:	02013403          	ld	s0,32(sp)
    800230c0:	01813483          	ld	s1,24(sp)
    800230c4:	01013903          	ld	s2,16(sp)
    800230c8:	00813983          	ld	s3,8(sp)
    800230cc:	03010113          	addi	sp,sp,48
    800230d0:	00008067          	ret

00000000800230d4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800230d4:	ff010113          	addi	sp,sp,-16
    800230d8:	00113423          	sd	ra,8(sp)
    800230dc:	00813023          	sd	s0,0(sp)
    800230e0:	01010413          	addi	s0,sp,16
    800230e4:	00007797          	auipc	a5,0x7
    800230e8:	74c78793          	addi	a5,a5,1868 # 8002a830 <_ZTV8Consumer+0x10>
    800230ec:	00f53023          	sd	a5,0(a0)
    800230f0:	ffffe097          	auipc	ra,0xffffe
    800230f4:	3d0080e7          	jalr	976(ra) # 800214c0 <_ZN6ThreadD1Ev>
    800230f8:	00813083          	ld	ra,8(sp)
    800230fc:	00013403          	ld	s0,0(sp)
    80023100:	01010113          	addi	sp,sp,16
    80023104:	00008067          	ret

0000000080023108 <_ZN8ConsumerD0Ev>:
    80023108:	fe010113          	addi	sp,sp,-32
    8002310c:	00113c23          	sd	ra,24(sp)
    80023110:	00813823          	sd	s0,16(sp)
    80023114:	00913423          	sd	s1,8(sp)
    80023118:	02010413          	addi	s0,sp,32
    8002311c:	00050493          	mv	s1,a0
    80023120:	00007797          	auipc	a5,0x7
    80023124:	71078793          	addi	a5,a5,1808 # 8002a830 <_ZTV8Consumer+0x10>
    80023128:	00f53023          	sd	a5,0(a0)
    8002312c:	ffffe097          	auipc	ra,0xffffe
    80023130:	394080e7          	jalr	916(ra) # 800214c0 <_ZN6ThreadD1Ev>
    80023134:	00048513          	mv	a0,s1
    80023138:	ffffe097          	auipc	ra,0xffffe
    8002313c:	484080e7          	jalr	1156(ra) # 800215bc <_ZdlPv>
    80023140:	01813083          	ld	ra,24(sp)
    80023144:	01013403          	ld	s0,16(sp)
    80023148:	00813483          	ld	s1,8(sp)
    8002314c:	02010113          	addi	sp,sp,32
    80023150:	00008067          	ret

0000000080023154 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80023154:	ff010113          	addi	sp,sp,-16
    80023158:	00113423          	sd	ra,8(sp)
    8002315c:	00813023          	sd	s0,0(sp)
    80023160:	01010413          	addi	s0,sp,16
    80023164:	00007797          	auipc	a5,0x7
    80023168:	67c78793          	addi	a5,a5,1660 # 8002a7e0 <_ZTV16ProducerKeyborad+0x10>
    8002316c:	00f53023          	sd	a5,0(a0)
    80023170:	ffffe097          	auipc	ra,0xffffe
    80023174:	350080e7          	jalr	848(ra) # 800214c0 <_ZN6ThreadD1Ev>
    80023178:	00813083          	ld	ra,8(sp)
    8002317c:	00013403          	ld	s0,0(sp)
    80023180:	01010113          	addi	sp,sp,16
    80023184:	00008067          	ret

0000000080023188 <_ZN16ProducerKeyboradD0Ev>:
    80023188:	fe010113          	addi	sp,sp,-32
    8002318c:	00113c23          	sd	ra,24(sp)
    80023190:	00813823          	sd	s0,16(sp)
    80023194:	00913423          	sd	s1,8(sp)
    80023198:	02010413          	addi	s0,sp,32
    8002319c:	00050493          	mv	s1,a0
    800231a0:	00007797          	auipc	a5,0x7
    800231a4:	64078793          	addi	a5,a5,1600 # 8002a7e0 <_ZTV16ProducerKeyborad+0x10>
    800231a8:	00f53023          	sd	a5,0(a0)
    800231ac:	ffffe097          	auipc	ra,0xffffe
    800231b0:	314080e7          	jalr	788(ra) # 800214c0 <_ZN6ThreadD1Ev>
    800231b4:	00048513          	mv	a0,s1
    800231b8:	ffffe097          	auipc	ra,0xffffe
    800231bc:	404080e7          	jalr	1028(ra) # 800215bc <_ZdlPv>
    800231c0:	01813083          	ld	ra,24(sp)
    800231c4:	01013403          	ld	s0,16(sp)
    800231c8:	00813483          	ld	s1,8(sp)
    800231cc:	02010113          	addi	sp,sp,32
    800231d0:	00008067          	ret

00000000800231d4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800231d4:	ff010113          	addi	sp,sp,-16
    800231d8:	00113423          	sd	ra,8(sp)
    800231dc:	00813023          	sd	s0,0(sp)
    800231e0:	01010413          	addi	s0,sp,16
    800231e4:	00007797          	auipc	a5,0x7
    800231e8:	62478793          	addi	a5,a5,1572 # 8002a808 <_ZTV8Producer+0x10>
    800231ec:	00f53023          	sd	a5,0(a0)
    800231f0:	ffffe097          	auipc	ra,0xffffe
    800231f4:	2d0080e7          	jalr	720(ra) # 800214c0 <_ZN6ThreadD1Ev>
    800231f8:	00813083          	ld	ra,8(sp)
    800231fc:	00013403          	ld	s0,0(sp)
    80023200:	01010113          	addi	sp,sp,16
    80023204:	00008067          	ret

0000000080023208 <_ZN8ProducerD0Ev>:
    80023208:	fe010113          	addi	sp,sp,-32
    8002320c:	00113c23          	sd	ra,24(sp)
    80023210:	00813823          	sd	s0,16(sp)
    80023214:	00913423          	sd	s1,8(sp)
    80023218:	02010413          	addi	s0,sp,32
    8002321c:	00050493          	mv	s1,a0
    80023220:	00007797          	auipc	a5,0x7
    80023224:	5e878793          	addi	a5,a5,1512 # 8002a808 <_ZTV8Producer+0x10>
    80023228:	00f53023          	sd	a5,0(a0)
    8002322c:	ffffe097          	auipc	ra,0xffffe
    80023230:	294080e7          	jalr	660(ra) # 800214c0 <_ZN6ThreadD1Ev>
    80023234:	00048513          	mv	a0,s1
    80023238:	ffffe097          	auipc	ra,0xffffe
    8002323c:	384080e7          	jalr	900(ra) # 800215bc <_ZdlPv>
    80023240:	01813083          	ld	ra,24(sp)
    80023244:	01013403          	ld	s0,16(sp)
    80023248:	00813483          	ld	s1,8(sp)
    8002324c:	02010113          	addi	sp,sp,32
    80023250:	00008067          	ret

0000000080023254 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80023254:	fe010113          	addi	sp,sp,-32
    80023258:	00113c23          	sd	ra,24(sp)
    8002325c:	00813823          	sd	s0,16(sp)
    80023260:	00913423          	sd	s1,8(sp)
    80023264:	02010413          	addi	s0,sp,32
    80023268:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8002326c:	ffffd097          	auipc	ra,0xffffd
    80023270:	414080e7          	jalr	1044(ra) # 80020680 <_Z4getcv>
    80023274:	0005059b          	sext.w	a1,a0
    80023278:	01b00793          	li	a5,27
    8002327c:	00f58c63          	beq	a1,a5,80023294 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80023280:	0204b783          	ld	a5,32(s1)
    80023284:	0087b503          	ld	a0,8(a5)
    80023288:	00001097          	auipc	ra,0x1
    8002328c:	36c080e7          	jalr	876(ra) # 800245f4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80023290:	fddff06f          	j	8002326c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80023294:	00100793          	li	a5,1
    80023298:	00008717          	auipc	a4,0x8
    8002329c:	9af72023          	sw	a5,-1632(a4) # 8002ac38 <_ZL9threadEnd>
        td->buffer->put('!');
    800232a0:	0204b783          	ld	a5,32(s1)
    800232a4:	02100593          	li	a1,33
    800232a8:	0087b503          	ld	a0,8(a5)
    800232ac:	00001097          	auipc	ra,0x1
    800232b0:	348080e7          	jalr	840(ra) # 800245f4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800232b4:	0204b783          	ld	a5,32(s1)
    800232b8:	0107b503          	ld	a0,16(a5)
    800232bc:	ffffe097          	auipc	ra,0xffffe
    800232c0:	574080e7          	jalr	1396(ra) # 80021830 <_ZN9Semaphore6signalEv>
    }
    800232c4:	01813083          	ld	ra,24(sp)
    800232c8:	01013403          	ld	s0,16(sp)
    800232cc:	00813483          	ld	s1,8(sp)
    800232d0:	02010113          	addi	sp,sp,32
    800232d4:	00008067          	ret

00000000800232d8 <_ZN8Producer3runEv>:
    void run() override {
    800232d8:	fe010113          	addi	sp,sp,-32
    800232dc:	00113c23          	sd	ra,24(sp)
    800232e0:	00813823          	sd	s0,16(sp)
    800232e4:	00913423          	sd	s1,8(sp)
    800232e8:	01213023          	sd	s2,0(sp)
    800232ec:	02010413          	addi	s0,sp,32
    800232f0:	00050493          	mv	s1,a0
        int i = 0;
    800232f4:	00000913          	li	s2,0
        while (!threadEnd) {
    800232f8:	00008797          	auipc	a5,0x8
    800232fc:	9407a783          	lw	a5,-1728(a5) # 8002ac38 <_ZL9threadEnd>
    80023300:	04079263          	bnez	a5,80023344 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80023304:	0204b783          	ld	a5,32(s1)
    80023308:	0007a583          	lw	a1,0(a5)
    8002330c:	0305859b          	addiw	a1,a1,48
    80023310:	0087b503          	ld	a0,8(a5)
    80023314:	00001097          	auipc	ra,0x1
    80023318:	2e0080e7          	jalr	736(ra) # 800245f4 <_ZN9BufferCPP3putEi>
            i++;
    8002331c:	0019071b          	addiw	a4,s2,1
    80023320:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80023324:	0204b783          	ld	a5,32(s1)
    80023328:	0007a783          	lw	a5,0(a5)
    8002332c:	00e787bb          	addw	a5,a5,a4
    80023330:	00500513          	li	a0,5
    80023334:	02a7e53b          	remw	a0,a5,a0
    80023338:	ffffe097          	auipc	ra,0xffffe
    8002333c:	3f0080e7          	jalr	1008(ra) # 80021728 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80023340:	fb9ff06f          	j	800232f8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80023344:	0204b783          	ld	a5,32(s1)
    80023348:	0107b503          	ld	a0,16(a5)
    8002334c:	ffffe097          	auipc	ra,0xffffe
    80023350:	4e4080e7          	jalr	1252(ra) # 80021830 <_ZN9Semaphore6signalEv>
    }
    80023354:	01813083          	ld	ra,24(sp)
    80023358:	01013403          	ld	s0,16(sp)
    8002335c:	00813483          	ld	s1,8(sp)
    80023360:	00013903          	ld	s2,0(sp)
    80023364:	02010113          	addi	sp,sp,32
    80023368:	00008067          	ret

000000008002336c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8002336c:	fe010113          	addi	sp,sp,-32
    80023370:	00113c23          	sd	ra,24(sp)
    80023374:	00813823          	sd	s0,16(sp)
    80023378:	00913423          	sd	s1,8(sp)
    8002337c:	01213023          	sd	s2,0(sp)
    80023380:	02010413          	addi	s0,sp,32
    80023384:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80023388:	00100793          	li	a5,1
    8002338c:	02a7f863          	bgeu	a5,a0,800233bc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80023390:	00a00793          	li	a5,10
    80023394:	02f577b3          	remu	a5,a0,a5
    80023398:	02078e63          	beqz	a5,800233d4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8002339c:	fff48513          	addi	a0,s1,-1
    800233a0:	00000097          	auipc	ra,0x0
    800233a4:	fcc080e7          	jalr	-52(ra) # 8002336c <_ZL9fibonaccim>
    800233a8:	00050913          	mv	s2,a0
    800233ac:	ffe48513          	addi	a0,s1,-2
    800233b0:	00000097          	auipc	ra,0x0
    800233b4:	fbc080e7          	jalr	-68(ra) # 8002336c <_ZL9fibonaccim>
    800233b8:	00a90533          	add	a0,s2,a0
}
    800233bc:	01813083          	ld	ra,24(sp)
    800233c0:	01013403          	ld	s0,16(sp)
    800233c4:	00813483          	ld	s1,8(sp)
    800233c8:	00013903          	ld	s2,0(sp)
    800233cc:	02010113          	addi	sp,sp,32
    800233d0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800233d4:	ffffd097          	auipc	ra,0xffffd
    800233d8:	108080e7          	jalr	264(ra) # 800204dc <_Z15thread_dispatchv>
    800233dc:	fc1ff06f          	j	8002339c <_ZL9fibonaccim+0x30>

00000000800233e0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800233e0:	fe010113          	addi	sp,sp,-32
    800233e4:	00113c23          	sd	ra,24(sp)
    800233e8:	00813823          	sd	s0,16(sp)
    800233ec:	00913423          	sd	s1,8(sp)
    800233f0:	01213023          	sd	s2,0(sp)
    800233f4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800233f8:	00a00493          	li	s1,10
    800233fc:	0400006f          	j	8002343c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80023400:	00005517          	auipc	a0,0x5
    80023404:	e9850513          	addi	a0,a0,-360 # 80028298 <CONSOLE_STATUS+0x288>
    80023408:	00001097          	auipc	ra,0x1
    8002340c:	dc8080e7          	jalr	-568(ra) # 800241d0 <_Z11printStringPKc>
    80023410:	00000613          	li	a2,0
    80023414:	00a00593          	li	a1,10
    80023418:	00048513          	mv	a0,s1
    8002341c:	00001097          	auipc	ra,0x1
    80023420:	f64080e7          	jalr	-156(ra) # 80024380 <_Z8printIntiii>
    80023424:	00005517          	auipc	a0,0x5
    80023428:	06450513          	addi	a0,a0,100 # 80028488 <CONSOLE_STATUS+0x478>
    8002342c:	00001097          	auipc	ra,0x1
    80023430:	da4080e7          	jalr	-604(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80023434:	0014849b          	addiw	s1,s1,1
    80023438:	0ff4f493          	andi	s1,s1,255
    8002343c:	00c00793          	li	a5,12
    80023440:	fc97f0e3          	bgeu	a5,s1,80023400 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80023444:	00005517          	auipc	a0,0x5
    80023448:	e5c50513          	addi	a0,a0,-420 # 800282a0 <CONSOLE_STATUS+0x290>
    8002344c:	00001097          	auipc	ra,0x1
    80023450:	d84080e7          	jalr	-636(ra) # 800241d0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80023454:	00500313          	li	t1,5
    thread_dispatch();
    80023458:	ffffd097          	auipc	ra,0xffffd
    8002345c:	084080e7          	jalr	132(ra) # 800204dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80023460:	01000513          	li	a0,16
    80023464:	00000097          	auipc	ra,0x0
    80023468:	f08080e7          	jalr	-248(ra) # 8002336c <_ZL9fibonaccim>
    8002346c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80023470:	00005517          	auipc	a0,0x5
    80023474:	e4050513          	addi	a0,a0,-448 # 800282b0 <CONSOLE_STATUS+0x2a0>
    80023478:	00001097          	auipc	ra,0x1
    8002347c:	d58080e7          	jalr	-680(ra) # 800241d0 <_Z11printStringPKc>
    80023480:	00000613          	li	a2,0
    80023484:	00a00593          	li	a1,10
    80023488:	0009051b          	sext.w	a0,s2
    8002348c:	00001097          	auipc	ra,0x1
    80023490:	ef4080e7          	jalr	-268(ra) # 80024380 <_Z8printIntiii>
    80023494:	00005517          	auipc	a0,0x5
    80023498:	ff450513          	addi	a0,a0,-12 # 80028488 <CONSOLE_STATUS+0x478>
    8002349c:	00001097          	auipc	ra,0x1
    800234a0:	d34080e7          	jalr	-716(ra) # 800241d0 <_Z11printStringPKc>
    800234a4:	0400006f          	j	800234e4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800234a8:	00005517          	auipc	a0,0x5
    800234ac:	df050513          	addi	a0,a0,-528 # 80028298 <CONSOLE_STATUS+0x288>
    800234b0:	00001097          	auipc	ra,0x1
    800234b4:	d20080e7          	jalr	-736(ra) # 800241d0 <_Z11printStringPKc>
    800234b8:	00000613          	li	a2,0
    800234bc:	00a00593          	li	a1,10
    800234c0:	00048513          	mv	a0,s1
    800234c4:	00001097          	auipc	ra,0x1
    800234c8:	ebc080e7          	jalr	-324(ra) # 80024380 <_Z8printIntiii>
    800234cc:	00005517          	auipc	a0,0x5
    800234d0:	fbc50513          	addi	a0,a0,-68 # 80028488 <CONSOLE_STATUS+0x478>
    800234d4:	00001097          	auipc	ra,0x1
    800234d8:	cfc080e7          	jalr	-772(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800234dc:	0014849b          	addiw	s1,s1,1
    800234e0:	0ff4f493          	andi	s1,s1,255
    800234e4:	00f00793          	li	a5,15
    800234e8:	fc97f0e3          	bgeu	a5,s1,800234a8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800234ec:	00005517          	auipc	a0,0x5
    800234f0:	dd450513          	addi	a0,a0,-556 # 800282c0 <CONSOLE_STATUS+0x2b0>
    800234f4:	00001097          	auipc	ra,0x1
    800234f8:	cdc080e7          	jalr	-804(ra) # 800241d0 <_Z11printStringPKc>
    finishedD = true;
    800234fc:	00100793          	li	a5,1
    80023500:	00007717          	auipc	a4,0x7
    80023504:	74f70423          	sb	a5,1864(a4) # 8002ac48 <_ZL9finishedD>
    thread_dispatch();
    80023508:	ffffd097          	auipc	ra,0xffffd
    8002350c:	fd4080e7          	jalr	-44(ra) # 800204dc <_Z15thread_dispatchv>
}
    80023510:	01813083          	ld	ra,24(sp)
    80023514:	01013403          	ld	s0,16(sp)
    80023518:	00813483          	ld	s1,8(sp)
    8002351c:	00013903          	ld	s2,0(sp)
    80023520:	02010113          	addi	sp,sp,32
    80023524:	00008067          	ret

0000000080023528 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80023528:	fe010113          	addi	sp,sp,-32
    8002352c:	00113c23          	sd	ra,24(sp)
    80023530:	00813823          	sd	s0,16(sp)
    80023534:	00913423          	sd	s1,8(sp)
    80023538:	01213023          	sd	s2,0(sp)
    8002353c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80023540:	00000493          	li	s1,0
    80023544:	0400006f          	j	80023584 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80023548:	00005517          	auipc	a0,0x5
    8002354c:	d2050513          	addi	a0,a0,-736 # 80028268 <CONSOLE_STATUS+0x258>
    80023550:	00001097          	auipc	ra,0x1
    80023554:	c80080e7          	jalr	-896(ra) # 800241d0 <_Z11printStringPKc>
    80023558:	00000613          	li	a2,0
    8002355c:	00a00593          	li	a1,10
    80023560:	00048513          	mv	a0,s1
    80023564:	00001097          	auipc	ra,0x1
    80023568:	e1c080e7          	jalr	-484(ra) # 80024380 <_Z8printIntiii>
    8002356c:	00005517          	auipc	a0,0x5
    80023570:	f1c50513          	addi	a0,a0,-228 # 80028488 <CONSOLE_STATUS+0x478>
    80023574:	00001097          	auipc	ra,0x1
    80023578:	c5c080e7          	jalr	-932(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8002357c:	0014849b          	addiw	s1,s1,1
    80023580:	0ff4f493          	andi	s1,s1,255
    80023584:	00200793          	li	a5,2
    80023588:	fc97f0e3          	bgeu	a5,s1,80023548 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8002358c:	00005517          	auipc	a0,0x5
    80023590:	ce450513          	addi	a0,a0,-796 # 80028270 <CONSOLE_STATUS+0x260>
    80023594:	00001097          	auipc	ra,0x1
    80023598:	c3c080e7          	jalr	-964(ra) # 800241d0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8002359c:	00700313          	li	t1,7
    thread_dispatch();
    800235a0:	ffffd097          	auipc	ra,0xffffd
    800235a4:	f3c080e7          	jalr	-196(ra) # 800204dc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800235a8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800235ac:	00005517          	auipc	a0,0x5
    800235b0:	cd450513          	addi	a0,a0,-812 # 80028280 <CONSOLE_STATUS+0x270>
    800235b4:	00001097          	auipc	ra,0x1
    800235b8:	c1c080e7          	jalr	-996(ra) # 800241d0 <_Z11printStringPKc>
    800235bc:	00000613          	li	a2,0
    800235c0:	00a00593          	li	a1,10
    800235c4:	0009051b          	sext.w	a0,s2
    800235c8:	00001097          	auipc	ra,0x1
    800235cc:	db8080e7          	jalr	-584(ra) # 80024380 <_Z8printIntiii>
    800235d0:	00005517          	auipc	a0,0x5
    800235d4:	eb850513          	addi	a0,a0,-328 # 80028488 <CONSOLE_STATUS+0x478>
    800235d8:	00001097          	auipc	ra,0x1
    800235dc:	bf8080e7          	jalr	-1032(ra) # 800241d0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800235e0:	00c00513          	li	a0,12
    800235e4:	00000097          	auipc	ra,0x0
    800235e8:	d88080e7          	jalr	-632(ra) # 8002336c <_ZL9fibonaccim>
    800235ec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800235f0:	00005517          	auipc	a0,0x5
    800235f4:	c9850513          	addi	a0,a0,-872 # 80028288 <CONSOLE_STATUS+0x278>
    800235f8:	00001097          	auipc	ra,0x1
    800235fc:	bd8080e7          	jalr	-1064(ra) # 800241d0 <_Z11printStringPKc>
    80023600:	00000613          	li	a2,0
    80023604:	00a00593          	li	a1,10
    80023608:	0009051b          	sext.w	a0,s2
    8002360c:	00001097          	auipc	ra,0x1
    80023610:	d74080e7          	jalr	-652(ra) # 80024380 <_Z8printIntiii>
    80023614:	00005517          	auipc	a0,0x5
    80023618:	e7450513          	addi	a0,a0,-396 # 80028488 <CONSOLE_STATUS+0x478>
    8002361c:	00001097          	auipc	ra,0x1
    80023620:	bb4080e7          	jalr	-1100(ra) # 800241d0 <_Z11printStringPKc>
    80023624:	0400006f          	j	80023664 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80023628:	00005517          	auipc	a0,0x5
    8002362c:	c4050513          	addi	a0,a0,-960 # 80028268 <CONSOLE_STATUS+0x258>
    80023630:	00001097          	auipc	ra,0x1
    80023634:	ba0080e7          	jalr	-1120(ra) # 800241d0 <_Z11printStringPKc>
    80023638:	00000613          	li	a2,0
    8002363c:	00a00593          	li	a1,10
    80023640:	00048513          	mv	a0,s1
    80023644:	00001097          	auipc	ra,0x1
    80023648:	d3c080e7          	jalr	-708(ra) # 80024380 <_Z8printIntiii>
    8002364c:	00005517          	auipc	a0,0x5
    80023650:	e3c50513          	addi	a0,a0,-452 # 80028488 <CONSOLE_STATUS+0x478>
    80023654:	00001097          	auipc	ra,0x1
    80023658:	b7c080e7          	jalr	-1156(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8002365c:	0014849b          	addiw	s1,s1,1
    80023660:	0ff4f493          	andi	s1,s1,255
    80023664:	00500793          	li	a5,5
    80023668:	fc97f0e3          	bgeu	a5,s1,80023628 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8002366c:	00005517          	auipc	a0,0x5
    80023670:	bd450513          	addi	a0,a0,-1068 # 80028240 <CONSOLE_STATUS+0x230>
    80023674:	00001097          	auipc	ra,0x1
    80023678:	b5c080e7          	jalr	-1188(ra) # 800241d0 <_Z11printStringPKc>
    finishedC = true;
    8002367c:	00100793          	li	a5,1
    80023680:	00007717          	auipc	a4,0x7
    80023684:	5cf704a3          	sb	a5,1481(a4) # 8002ac49 <_ZL9finishedC>
    thread_dispatch();
    80023688:	ffffd097          	auipc	ra,0xffffd
    8002368c:	e54080e7          	jalr	-428(ra) # 800204dc <_Z15thread_dispatchv>
}
    80023690:	01813083          	ld	ra,24(sp)
    80023694:	01013403          	ld	s0,16(sp)
    80023698:	00813483          	ld	s1,8(sp)
    8002369c:	00013903          	ld	s2,0(sp)
    800236a0:	02010113          	addi	sp,sp,32
    800236a4:	00008067          	ret

00000000800236a8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800236a8:	fe010113          	addi	sp,sp,-32
    800236ac:	00113c23          	sd	ra,24(sp)
    800236b0:	00813823          	sd	s0,16(sp)
    800236b4:	00913423          	sd	s1,8(sp)
    800236b8:	01213023          	sd	s2,0(sp)
    800236bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800236c0:	00000913          	li	s2,0
    800236c4:	0380006f          	j	800236fc <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800236c8:	ffffd097          	auipc	ra,0xffffd
    800236cc:	e14080e7          	jalr	-492(ra) # 800204dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800236d0:	00148493          	addi	s1,s1,1
    800236d4:	000027b7          	lui	a5,0x2
    800236d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800236dc:	0097ee63          	bltu	a5,s1,800236f8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800236e0:	00000713          	li	a4,0
    800236e4:	000077b7          	lui	a5,0x7
    800236e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800236ec:	fce7eee3          	bltu	a5,a4,800236c8 <_ZL11workerBodyBPv+0x20>
    800236f0:	00170713          	addi	a4,a4,1
    800236f4:	ff1ff06f          	j	800236e4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800236f8:	00190913          	addi	s2,s2,1
    800236fc:	00f00793          	li	a5,15
    80023700:	0527e063          	bltu	a5,s2,80023740 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80023704:	00005517          	auipc	a0,0x5
    80023708:	b4c50513          	addi	a0,a0,-1204 # 80028250 <CONSOLE_STATUS+0x240>
    8002370c:	00001097          	auipc	ra,0x1
    80023710:	ac4080e7          	jalr	-1340(ra) # 800241d0 <_Z11printStringPKc>
    80023714:	00000613          	li	a2,0
    80023718:	00a00593          	li	a1,10
    8002371c:	0009051b          	sext.w	a0,s2
    80023720:	00001097          	auipc	ra,0x1
    80023724:	c60080e7          	jalr	-928(ra) # 80024380 <_Z8printIntiii>
    80023728:	00005517          	auipc	a0,0x5
    8002372c:	d6050513          	addi	a0,a0,-672 # 80028488 <CONSOLE_STATUS+0x478>
    80023730:	00001097          	auipc	ra,0x1
    80023734:	aa0080e7          	jalr	-1376(ra) # 800241d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80023738:	00000493          	li	s1,0
    8002373c:	f99ff06f          	j	800236d4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80023740:	00005517          	auipc	a0,0x5
    80023744:	b1850513          	addi	a0,a0,-1256 # 80028258 <CONSOLE_STATUS+0x248>
    80023748:	00001097          	auipc	ra,0x1
    8002374c:	a88080e7          	jalr	-1400(ra) # 800241d0 <_Z11printStringPKc>
    finishedB = true;
    80023750:	00100793          	li	a5,1
    80023754:	00007717          	auipc	a4,0x7
    80023758:	4ef70b23          	sb	a5,1270(a4) # 8002ac4a <_ZL9finishedB>
    thread_dispatch();
    8002375c:	ffffd097          	auipc	ra,0xffffd
    80023760:	d80080e7          	jalr	-640(ra) # 800204dc <_Z15thread_dispatchv>
}
    80023764:	01813083          	ld	ra,24(sp)
    80023768:	01013403          	ld	s0,16(sp)
    8002376c:	00813483          	ld	s1,8(sp)
    80023770:	00013903          	ld	s2,0(sp)
    80023774:	02010113          	addi	sp,sp,32
    80023778:	00008067          	ret

000000008002377c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8002377c:	fe010113          	addi	sp,sp,-32
    80023780:	00113c23          	sd	ra,24(sp)
    80023784:	00813823          	sd	s0,16(sp)
    80023788:	00913423          	sd	s1,8(sp)
    8002378c:	01213023          	sd	s2,0(sp)
    80023790:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80023794:	00000913          	li	s2,0
    80023798:	0380006f          	j	800237d0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8002379c:	ffffd097          	auipc	ra,0xffffd
    800237a0:	d40080e7          	jalr	-704(ra) # 800204dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800237a4:	00148493          	addi	s1,s1,1
    800237a8:	000027b7          	lui	a5,0x2
    800237ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800237b0:	0097ee63          	bltu	a5,s1,800237cc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800237b4:	00000713          	li	a4,0
    800237b8:	000077b7          	lui	a5,0x7
    800237bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800237c0:	fce7eee3          	bltu	a5,a4,8002379c <_ZL11workerBodyAPv+0x20>
    800237c4:	00170713          	addi	a4,a4,1
    800237c8:	ff1ff06f          	j	800237b8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800237cc:	00190913          	addi	s2,s2,1
    800237d0:	00900793          	li	a5,9
    800237d4:	0527e063          	bltu	a5,s2,80023814 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800237d8:	00005517          	auipc	a0,0x5
    800237dc:	a6050513          	addi	a0,a0,-1440 # 80028238 <CONSOLE_STATUS+0x228>
    800237e0:	00001097          	auipc	ra,0x1
    800237e4:	9f0080e7          	jalr	-1552(ra) # 800241d0 <_Z11printStringPKc>
    800237e8:	00000613          	li	a2,0
    800237ec:	00a00593          	li	a1,10
    800237f0:	0009051b          	sext.w	a0,s2
    800237f4:	00001097          	auipc	ra,0x1
    800237f8:	b8c080e7          	jalr	-1140(ra) # 80024380 <_Z8printIntiii>
    800237fc:	00005517          	auipc	a0,0x5
    80023800:	c8c50513          	addi	a0,a0,-884 # 80028488 <CONSOLE_STATUS+0x478>
    80023804:	00001097          	auipc	ra,0x1
    80023808:	9cc080e7          	jalr	-1588(ra) # 800241d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8002380c:	00000493          	li	s1,0
    80023810:	f99ff06f          	j	800237a8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80023814:	00005517          	auipc	a0,0x5
    80023818:	a2c50513          	addi	a0,a0,-1492 # 80028240 <CONSOLE_STATUS+0x230>
    8002381c:	00001097          	auipc	ra,0x1
    80023820:	9b4080e7          	jalr	-1612(ra) # 800241d0 <_Z11printStringPKc>
    finishedA = true;
    80023824:	00100793          	li	a5,1
    80023828:	00007717          	auipc	a4,0x7
    8002382c:	42f701a3          	sb	a5,1059(a4) # 8002ac4b <_ZL9finishedA>
}
    80023830:	01813083          	ld	ra,24(sp)
    80023834:	01013403          	ld	s0,16(sp)
    80023838:	00813483          	ld	s1,8(sp)
    8002383c:	00013903          	ld	s2,0(sp)
    80023840:	02010113          	addi	sp,sp,32
    80023844:	00008067          	ret

0000000080023848 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80023848:	fd010113          	addi	sp,sp,-48
    8002384c:	02113423          	sd	ra,40(sp)
    80023850:	02813023          	sd	s0,32(sp)
    80023854:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80023858:	00000613          	li	a2,0
    8002385c:	00000597          	auipc	a1,0x0
    80023860:	f2058593          	addi	a1,a1,-224 # 8002377c <_ZL11workerBodyAPv>
    80023864:	fd040513          	addi	a0,s0,-48
    80023868:	ffffd097          	auipc	ra,0xffffd
    8002386c:	c94080e7          	jalr	-876(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80023870:	00005517          	auipc	a0,0x5
    80023874:	a6050513          	addi	a0,a0,-1440 # 800282d0 <CONSOLE_STATUS+0x2c0>
    80023878:	00001097          	auipc	ra,0x1
    8002387c:	958080e7          	jalr	-1704(ra) # 800241d0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80023880:	00000613          	li	a2,0
    80023884:	00000597          	auipc	a1,0x0
    80023888:	e2458593          	addi	a1,a1,-476 # 800236a8 <_ZL11workerBodyBPv>
    8002388c:	fd840513          	addi	a0,s0,-40
    80023890:	ffffd097          	auipc	ra,0xffffd
    80023894:	c6c080e7          	jalr	-916(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80023898:	00005517          	auipc	a0,0x5
    8002389c:	a5050513          	addi	a0,a0,-1456 # 800282e8 <CONSOLE_STATUS+0x2d8>
    800238a0:	00001097          	auipc	ra,0x1
    800238a4:	930080e7          	jalr	-1744(ra) # 800241d0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800238a8:	00000613          	li	a2,0
    800238ac:	00000597          	auipc	a1,0x0
    800238b0:	c7c58593          	addi	a1,a1,-900 # 80023528 <_ZL11workerBodyCPv>
    800238b4:	fe040513          	addi	a0,s0,-32
    800238b8:	ffffd097          	auipc	ra,0xffffd
    800238bc:	c44080e7          	jalr	-956(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800238c0:	00005517          	auipc	a0,0x5
    800238c4:	a4050513          	addi	a0,a0,-1472 # 80028300 <CONSOLE_STATUS+0x2f0>
    800238c8:	00001097          	auipc	ra,0x1
    800238cc:	908080e7          	jalr	-1784(ra) # 800241d0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800238d0:	00000613          	li	a2,0
    800238d4:	00000597          	auipc	a1,0x0
    800238d8:	b0c58593          	addi	a1,a1,-1268 # 800233e0 <_ZL11workerBodyDPv>
    800238dc:	fe840513          	addi	a0,s0,-24
    800238e0:	ffffd097          	auipc	ra,0xffffd
    800238e4:	c1c080e7          	jalr	-996(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800238e8:	00005517          	auipc	a0,0x5
    800238ec:	a3050513          	addi	a0,a0,-1488 # 80028318 <CONSOLE_STATUS+0x308>
    800238f0:	00001097          	auipc	ra,0x1
    800238f4:	8e0080e7          	jalr	-1824(ra) # 800241d0 <_Z11printStringPKc>
    800238f8:	00c0006f          	j	80023904 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800238fc:	ffffd097          	auipc	ra,0xffffd
    80023900:	be0080e7          	jalr	-1056(ra) # 800204dc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80023904:	00007797          	auipc	a5,0x7
    80023908:	3477c783          	lbu	a5,839(a5) # 8002ac4b <_ZL9finishedA>
    8002390c:	fe0788e3          	beqz	a5,800238fc <_Z18Threads_C_API_testv+0xb4>
    80023910:	00007797          	auipc	a5,0x7
    80023914:	33a7c783          	lbu	a5,826(a5) # 8002ac4a <_ZL9finishedB>
    80023918:	fe0782e3          	beqz	a5,800238fc <_Z18Threads_C_API_testv+0xb4>
    8002391c:	00007797          	auipc	a5,0x7
    80023920:	32d7c783          	lbu	a5,813(a5) # 8002ac49 <_ZL9finishedC>
    80023924:	fc078ce3          	beqz	a5,800238fc <_Z18Threads_C_API_testv+0xb4>
    80023928:	00007797          	auipc	a5,0x7
    8002392c:	3207c783          	lbu	a5,800(a5) # 8002ac48 <_ZL9finishedD>
    80023930:	fc0786e3          	beqz	a5,800238fc <_Z18Threads_C_API_testv+0xb4>
    }

}
    80023934:	02813083          	ld	ra,40(sp)
    80023938:	02013403          	ld	s0,32(sp)
    8002393c:	03010113          	addi	sp,sp,48
    80023940:	00008067          	ret

0000000080023944 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80023944:	fd010113          	addi	sp,sp,-48
    80023948:	02113423          	sd	ra,40(sp)
    8002394c:	02813023          	sd	s0,32(sp)
    80023950:	00913c23          	sd	s1,24(sp)
    80023954:	01213823          	sd	s2,16(sp)
    80023958:	01313423          	sd	s3,8(sp)
    8002395c:	03010413          	addi	s0,sp,48
    80023960:	00050993          	mv	s3,a0
    80023964:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80023968:	00000913          	li	s2,0
    8002396c:	00c0006f          	j	80023978 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80023970:	ffffe097          	auipc	ra,0xffffe
    80023974:	d90080e7          	jalr	-624(ra) # 80021700 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80023978:	ffffd097          	auipc	ra,0xffffd
    8002397c:	d08080e7          	jalr	-760(ra) # 80020680 <_Z4getcv>
    80023980:	0005059b          	sext.w	a1,a0
    80023984:	01b00793          	li	a5,27
    80023988:	02f58a63          	beq	a1,a5,800239bc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8002398c:	0084b503          	ld	a0,8(s1)
    80023990:	00001097          	auipc	ra,0x1
    80023994:	c64080e7          	jalr	-924(ra) # 800245f4 <_ZN9BufferCPP3putEi>
        i++;
    80023998:	0019071b          	addiw	a4,s2,1
    8002399c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800239a0:	0004a683          	lw	a3,0(s1)
    800239a4:	0026979b          	slliw	a5,a3,0x2
    800239a8:	00d787bb          	addw	a5,a5,a3
    800239ac:	0017979b          	slliw	a5,a5,0x1
    800239b0:	02f767bb          	remw	a5,a4,a5
    800239b4:	fc0792e3          	bnez	a5,80023978 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800239b8:	fb9ff06f          	j	80023970 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800239bc:	00100793          	li	a5,1
    800239c0:	00007717          	auipc	a4,0x7
    800239c4:	28f72823          	sw	a5,656(a4) # 8002ac50 <_ZL9threadEnd>
    td->buffer->put('!');
    800239c8:	0209b783          	ld	a5,32(s3)
    800239cc:	02100593          	li	a1,33
    800239d0:	0087b503          	ld	a0,8(a5)
    800239d4:	00001097          	auipc	ra,0x1
    800239d8:	c20080e7          	jalr	-992(ra) # 800245f4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800239dc:	0104b503          	ld	a0,16(s1)
    800239e0:	ffffe097          	auipc	ra,0xffffe
    800239e4:	e50080e7          	jalr	-432(ra) # 80021830 <_ZN9Semaphore6signalEv>
}
    800239e8:	02813083          	ld	ra,40(sp)
    800239ec:	02013403          	ld	s0,32(sp)
    800239f0:	01813483          	ld	s1,24(sp)
    800239f4:	01013903          	ld	s2,16(sp)
    800239f8:	00813983          	ld	s3,8(sp)
    800239fc:	03010113          	addi	sp,sp,48
    80023a00:	00008067          	ret

0000000080023a04 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80023a04:	fe010113          	addi	sp,sp,-32
    80023a08:	00113c23          	sd	ra,24(sp)
    80023a0c:	00813823          	sd	s0,16(sp)
    80023a10:	00913423          	sd	s1,8(sp)
    80023a14:	01213023          	sd	s2,0(sp)
    80023a18:	02010413          	addi	s0,sp,32
    80023a1c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80023a20:	00000913          	li	s2,0
    80023a24:	00c0006f          	j	80023a30 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80023a28:	ffffe097          	auipc	ra,0xffffe
    80023a2c:	cd8080e7          	jalr	-808(ra) # 80021700 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80023a30:	00007797          	auipc	a5,0x7
    80023a34:	2207a783          	lw	a5,544(a5) # 8002ac50 <_ZL9threadEnd>
    80023a38:	02079e63          	bnez	a5,80023a74 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80023a3c:	0004a583          	lw	a1,0(s1)
    80023a40:	0305859b          	addiw	a1,a1,48
    80023a44:	0084b503          	ld	a0,8(s1)
    80023a48:	00001097          	auipc	ra,0x1
    80023a4c:	bac080e7          	jalr	-1108(ra) # 800245f4 <_ZN9BufferCPP3putEi>
        i++;
    80023a50:	0019071b          	addiw	a4,s2,1
    80023a54:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80023a58:	0004a683          	lw	a3,0(s1)
    80023a5c:	0026979b          	slliw	a5,a3,0x2
    80023a60:	00d787bb          	addw	a5,a5,a3
    80023a64:	0017979b          	slliw	a5,a5,0x1
    80023a68:	02f767bb          	remw	a5,a4,a5
    80023a6c:	fc0792e3          	bnez	a5,80023a30 <_ZN12ProducerSync8producerEPv+0x2c>
    80023a70:	fb9ff06f          	j	80023a28 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80023a74:	0104b503          	ld	a0,16(s1)
    80023a78:	ffffe097          	auipc	ra,0xffffe
    80023a7c:	db8080e7          	jalr	-584(ra) # 80021830 <_ZN9Semaphore6signalEv>
}
    80023a80:	01813083          	ld	ra,24(sp)
    80023a84:	01013403          	ld	s0,16(sp)
    80023a88:	00813483          	ld	s1,8(sp)
    80023a8c:	00013903          	ld	s2,0(sp)
    80023a90:	02010113          	addi	sp,sp,32
    80023a94:	00008067          	ret

0000000080023a98 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80023a98:	fd010113          	addi	sp,sp,-48
    80023a9c:	02113423          	sd	ra,40(sp)
    80023aa0:	02813023          	sd	s0,32(sp)
    80023aa4:	00913c23          	sd	s1,24(sp)
    80023aa8:	01213823          	sd	s2,16(sp)
    80023aac:	01313423          	sd	s3,8(sp)
    80023ab0:	01413023          	sd	s4,0(sp)
    80023ab4:	03010413          	addi	s0,sp,48
    80023ab8:	00050993          	mv	s3,a0
    80023abc:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80023ac0:	00000a13          	li	s4,0
    80023ac4:	01c0006f          	j	80023ae0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80023ac8:	ffffe097          	auipc	ra,0xffffe
    80023acc:	c38080e7          	jalr	-968(ra) # 80021700 <_ZN6Thread8dispatchEv>
    80023ad0:	0500006f          	j	80023b20 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80023ad4:	00a00513          	li	a0,10
    80023ad8:	ffffd097          	auipc	ra,0xffffd
    80023adc:	bcc080e7          	jalr	-1076(ra) # 800206a4 <_Z4putcc>
    while (!threadEnd) {
    80023ae0:	00007797          	auipc	a5,0x7
    80023ae4:	1707a783          	lw	a5,368(a5) # 8002ac50 <_ZL9threadEnd>
    80023ae8:	06079263          	bnez	a5,80023b4c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80023aec:	00893503          	ld	a0,8(s2)
    80023af0:	00001097          	auipc	ra,0x1
    80023af4:	b94080e7          	jalr	-1132(ra) # 80024684 <_ZN9BufferCPP3getEv>
        i++;
    80023af8:	001a049b          	addiw	s1,s4,1
    80023afc:	00048a1b          	sext.w	s4,s1
        putc(key);
    80023b00:	0ff57513          	andi	a0,a0,255
    80023b04:	ffffd097          	auipc	ra,0xffffd
    80023b08:	ba0080e7          	jalr	-1120(ra) # 800206a4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80023b0c:	00092703          	lw	a4,0(s2)
    80023b10:	0027179b          	slliw	a5,a4,0x2
    80023b14:	00e787bb          	addw	a5,a5,a4
    80023b18:	02f4e7bb          	remw	a5,s1,a5
    80023b1c:	fa0786e3          	beqz	a5,80023ac8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80023b20:	05000793          	li	a5,80
    80023b24:	02f4e4bb          	remw	s1,s1,a5
    80023b28:	fa049ce3          	bnez	s1,80023ae0 <_ZN12ConsumerSync8consumerEPv+0x48>
    80023b2c:	fa9ff06f          	j	80023ad4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80023b30:	0209b783          	ld	a5,32(s3)
    80023b34:	0087b503          	ld	a0,8(a5)
    80023b38:	00001097          	auipc	ra,0x1
    80023b3c:	b4c080e7          	jalr	-1204(ra) # 80024684 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80023b40:	0ff57513          	andi	a0,a0,255
    80023b44:	ffffe097          	auipc	ra,0xffffe
    80023b48:	dac080e7          	jalr	-596(ra) # 800218f0 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80023b4c:	0209b783          	ld	a5,32(s3)
    80023b50:	0087b503          	ld	a0,8(a5)
    80023b54:	00001097          	auipc	ra,0x1
    80023b58:	bbc080e7          	jalr	-1092(ra) # 80024710 <_ZN9BufferCPP6getCntEv>
    80023b5c:	fca04ae3          	bgtz	a0,80023b30 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80023b60:	01093503          	ld	a0,16(s2)
    80023b64:	ffffe097          	auipc	ra,0xffffe
    80023b68:	ccc080e7          	jalr	-820(ra) # 80021830 <_ZN9Semaphore6signalEv>
}
    80023b6c:	02813083          	ld	ra,40(sp)
    80023b70:	02013403          	ld	s0,32(sp)
    80023b74:	01813483          	ld	s1,24(sp)
    80023b78:	01013903          	ld	s2,16(sp)
    80023b7c:	00813983          	ld	s3,8(sp)
    80023b80:	00013a03          	ld	s4,0(sp)
    80023b84:	03010113          	addi	sp,sp,48
    80023b88:	00008067          	ret

0000000080023b8c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80023b8c:	f8010113          	addi	sp,sp,-128
    80023b90:	06113c23          	sd	ra,120(sp)
    80023b94:	06813823          	sd	s0,112(sp)
    80023b98:	06913423          	sd	s1,104(sp)
    80023b9c:	07213023          	sd	s2,96(sp)
    80023ba0:	05313c23          	sd	s3,88(sp)
    80023ba4:	05413823          	sd	s4,80(sp)
    80023ba8:	05513423          	sd	s5,72(sp)
    80023bac:	05613023          	sd	s6,64(sp)
    80023bb0:	03713c23          	sd	s7,56(sp)
    80023bb4:	03813823          	sd	s8,48(sp)
    80023bb8:	03913423          	sd	s9,40(sp)
    80023bbc:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80023bc0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80023bc4:	00004517          	auipc	a0,0x4
    80023bc8:	56c50513          	addi	a0,a0,1388 # 80028130 <CONSOLE_STATUS+0x120>
    80023bcc:	00000097          	auipc	ra,0x0
    80023bd0:	604080e7          	jalr	1540(ra) # 800241d0 <_Z11printStringPKc>
    getString(input, 30);
    80023bd4:	01e00593          	li	a1,30
    80023bd8:	f8040493          	addi	s1,s0,-128
    80023bdc:	00048513          	mv	a0,s1
    80023be0:	00000097          	auipc	ra,0x0
    80023be4:	678080e7          	jalr	1656(ra) # 80024258 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80023be8:	00048513          	mv	a0,s1
    80023bec:	00000097          	auipc	ra,0x0
    80023bf0:	744080e7          	jalr	1860(ra) # 80024330 <_Z11stringToIntPKc>
    80023bf4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80023bf8:	00004517          	auipc	a0,0x4
    80023bfc:	55850513          	addi	a0,a0,1368 # 80028150 <CONSOLE_STATUS+0x140>
    80023c00:	00000097          	auipc	ra,0x0
    80023c04:	5d0080e7          	jalr	1488(ra) # 800241d0 <_Z11printStringPKc>
    getString(input, 30);
    80023c08:	01e00593          	li	a1,30
    80023c0c:	00048513          	mv	a0,s1
    80023c10:	00000097          	auipc	ra,0x0
    80023c14:	648080e7          	jalr	1608(ra) # 80024258 <_Z9getStringPci>
    n = stringToInt(input);
    80023c18:	00048513          	mv	a0,s1
    80023c1c:	00000097          	auipc	ra,0x0
    80023c20:	714080e7          	jalr	1812(ra) # 80024330 <_Z11stringToIntPKc>
    80023c24:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80023c28:	00004517          	auipc	a0,0x4
    80023c2c:	54850513          	addi	a0,a0,1352 # 80028170 <CONSOLE_STATUS+0x160>
    80023c30:	00000097          	auipc	ra,0x0
    80023c34:	5a0080e7          	jalr	1440(ra) # 800241d0 <_Z11printStringPKc>
    80023c38:	00000613          	li	a2,0
    80023c3c:	00a00593          	li	a1,10
    80023c40:	00090513          	mv	a0,s2
    80023c44:	00000097          	auipc	ra,0x0
    80023c48:	73c080e7          	jalr	1852(ra) # 80024380 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80023c4c:	00004517          	auipc	a0,0x4
    80023c50:	53c50513          	addi	a0,a0,1340 # 80028188 <CONSOLE_STATUS+0x178>
    80023c54:	00000097          	auipc	ra,0x0
    80023c58:	57c080e7          	jalr	1404(ra) # 800241d0 <_Z11printStringPKc>
    80023c5c:	00000613          	li	a2,0
    80023c60:	00a00593          	li	a1,10
    80023c64:	00048513          	mv	a0,s1
    80023c68:	00000097          	auipc	ra,0x0
    80023c6c:	718080e7          	jalr	1816(ra) # 80024380 <_Z8printIntiii>
    printString(".\n");
    80023c70:	00004517          	auipc	a0,0x4
    80023c74:	53050513          	addi	a0,a0,1328 # 800281a0 <CONSOLE_STATUS+0x190>
    80023c78:	00000097          	auipc	ra,0x0
    80023c7c:	558080e7          	jalr	1368(ra) # 800241d0 <_Z11printStringPKc>
    if(threadNum > n) {
    80023c80:	0324c463          	blt	s1,s2,80023ca8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80023c84:	03205c63          	blez	s2,80023cbc <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80023c88:	03800513          	li	a0,56
    80023c8c:	ffffe097          	auipc	ra,0xffffe
    80023c90:	908080e7          	jalr	-1784(ra) # 80021594 <_Znwm>
    80023c94:	00050a93          	mv	s5,a0
    80023c98:	00048593          	mv	a1,s1
    80023c9c:	00001097          	auipc	ra,0x1
    80023ca0:	804080e7          	jalr	-2044(ra) # 800244a0 <_ZN9BufferCPPC1Ei>
    80023ca4:	0300006f          	j	80023cd4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80023ca8:	00004517          	auipc	a0,0x4
    80023cac:	50050513          	addi	a0,a0,1280 # 800281a8 <CONSOLE_STATUS+0x198>
    80023cb0:	00000097          	auipc	ra,0x0
    80023cb4:	520080e7          	jalr	1312(ra) # 800241d0 <_Z11printStringPKc>
        return;
    80023cb8:	0140006f          	j	80023ccc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80023cbc:	00004517          	auipc	a0,0x4
    80023cc0:	52c50513          	addi	a0,a0,1324 # 800281e8 <CONSOLE_STATUS+0x1d8>
    80023cc4:	00000097          	auipc	ra,0x0
    80023cc8:	50c080e7          	jalr	1292(ra) # 800241d0 <_Z11printStringPKc>
        return;
    80023ccc:	000b8113          	mv	sp,s7
    80023cd0:	2380006f          	j	80023f08 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80023cd4:	01000513          	li	a0,16
    80023cd8:	ffffe097          	auipc	ra,0xffffe
    80023cdc:	8bc080e7          	jalr	-1860(ra) # 80021594 <_Znwm>
    80023ce0:	00050493          	mv	s1,a0
    80023ce4:	00000593          	li	a1,0
    80023ce8:	ffffe097          	auipc	ra,0xffffe
    80023cec:	ae4080e7          	jalr	-1308(ra) # 800217cc <_ZN9SemaphoreC1Ej>
    80023cf0:	00007797          	auipc	a5,0x7
    80023cf4:	f697b423          	sd	s1,-152(a5) # 8002ac58 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80023cf8:	00391793          	slli	a5,s2,0x3
    80023cfc:	00f78793          	addi	a5,a5,15
    80023d00:	ff07f793          	andi	a5,a5,-16
    80023d04:	40f10133          	sub	sp,sp,a5
    80023d08:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80023d0c:	0019071b          	addiw	a4,s2,1
    80023d10:	00171793          	slli	a5,a4,0x1
    80023d14:	00e787b3          	add	a5,a5,a4
    80023d18:	00379793          	slli	a5,a5,0x3
    80023d1c:	00f78793          	addi	a5,a5,15
    80023d20:	ff07f793          	andi	a5,a5,-16
    80023d24:	40f10133          	sub	sp,sp,a5
    80023d28:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80023d2c:	00191c13          	slli	s8,s2,0x1
    80023d30:	012c07b3          	add	a5,s8,s2
    80023d34:	00379793          	slli	a5,a5,0x3
    80023d38:	00fa07b3          	add	a5,s4,a5
    80023d3c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80023d40:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80023d44:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80023d48:	02800513          	li	a0,40
    80023d4c:	ffffe097          	auipc	ra,0xffffe
    80023d50:	848080e7          	jalr	-1976(ra) # 80021594 <_Znwm>
    80023d54:	00050b13          	mv	s6,a0
    80023d58:	012c0c33          	add	s8,s8,s2
    80023d5c:	003c1c13          	slli	s8,s8,0x3
    80023d60:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80023d64:	ffffe097          	auipc	ra,0xffffe
    80023d68:	918080e7          	jalr	-1768(ra) # 8002167c <_ZN6ThreadC1Ev>
    80023d6c:	00007797          	auipc	a5,0x7
    80023d70:	b3c78793          	addi	a5,a5,-1220 # 8002a8a8 <_ZTV12ConsumerSync+0x10>
    80023d74:	00fb3023          	sd	a5,0(s6)
    80023d78:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80023d7c:	000b0513          	mv	a0,s6
    80023d80:	ffffe097          	auipc	ra,0xffffe
    80023d84:	92c080e7          	jalr	-1748(ra) # 800216ac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80023d88:	00000493          	li	s1,0
    80023d8c:	0380006f          	j	80023dc4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80023d90:	00007797          	auipc	a5,0x7
    80023d94:	af078793          	addi	a5,a5,-1296 # 8002a880 <_ZTV12ProducerSync+0x10>
    80023d98:	00fcb023          	sd	a5,0(s9)
    80023d9c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80023da0:	00349793          	slli	a5,s1,0x3
    80023da4:	00f987b3          	add	a5,s3,a5
    80023da8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80023dac:	00349793          	slli	a5,s1,0x3
    80023db0:	00f987b3          	add	a5,s3,a5
    80023db4:	0007b503          	ld	a0,0(a5)
    80023db8:	ffffe097          	auipc	ra,0xffffe
    80023dbc:	8f4080e7          	jalr	-1804(ra) # 800216ac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80023dc0:	0014849b          	addiw	s1,s1,1
    80023dc4:	0b24d063          	bge	s1,s2,80023e64 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80023dc8:	00149793          	slli	a5,s1,0x1
    80023dcc:	009787b3          	add	a5,a5,s1
    80023dd0:	00379793          	slli	a5,a5,0x3
    80023dd4:	00fa07b3          	add	a5,s4,a5
    80023dd8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80023ddc:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80023de0:	00007717          	auipc	a4,0x7
    80023de4:	e7873703          	ld	a4,-392(a4) # 8002ac58 <_ZL10waitForAll>
    80023de8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80023dec:	02905863          	blez	s1,80023e1c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80023df0:	02800513          	li	a0,40
    80023df4:	ffffd097          	auipc	ra,0xffffd
    80023df8:	7a0080e7          	jalr	1952(ra) # 80021594 <_Znwm>
    80023dfc:	00050c93          	mv	s9,a0
    80023e00:	00149c13          	slli	s8,s1,0x1
    80023e04:	009c0c33          	add	s8,s8,s1
    80023e08:	003c1c13          	slli	s8,s8,0x3
    80023e0c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80023e10:	ffffe097          	auipc	ra,0xffffe
    80023e14:	86c080e7          	jalr	-1940(ra) # 8002167c <_ZN6ThreadC1Ev>
    80023e18:	f79ff06f          	j	80023d90 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80023e1c:	02800513          	li	a0,40
    80023e20:	ffffd097          	auipc	ra,0xffffd
    80023e24:	774080e7          	jalr	1908(ra) # 80021594 <_Znwm>
    80023e28:	00050c93          	mv	s9,a0
    80023e2c:	00149c13          	slli	s8,s1,0x1
    80023e30:	009c0c33          	add	s8,s8,s1
    80023e34:	003c1c13          	slli	s8,s8,0x3
    80023e38:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80023e3c:	ffffe097          	auipc	ra,0xffffe
    80023e40:	840080e7          	jalr	-1984(ra) # 8002167c <_ZN6ThreadC1Ev>
    80023e44:	00007797          	auipc	a5,0x7
    80023e48:	a1478793          	addi	a5,a5,-1516 # 8002a858 <_ZTV16ProducerKeyboard+0x10>
    80023e4c:	00fcb023          	sd	a5,0(s9)
    80023e50:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80023e54:	00349793          	slli	a5,s1,0x3
    80023e58:	00f987b3          	add	a5,s3,a5
    80023e5c:	0197b023          	sd	s9,0(a5)
    80023e60:	f4dff06f          	j	80023dac <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80023e64:	ffffe097          	auipc	ra,0xffffe
    80023e68:	89c080e7          	jalr	-1892(ra) # 80021700 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80023e6c:	00000493          	li	s1,0
    80023e70:	00994e63          	blt	s2,s1,80023e8c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80023e74:	00007517          	auipc	a0,0x7
    80023e78:	de453503          	ld	a0,-540(a0) # 8002ac58 <_ZL10waitForAll>
    80023e7c:	ffffe097          	auipc	ra,0xffffe
    80023e80:	988080e7          	jalr	-1656(ra) # 80021804 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80023e84:	0014849b          	addiw	s1,s1,1
    80023e88:	fe9ff06f          	j	80023e70 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80023e8c:	00000493          	li	s1,0
    80023e90:	0080006f          	j	80023e98 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80023e94:	0014849b          	addiw	s1,s1,1
    80023e98:	0324d263          	bge	s1,s2,80023ebc <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80023e9c:	00349793          	slli	a5,s1,0x3
    80023ea0:	00f987b3          	add	a5,s3,a5
    80023ea4:	0007b503          	ld	a0,0(a5)
    80023ea8:	fe0506e3          	beqz	a0,80023e94 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80023eac:	00053783          	ld	a5,0(a0)
    80023eb0:	0087b783          	ld	a5,8(a5)
    80023eb4:	000780e7          	jalr	a5
    80023eb8:	fddff06f          	j	80023e94 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80023ebc:	000b0a63          	beqz	s6,80023ed0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80023ec0:	000b3783          	ld	a5,0(s6)
    80023ec4:	0087b783          	ld	a5,8(a5)
    80023ec8:	000b0513          	mv	a0,s6
    80023ecc:	000780e7          	jalr	a5
    delete waitForAll;
    80023ed0:	00007517          	auipc	a0,0x7
    80023ed4:	d8853503          	ld	a0,-632(a0) # 8002ac58 <_ZL10waitForAll>
    80023ed8:	00050863          	beqz	a0,80023ee8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80023edc:	00053783          	ld	a5,0(a0)
    80023ee0:	0087b783          	ld	a5,8(a5)
    80023ee4:	000780e7          	jalr	a5
    delete buffer;
    80023ee8:	000a8e63          	beqz	s5,80023f04 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80023eec:	000a8513          	mv	a0,s5
    80023ef0:	00001097          	auipc	ra,0x1
    80023ef4:	8a8080e7          	jalr	-1880(ra) # 80024798 <_ZN9BufferCPPD1Ev>
    80023ef8:	000a8513          	mv	a0,s5
    80023efc:	ffffd097          	auipc	ra,0xffffd
    80023f00:	6c0080e7          	jalr	1728(ra) # 800215bc <_ZdlPv>
    80023f04:	000b8113          	mv	sp,s7

}
    80023f08:	f8040113          	addi	sp,s0,-128
    80023f0c:	07813083          	ld	ra,120(sp)
    80023f10:	07013403          	ld	s0,112(sp)
    80023f14:	06813483          	ld	s1,104(sp)
    80023f18:	06013903          	ld	s2,96(sp)
    80023f1c:	05813983          	ld	s3,88(sp)
    80023f20:	05013a03          	ld	s4,80(sp)
    80023f24:	04813a83          	ld	s5,72(sp)
    80023f28:	04013b03          	ld	s6,64(sp)
    80023f2c:	03813b83          	ld	s7,56(sp)
    80023f30:	03013c03          	ld	s8,48(sp)
    80023f34:	02813c83          	ld	s9,40(sp)
    80023f38:	08010113          	addi	sp,sp,128
    80023f3c:	00008067          	ret
    80023f40:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80023f44:	000a8513          	mv	a0,s5
    80023f48:	ffffd097          	auipc	ra,0xffffd
    80023f4c:	674080e7          	jalr	1652(ra) # 800215bc <_ZdlPv>
    80023f50:	00048513          	mv	a0,s1
    80023f54:	00008097          	auipc	ra,0x8
    80023f58:	de4080e7          	jalr	-540(ra) # 8002bd38 <_Unwind_Resume>
    80023f5c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80023f60:	00048513          	mv	a0,s1
    80023f64:	ffffd097          	auipc	ra,0xffffd
    80023f68:	658080e7          	jalr	1624(ra) # 800215bc <_ZdlPv>
    80023f6c:	00090513          	mv	a0,s2
    80023f70:	00008097          	auipc	ra,0x8
    80023f74:	dc8080e7          	jalr	-568(ra) # 8002bd38 <_Unwind_Resume>
    80023f78:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80023f7c:	000b0513          	mv	a0,s6
    80023f80:	ffffd097          	auipc	ra,0xffffd
    80023f84:	63c080e7          	jalr	1596(ra) # 800215bc <_ZdlPv>
    80023f88:	00048513          	mv	a0,s1
    80023f8c:	00008097          	auipc	ra,0x8
    80023f90:	dac080e7          	jalr	-596(ra) # 8002bd38 <_Unwind_Resume>
    80023f94:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80023f98:	000c8513          	mv	a0,s9
    80023f9c:	ffffd097          	auipc	ra,0xffffd
    80023fa0:	620080e7          	jalr	1568(ra) # 800215bc <_ZdlPv>
    80023fa4:	00048513          	mv	a0,s1
    80023fa8:	00008097          	auipc	ra,0x8
    80023fac:	d90080e7          	jalr	-624(ra) # 8002bd38 <_Unwind_Resume>
    80023fb0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80023fb4:	000c8513          	mv	a0,s9
    80023fb8:	ffffd097          	auipc	ra,0xffffd
    80023fbc:	604080e7          	jalr	1540(ra) # 800215bc <_ZdlPv>
    80023fc0:	00048513          	mv	a0,s1
    80023fc4:	00008097          	auipc	ra,0x8
    80023fc8:	d74080e7          	jalr	-652(ra) # 8002bd38 <_Unwind_Resume>

0000000080023fcc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80023fcc:	ff010113          	addi	sp,sp,-16
    80023fd0:	00113423          	sd	ra,8(sp)
    80023fd4:	00813023          	sd	s0,0(sp)
    80023fd8:	01010413          	addi	s0,sp,16
    80023fdc:	00007797          	auipc	a5,0x7
    80023fe0:	8cc78793          	addi	a5,a5,-1844 # 8002a8a8 <_ZTV12ConsumerSync+0x10>
    80023fe4:	00f53023          	sd	a5,0(a0)
    80023fe8:	ffffd097          	auipc	ra,0xffffd
    80023fec:	4d8080e7          	jalr	1240(ra) # 800214c0 <_ZN6ThreadD1Ev>
    80023ff0:	00813083          	ld	ra,8(sp)
    80023ff4:	00013403          	ld	s0,0(sp)
    80023ff8:	01010113          	addi	sp,sp,16
    80023ffc:	00008067          	ret

0000000080024000 <_ZN12ConsumerSyncD0Ev>:
    80024000:	fe010113          	addi	sp,sp,-32
    80024004:	00113c23          	sd	ra,24(sp)
    80024008:	00813823          	sd	s0,16(sp)
    8002400c:	00913423          	sd	s1,8(sp)
    80024010:	02010413          	addi	s0,sp,32
    80024014:	00050493          	mv	s1,a0
    80024018:	00007797          	auipc	a5,0x7
    8002401c:	89078793          	addi	a5,a5,-1904 # 8002a8a8 <_ZTV12ConsumerSync+0x10>
    80024020:	00f53023          	sd	a5,0(a0)
    80024024:	ffffd097          	auipc	ra,0xffffd
    80024028:	49c080e7          	jalr	1180(ra) # 800214c0 <_ZN6ThreadD1Ev>
    8002402c:	00048513          	mv	a0,s1
    80024030:	ffffd097          	auipc	ra,0xffffd
    80024034:	58c080e7          	jalr	1420(ra) # 800215bc <_ZdlPv>
    80024038:	01813083          	ld	ra,24(sp)
    8002403c:	01013403          	ld	s0,16(sp)
    80024040:	00813483          	ld	s1,8(sp)
    80024044:	02010113          	addi	sp,sp,32
    80024048:	00008067          	ret

000000008002404c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8002404c:	ff010113          	addi	sp,sp,-16
    80024050:	00113423          	sd	ra,8(sp)
    80024054:	00813023          	sd	s0,0(sp)
    80024058:	01010413          	addi	s0,sp,16
    8002405c:	00007797          	auipc	a5,0x7
    80024060:	82478793          	addi	a5,a5,-2012 # 8002a880 <_ZTV12ProducerSync+0x10>
    80024064:	00f53023          	sd	a5,0(a0)
    80024068:	ffffd097          	auipc	ra,0xffffd
    8002406c:	458080e7          	jalr	1112(ra) # 800214c0 <_ZN6ThreadD1Ev>
    80024070:	00813083          	ld	ra,8(sp)
    80024074:	00013403          	ld	s0,0(sp)
    80024078:	01010113          	addi	sp,sp,16
    8002407c:	00008067          	ret

0000000080024080 <_ZN12ProducerSyncD0Ev>:
    80024080:	fe010113          	addi	sp,sp,-32
    80024084:	00113c23          	sd	ra,24(sp)
    80024088:	00813823          	sd	s0,16(sp)
    8002408c:	00913423          	sd	s1,8(sp)
    80024090:	02010413          	addi	s0,sp,32
    80024094:	00050493          	mv	s1,a0
    80024098:	00006797          	auipc	a5,0x6
    8002409c:	7e878793          	addi	a5,a5,2024 # 8002a880 <_ZTV12ProducerSync+0x10>
    800240a0:	00f53023          	sd	a5,0(a0)
    800240a4:	ffffd097          	auipc	ra,0xffffd
    800240a8:	41c080e7          	jalr	1052(ra) # 800214c0 <_ZN6ThreadD1Ev>
    800240ac:	00048513          	mv	a0,s1
    800240b0:	ffffd097          	auipc	ra,0xffffd
    800240b4:	50c080e7          	jalr	1292(ra) # 800215bc <_ZdlPv>
    800240b8:	01813083          	ld	ra,24(sp)
    800240bc:	01013403          	ld	s0,16(sp)
    800240c0:	00813483          	ld	s1,8(sp)
    800240c4:	02010113          	addi	sp,sp,32
    800240c8:	00008067          	ret

00000000800240cc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800240cc:	ff010113          	addi	sp,sp,-16
    800240d0:	00113423          	sd	ra,8(sp)
    800240d4:	00813023          	sd	s0,0(sp)
    800240d8:	01010413          	addi	s0,sp,16
    800240dc:	00006797          	auipc	a5,0x6
    800240e0:	77c78793          	addi	a5,a5,1916 # 8002a858 <_ZTV16ProducerKeyboard+0x10>
    800240e4:	00f53023          	sd	a5,0(a0)
    800240e8:	ffffd097          	auipc	ra,0xffffd
    800240ec:	3d8080e7          	jalr	984(ra) # 800214c0 <_ZN6ThreadD1Ev>
    800240f0:	00813083          	ld	ra,8(sp)
    800240f4:	00013403          	ld	s0,0(sp)
    800240f8:	01010113          	addi	sp,sp,16
    800240fc:	00008067          	ret

0000000080024100 <_ZN16ProducerKeyboardD0Ev>:
    80024100:	fe010113          	addi	sp,sp,-32
    80024104:	00113c23          	sd	ra,24(sp)
    80024108:	00813823          	sd	s0,16(sp)
    8002410c:	00913423          	sd	s1,8(sp)
    80024110:	02010413          	addi	s0,sp,32
    80024114:	00050493          	mv	s1,a0
    80024118:	00006797          	auipc	a5,0x6
    8002411c:	74078793          	addi	a5,a5,1856 # 8002a858 <_ZTV16ProducerKeyboard+0x10>
    80024120:	00f53023          	sd	a5,0(a0)
    80024124:	ffffd097          	auipc	ra,0xffffd
    80024128:	39c080e7          	jalr	924(ra) # 800214c0 <_ZN6ThreadD1Ev>
    8002412c:	00048513          	mv	a0,s1
    80024130:	ffffd097          	auipc	ra,0xffffd
    80024134:	48c080e7          	jalr	1164(ra) # 800215bc <_ZdlPv>
    80024138:	01813083          	ld	ra,24(sp)
    8002413c:	01013403          	ld	s0,16(sp)
    80024140:	00813483          	ld	s1,8(sp)
    80024144:	02010113          	addi	sp,sp,32
    80024148:	00008067          	ret

000000008002414c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8002414c:	ff010113          	addi	sp,sp,-16
    80024150:	00113423          	sd	ra,8(sp)
    80024154:	00813023          	sd	s0,0(sp)
    80024158:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8002415c:	02053583          	ld	a1,32(a0)
    80024160:	fffff097          	auipc	ra,0xfffff
    80024164:	7e4080e7          	jalr	2020(ra) # 80023944 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80024168:	00813083          	ld	ra,8(sp)
    8002416c:	00013403          	ld	s0,0(sp)
    80024170:	01010113          	addi	sp,sp,16
    80024174:	00008067          	ret

0000000080024178 <_ZN12ProducerSync3runEv>:
    void run() override {
    80024178:	ff010113          	addi	sp,sp,-16
    8002417c:	00113423          	sd	ra,8(sp)
    80024180:	00813023          	sd	s0,0(sp)
    80024184:	01010413          	addi	s0,sp,16
        producer(td);
    80024188:	02053583          	ld	a1,32(a0)
    8002418c:	00000097          	auipc	ra,0x0
    80024190:	878080e7          	jalr	-1928(ra) # 80023a04 <_ZN12ProducerSync8producerEPv>
    }
    80024194:	00813083          	ld	ra,8(sp)
    80024198:	00013403          	ld	s0,0(sp)
    8002419c:	01010113          	addi	sp,sp,16
    800241a0:	00008067          	ret

00000000800241a4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800241a4:	ff010113          	addi	sp,sp,-16
    800241a8:	00113423          	sd	ra,8(sp)
    800241ac:	00813023          	sd	s0,0(sp)
    800241b0:	01010413          	addi	s0,sp,16
        consumer(td);
    800241b4:	02053583          	ld	a1,32(a0)
    800241b8:	00000097          	auipc	ra,0x0
    800241bc:	8e0080e7          	jalr	-1824(ra) # 80023a98 <_ZN12ConsumerSync8consumerEPv>
    }
    800241c0:	00813083          	ld	ra,8(sp)
    800241c4:	00013403          	ld	s0,0(sp)
    800241c8:	01010113          	addi	sp,sp,16
    800241cc:	00008067          	ret

00000000800241d0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800241d0:	fe010113          	addi	sp,sp,-32
    800241d4:	00113c23          	sd	ra,24(sp)
    800241d8:	00813823          	sd	s0,16(sp)
    800241dc:	00913423          	sd	s1,8(sp)
    800241e0:	02010413          	addi	s0,sp,32
    800241e4:	00050493          	mv	s1,a0
    LOCK();
    800241e8:	00100613          	li	a2,1
    800241ec:	00000593          	li	a1,0
    800241f0:	00007517          	auipc	a0,0x7
    800241f4:	a7050513          	addi	a0,a0,-1424 # 8002ac60 <lockPrint>
    800241f8:	ffffc097          	auipc	ra,0xffffc
    800241fc:	e08080e7          	jalr	-504(ra) # 80020000 <copy_and_swap>
    80024200:	00050863          	beqz	a0,80024210 <_Z11printStringPKc+0x40>
    80024204:	ffffc097          	auipc	ra,0xffffc
    80024208:	2d8080e7          	jalr	728(ra) # 800204dc <_Z15thread_dispatchv>
    8002420c:	fddff06f          	j	800241e8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80024210:	0004c503          	lbu	a0,0(s1)
    80024214:	00050a63          	beqz	a0,80024228 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80024218:	ffffc097          	auipc	ra,0xffffc
    8002421c:	48c080e7          	jalr	1164(ra) # 800206a4 <_Z4putcc>
        string++;
    80024220:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80024224:	fedff06f          	j	80024210 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80024228:	00000613          	li	a2,0
    8002422c:	00100593          	li	a1,1
    80024230:	00007517          	auipc	a0,0x7
    80024234:	a3050513          	addi	a0,a0,-1488 # 8002ac60 <lockPrint>
    80024238:	ffffc097          	auipc	ra,0xffffc
    8002423c:	dc8080e7          	jalr	-568(ra) # 80020000 <copy_and_swap>
    80024240:	fe0514e3          	bnez	a0,80024228 <_Z11printStringPKc+0x58>
}
    80024244:	01813083          	ld	ra,24(sp)
    80024248:	01013403          	ld	s0,16(sp)
    8002424c:	00813483          	ld	s1,8(sp)
    80024250:	02010113          	addi	sp,sp,32
    80024254:	00008067          	ret

0000000080024258 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80024258:	fd010113          	addi	sp,sp,-48
    8002425c:	02113423          	sd	ra,40(sp)
    80024260:	02813023          	sd	s0,32(sp)
    80024264:	00913c23          	sd	s1,24(sp)
    80024268:	01213823          	sd	s2,16(sp)
    8002426c:	01313423          	sd	s3,8(sp)
    80024270:	01413023          	sd	s4,0(sp)
    80024274:	03010413          	addi	s0,sp,48
    80024278:	00050993          	mv	s3,a0
    8002427c:	00058a13          	mv	s4,a1
    LOCK();
    80024280:	00100613          	li	a2,1
    80024284:	00000593          	li	a1,0
    80024288:	00007517          	auipc	a0,0x7
    8002428c:	9d850513          	addi	a0,a0,-1576 # 8002ac60 <lockPrint>
    80024290:	ffffc097          	auipc	ra,0xffffc
    80024294:	d70080e7          	jalr	-656(ra) # 80020000 <copy_and_swap>
    80024298:	00050863          	beqz	a0,800242a8 <_Z9getStringPci+0x50>
    8002429c:	ffffc097          	auipc	ra,0xffffc
    800242a0:	240080e7          	jalr	576(ra) # 800204dc <_Z15thread_dispatchv>
    800242a4:	fddff06f          	j	80024280 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800242a8:	00000913          	li	s2,0
    800242ac:	00090493          	mv	s1,s2
    800242b0:	0019091b          	addiw	s2,s2,1
    800242b4:	03495a63          	bge	s2,s4,800242e8 <_Z9getStringPci+0x90>
        cc = getc();
    800242b8:	ffffc097          	auipc	ra,0xffffc
    800242bc:	3c8080e7          	jalr	968(ra) # 80020680 <_Z4getcv>
        if(cc < 1)
    800242c0:	02050463          	beqz	a0,800242e8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800242c4:	009984b3          	add	s1,s3,s1
    800242c8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800242cc:	00a00793          	li	a5,10
    800242d0:	00f50a63          	beq	a0,a5,800242e4 <_Z9getStringPci+0x8c>
    800242d4:	00d00793          	li	a5,13
    800242d8:	fcf51ae3          	bne	a0,a5,800242ac <_Z9getStringPci+0x54>
        buf[i++] = c;
    800242dc:	00090493          	mv	s1,s2
    800242e0:	0080006f          	j	800242e8 <_Z9getStringPci+0x90>
    800242e4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800242e8:	009984b3          	add	s1,s3,s1
    800242ec:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800242f0:	00000613          	li	a2,0
    800242f4:	00100593          	li	a1,1
    800242f8:	00007517          	auipc	a0,0x7
    800242fc:	96850513          	addi	a0,a0,-1688 # 8002ac60 <lockPrint>
    80024300:	ffffc097          	auipc	ra,0xffffc
    80024304:	d00080e7          	jalr	-768(ra) # 80020000 <copy_and_swap>
    80024308:	fe0514e3          	bnez	a0,800242f0 <_Z9getStringPci+0x98>
    return buf;
}
    8002430c:	00098513          	mv	a0,s3
    80024310:	02813083          	ld	ra,40(sp)
    80024314:	02013403          	ld	s0,32(sp)
    80024318:	01813483          	ld	s1,24(sp)
    8002431c:	01013903          	ld	s2,16(sp)
    80024320:	00813983          	ld	s3,8(sp)
    80024324:	00013a03          	ld	s4,0(sp)
    80024328:	03010113          	addi	sp,sp,48
    8002432c:	00008067          	ret

0000000080024330 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80024330:	ff010113          	addi	sp,sp,-16
    80024334:	00813423          	sd	s0,8(sp)
    80024338:	01010413          	addi	s0,sp,16
    8002433c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80024340:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80024344:	0006c603          	lbu	a2,0(a3)
    80024348:	fd06071b          	addiw	a4,a2,-48
    8002434c:	0ff77713          	andi	a4,a4,255
    80024350:	00900793          	li	a5,9
    80024354:	02e7e063          	bltu	a5,a4,80024374 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80024358:	0025179b          	slliw	a5,a0,0x2
    8002435c:	00a787bb          	addw	a5,a5,a0
    80024360:	0017979b          	slliw	a5,a5,0x1
    80024364:	00168693          	addi	a3,a3,1
    80024368:	00c787bb          	addw	a5,a5,a2
    8002436c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80024370:	fd5ff06f          	j	80024344 <_Z11stringToIntPKc+0x14>
    return n;
}
    80024374:	00813403          	ld	s0,8(sp)
    80024378:	01010113          	addi	sp,sp,16
    8002437c:	00008067          	ret

0000000080024380 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80024380:	fc010113          	addi	sp,sp,-64
    80024384:	02113c23          	sd	ra,56(sp)
    80024388:	02813823          	sd	s0,48(sp)
    8002438c:	02913423          	sd	s1,40(sp)
    80024390:	03213023          	sd	s2,32(sp)
    80024394:	01313c23          	sd	s3,24(sp)
    80024398:	04010413          	addi	s0,sp,64
    8002439c:	00050493          	mv	s1,a0
    800243a0:	00058913          	mv	s2,a1
    800243a4:	00060993          	mv	s3,a2
    LOCK();
    800243a8:	00100613          	li	a2,1
    800243ac:	00000593          	li	a1,0
    800243b0:	00007517          	auipc	a0,0x7
    800243b4:	8b050513          	addi	a0,a0,-1872 # 8002ac60 <lockPrint>
    800243b8:	ffffc097          	auipc	ra,0xffffc
    800243bc:	c48080e7          	jalr	-952(ra) # 80020000 <copy_and_swap>
    800243c0:	00050863          	beqz	a0,800243d0 <_Z8printIntiii+0x50>
    800243c4:	ffffc097          	auipc	ra,0xffffc
    800243c8:	118080e7          	jalr	280(ra) # 800204dc <_Z15thread_dispatchv>
    800243cc:	fddff06f          	j	800243a8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800243d0:	00098463          	beqz	s3,800243d8 <_Z8printIntiii+0x58>
    800243d4:	0804c463          	bltz	s1,8002445c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800243d8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800243dc:	00000593          	li	a1,0
    }

    i = 0;
    800243e0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800243e4:	0009079b          	sext.w	a5,s2
    800243e8:	0325773b          	remuw	a4,a0,s2
    800243ec:	00048613          	mv	a2,s1
    800243f0:	0014849b          	addiw	s1,s1,1
    800243f4:	02071693          	slli	a3,a4,0x20
    800243f8:	0206d693          	srli	a3,a3,0x20
    800243fc:	00006717          	auipc	a4,0x6
    80024400:	4c470713          	addi	a4,a4,1220 # 8002a8c0 <digits>
    80024404:	00d70733          	add	a4,a4,a3
    80024408:	00074683          	lbu	a3,0(a4)
    8002440c:	fd040713          	addi	a4,s0,-48
    80024410:	00c70733          	add	a4,a4,a2
    80024414:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80024418:	0005071b          	sext.w	a4,a0
    8002441c:	0325553b          	divuw	a0,a0,s2
    80024420:	fcf772e3          	bgeu	a4,a5,800243e4 <_Z8printIntiii+0x64>
    if(neg)
    80024424:	00058c63          	beqz	a1,8002443c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80024428:	fd040793          	addi	a5,s0,-48
    8002442c:	009784b3          	add	s1,a5,s1
    80024430:	02d00793          	li	a5,45
    80024434:	fef48823          	sb	a5,-16(s1)
    80024438:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8002443c:	fff4849b          	addiw	s1,s1,-1
    80024440:	0204c463          	bltz	s1,80024468 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80024444:	fd040793          	addi	a5,s0,-48
    80024448:	009787b3          	add	a5,a5,s1
    8002444c:	ff07c503          	lbu	a0,-16(a5)
    80024450:	ffffc097          	auipc	ra,0xffffc
    80024454:	254080e7          	jalr	596(ra) # 800206a4 <_Z4putcc>
    80024458:	fe5ff06f          	j	8002443c <_Z8printIntiii+0xbc>
        x = -xx;
    8002445c:	4090053b          	negw	a0,s1
        neg = 1;
    80024460:	00100593          	li	a1,1
        x = -xx;
    80024464:	f7dff06f          	j	800243e0 <_Z8printIntiii+0x60>

    UNLOCK();
    80024468:	00000613          	li	a2,0
    8002446c:	00100593          	li	a1,1
    80024470:	00006517          	auipc	a0,0x6
    80024474:	7f050513          	addi	a0,a0,2032 # 8002ac60 <lockPrint>
    80024478:	ffffc097          	auipc	ra,0xffffc
    8002447c:	b88080e7          	jalr	-1144(ra) # 80020000 <copy_and_swap>
    80024480:	fe0514e3          	bnez	a0,80024468 <_Z8printIntiii+0xe8>
    80024484:	03813083          	ld	ra,56(sp)
    80024488:	03013403          	ld	s0,48(sp)
    8002448c:	02813483          	ld	s1,40(sp)
    80024490:	02013903          	ld	s2,32(sp)
    80024494:	01813983          	ld	s3,24(sp)
    80024498:	04010113          	addi	sp,sp,64
    8002449c:	00008067          	ret

00000000800244a0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800244a0:	fd010113          	addi	sp,sp,-48
    800244a4:	02113423          	sd	ra,40(sp)
    800244a8:	02813023          	sd	s0,32(sp)
    800244ac:	00913c23          	sd	s1,24(sp)
    800244b0:	01213823          	sd	s2,16(sp)
    800244b4:	01313423          	sd	s3,8(sp)
    800244b8:	03010413          	addi	s0,sp,48
    800244bc:	00050493          	mv	s1,a0
    800244c0:	00058913          	mv	s2,a1
    800244c4:	0015879b          	addiw	a5,a1,1
    800244c8:	0007851b          	sext.w	a0,a5
    800244cc:	00f4a023          	sw	a5,0(s1)
    800244d0:	0004a823          	sw	zero,16(s1)
    800244d4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800244d8:	00251513          	slli	a0,a0,0x2
    800244dc:	ffffc097          	auipc	ra,0xffffc
    800244e0:	f80080e7          	jalr	-128(ra) # 8002045c <_Z9mem_allocm>
    800244e4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800244e8:	01000513          	li	a0,16
    800244ec:	ffffd097          	auipc	ra,0xffffd
    800244f0:	0a8080e7          	jalr	168(ra) # 80021594 <_Znwm>
    800244f4:	00050993          	mv	s3,a0
    800244f8:	00000593          	li	a1,0
    800244fc:	ffffd097          	auipc	ra,0xffffd
    80024500:	2d0080e7          	jalr	720(ra) # 800217cc <_ZN9SemaphoreC1Ej>
    80024504:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80024508:	01000513          	li	a0,16
    8002450c:	ffffd097          	auipc	ra,0xffffd
    80024510:	088080e7          	jalr	136(ra) # 80021594 <_Znwm>
    80024514:	00050993          	mv	s3,a0
    80024518:	00090593          	mv	a1,s2
    8002451c:	ffffd097          	auipc	ra,0xffffd
    80024520:	2b0080e7          	jalr	688(ra) # 800217cc <_ZN9SemaphoreC1Ej>
    80024524:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80024528:	01000513          	li	a0,16
    8002452c:	ffffd097          	auipc	ra,0xffffd
    80024530:	068080e7          	jalr	104(ra) # 80021594 <_Znwm>
    80024534:	00050913          	mv	s2,a0
    80024538:	00100593          	li	a1,1
    8002453c:	ffffd097          	auipc	ra,0xffffd
    80024540:	290080e7          	jalr	656(ra) # 800217cc <_ZN9SemaphoreC1Ej>
    80024544:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80024548:	01000513          	li	a0,16
    8002454c:	ffffd097          	auipc	ra,0xffffd
    80024550:	048080e7          	jalr	72(ra) # 80021594 <_Znwm>
    80024554:	00050913          	mv	s2,a0
    80024558:	00100593          	li	a1,1
    8002455c:	ffffd097          	auipc	ra,0xffffd
    80024560:	270080e7          	jalr	624(ra) # 800217cc <_ZN9SemaphoreC1Ej>
    80024564:	0324b823          	sd	s2,48(s1)
}
    80024568:	02813083          	ld	ra,40(sp)
    8002456c:	02013403          	ld	s0,32(sp)
    80024570:	01813483          	ld	s1,24(sp)
    80024574:	01013903          	ld	s2,16(sp)
    80024578:	00813983          	ld	s3,8(sp)
    8002457c:	03010113          	addi	sp,sp,48
    80024580:	00008067          	ret
    80024584:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80024588:	00098513          	mv	a0,s3
    8002458c:	ffffd097          	auipc	ra,0xffffd
    80024590:	030080e7          	jalr	48(ra) # 800215bc <_ZdlPv>
    80024594:	00048513          	mv	a0,s1
    80024598:	00007097          	auipc	ra,0x7
    8002459c:	7a0080e7          	jalr	1952(ra) # 8002bd38 <_Unwind_Resume>
    800245a0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800245a4:	00098513          	mv	a0,s3
    800245a8:	ffffd097          	auipc	ra,0xffffd
    800245ac:	014080e7          	jalr	20(ra) # 800215bc <_ZdlPv>
    800245b0:	00048513          	mv	a0,s1
    800245b4:	00007097          	auipc	ra,0x7
    800245b8:	784080e7          	jalr	1924(ra) # 8002bd38 <_Unwind_Resume>
    800245bc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800245c0:	00090513          	mv	a0,s2
    800245c4:	ffffd097          	auipc	ra,0xffffd
    800245c8:	ff8080e7          	jalr	-8(ra) # 800215bc <_ZdlPv>
    800245cc:	00048513          	mv	a0,s1
    800245d0:	00007097          	auipc	ra,0x7
    800245d4:	768080e7          	jalr	1896(ra) # 8002bd38 <_Unwind_Resume>
    800245d8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800245dc:	00090513          	mv	a0,s2
    800245e0:	ffffd097          	auipc	ra,0xffffd
    800245e4:	fdc080e7          	jalr	-36(ra) # 800215bc <_ZdlPv>
    800245e8:	00048513          	mv	a0,s1
    800245ec:	00007097          	auipc	ra,0x7
    800245f0:	74c080e7          	jalr	1868(ra) # 8002bd38 <_Unwind_Resume>

00000000800245f4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800245f4:	fe010113          	addi	sp,sp,-32
    800245f8:	00113c23          	sd	ra,24(sp)
    800245fc:	00813823          	sd	s0,16(sp)
    80024600:	00913423          	sd	s1,8(sp)
    80024604:	01213023          	sd	s2,0(sp)
    80024608:	02010413          	addi	s0,sp,32
    8002460c:	00050493          	mv	s1,a0
    80024610:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80024614:	01853503          	ld	a0,24(a0)
    80024618:	ffffd097          	auipc	ra,0xffffd
    8002461c:	1ec080e7          	jalr	492(ra) # 80021804 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80024620:	0304b503          	ld	a0,48(s1)
    80024624:	ffffd097          	auipc	ra,0xffffd
    80024628:	1e0080e7          	jalr	480(ra) # 80021804 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8002462c:	0084b783          	ld	a5,8(s1)
    80024630:	0144a703          	lw	a4,20(s1)
    80024634:	00271713          	slli	a4,a4,0x2
    80024638:	00e787b3          	add	a5,a5,a4
    8002463c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80024640:	0144a783          	lw	a5,20(s1)
    80024644:	0017879b          	addiw	a5,a5,1
    80024648:	0004a703          	lw	a4,0(s1)
    8002464c:	02e7e7bb          	remw	a5,a5,a4
    80024650:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80024654:	0304b503          	ld	a0,48(s1)
    80024658:	ffffd097          	auipc	ra,0xffffd
    8002465c:	1d8080e7          	jalr	472(ra) # 80021830 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80024660:	0204b503          	ld	a0,32(s1)
    80024664:	ffffd097          	auipc	ra,0xffffd
    80024668:	1cc080e7          	jalr	460(ra) # 80021830 <_ZN9Semaphore6signalEv>

}
    8002466c:	01813083          	ld	ra,24(sp)
    80024670:	01013403          	ld	s0,16(sp)
    80024674:	00813483          	ld	s1,8(sp)
    80024678:	00013903          	ld	s2,0(sp)
    8002467c:	02010113          	addi	sp,sp,32
    80024680:	00008067          	ret

0000000080024684 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80024684:	fe010113          	addi	sp,sp,-32
    80024688:	00113c23          	sd	ra,24(sp)
    8002468c:	00813823          	sd	s0,16(sp)
    80024690:	00913423          	sd	s1,8(sp)
    80024694:	01213023          	sd	s2,0(sp)
    80024698:	02010413          	addi	s0,sp,32
    8002469c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800246a0:	02053503          	ld	a0,32(a0)
    800246a4:	ffffd097          	auipc	ra,0xffffd
    800246a8:	160080e7          	jalr	352(ra) # 80021804 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800246ac:	0284b503          	ld	a0,40(s1)
    800246b0:	ffffd097          	auipc	ra,0xffffd
    800246b4:	154080e7          	jalr	340(ra) # 80021804 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800246b8:	0084b703          	ld	a4,8(s1)
    800246bc:	0104a783          	lw	a5,16(s1)
    800246c0:	00279693          	slli	a3,a5,0x2
    800246c4:	00d70733          	add	a4,a4,a3
    800246c8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800246cc:	0017879b          	addiw	a5,a5,1
    800246d0:	0004a703          	lw	a4,0(s1)
    800246d4:	02e7e7bb          	remw	a5,a5,a4
    800246d8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800246dc:	0284b503          	ld	a0,40(s1)
    800246e0:	ffffd097          	auipc	ra,0xffffd
    800246e4:	150080e7          	jalr	336(ra) # 80021830 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800246e8:	0184b503          	ld	a0,24(s1)
    800246ec:	ffffd097          	auipc	ra,0xffffd
    800246f0:	144080e7          	jalr	324(ra) # 80021830 <_ZN9Semaphore6signalEv>

    return ret;
}
    800246f4:	00090513          	mv	a0,s2
    800246f8:	01813083          	ld	ra,24(sp)
    800246fc:	01013403          	ld	s0,16(sp)
    80024700:	00813483          	ld	s1,8(sp)
    80024704:	00013903          	ld	s2,0(sp)
    80024708:	02010113          	addi	sp,sp,32
    8002470c:	00008067          	ret

0000000080024710 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80024710:	fe010113          	addi	sp,sp,-32
    80024714:	00113c23          	sd	ra,24(sp)
    80024718:	00813823          	sd	s0,16(sp)
    8002471c:	00913423          	sd	s1,8(sp)
    80024720:	01213023          	sd	s2,0(sp)
    80024724:	02010413          	addi	s0,sp,32
    80024728:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8002472c:	02853503          	ld	a0,40(a0)
    80024730:	ffffd097          	auipc	ra,0xffffd
    80024734:	0d4080e7          	jalr	212(ra) # 80021804 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80024738:	0304b503          	ld	a0,48(s1)
    8002473c:	ffffd097          	auipc	ra,0xffffd
    80024740:	0c8080e7          	jalr	200(ra) # 80021804 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80024744:	0144a783          	lw	a5,20(s1)
    80024748:	0104a903          	lw	s2,16(s1)
    8002474c:	0327ce63          	blt	a5,s2,80024788 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80024750:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80024754:	0304b503          	ld	a0,48(s1)
    80024758:	ffffd097          	auipc	ra,0xffffd
    8002475c:	0d8080e7          	jalr	216(ra) # 80021830 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80024760:	0284b503          	ld	a0,40(s1)
    80024764:	ffffd097          	auipc	ra,0xffffd
    80024768:	0cc080e7          	jalr	204(ra) # 80021830 <_ZN9Semaphore6signalEv>

    return ret;
}
    8002476c:	00090513          	mv	a0,s2
    80024770:	01813083          	ld	ra,24(sp)
    80024774:	01013403          	ld	s0,16(sp)
    80024778:	00813483          	ld	s1,8(sp)
    8002477c:	00013903          	ld	s2,0(sp)
    80024780:	02010113          	addi	sp,sp,32
    80024784:	00008067          	ret
        ret = cap - head + tail;
    80024788:	0004a703          	lw	a4,0(s1)
    8002478c:	4127093b          	subw	s2,a4,s2
    80024790:	00f9093b          	addw	s2,s2,a5
    80024794:	fc1ff06f          	j	80024754 <_ZN9BufferCPP6getCntEv+0x44>

0000000080024798 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80024798:	fe010113          	addi	sp,sp,-32
    8002479c:	00113c23          	sd	ra,24(sp)
    800247a0:	00813823          	sd	s0,16(sp)
    800247a4:	00913423          	sd	s1,8(sp)
    800247a8:	02010413          	addi	s0,sp,32
    800247ac:	00050493          	mv	s1,a0
    Console::putc('\n');
    800247b0:	00a00513          	li	a0,10
    800247b4:	ffffd097          	auipc	ra,0xffffd
    800247b8:	13c080e7          	jalr	316(ra) # 800218f0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800247bc:	00004517          	auipc	a0,0x4
    800247c0:	b7450513          	addi	a0,a0,-1164 # 80028330 <CONSOLE_STATUS+0x320>
    800247c4:	00000097          	auipc	ra,0x0
    800247c8:	a0c080e7          	jalr	-1524(ra) # 800241d0 <_Z11printStringPKc>
    while (getCnt()) {
    800247cc:	00048513          	mv	a0,s1
    800247d0:	00000097          	auipc	ra,0x0
    800247d4:	f40080e7          	jalr	-192(ra) # 80024710 <_ZN9BufferCPP6getCntEv>
    800247d8:	02050c63          	beqz	a0,80024810 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800247dc:	0084b783          	ld	a5,8(s1)
    800247e0:	0104a703          	lw	a4,16(s1)
    800247e4:	00271713          	slli	a4,a4,0x2
    800247e8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800247ec:	0007c503          	lbu	a0,0(a5)
    800247f0:	ffffd097          	auipc	ra,0xffffd
    800247f4:	100080e7          	jalr	256(ra) # 800218f0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800247f8:	0104a783          	lw	a5,16(s1)
    800247fc:	0017879b          	addiw	a5,a5,1
    80024800:	0004a703          	lw	a4,0(s1)
    80024804:	02e7e7bb          	remw	a5,a5,a4
    80024808:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8002480c:	fc1ff06f          	j	800247cc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80024810:	02100513          	li	a0,33
    80024814:	ffffd097          	auipc	ra,0xffffd
    80024818:	0dc080e7          	jalr	220(ra) # 800218f0 <_ZN7Console4putcEc>
    Console::putc('\n');
    8002481c:	00a00513          	li	a0,10
    80024820:	ffffd097          	auipc	ra,0xffffd
    80024824:	0d0080e7          	jalr	208(ra) # 800218f0 <_ZN7Console4putcEc>
    mem_free(buffer);
    80024828:	0084b503          	ld	a0,8(s1)
    8002482c:	ffffc097          	auipc	ra,0xffffc
    80024830:	c58080e7          	jalr	-936(ra) # 80020484 <_Z8mem_freePv>
    delete itemAvailable;
    80024834:	0204b503          	ld	a0,32(s1)
    80024838:	00050863          	beqz	a0,80024848 <_ZN9BufferCPPD1Ev+0xb0>
    8002483c:	00053783          	ld	a5,0(a0)
    80024840:	0087b783          	ld	a5,8(a5)
    80024844:	000780e7          	jalr	a5
    delete spaceAvailable;
    80024848:	0184b503          	ld	a0,24(s1)
    8002484c:	00050863          	beqz	a0,8002485c <_ZN9BufferCPPD1Ev+0xc4>
    80024850:	00053783          	ld	a5,0(a0)
    80024854:	0087b783          	ld	a5,8(a5)
    80024858:	000780e7          	jalr	a5
    delete mutexTail;
    8002485c:	0304b503          	ld	a0,48(s1)
    80024860:	00050863          	beqz	a0,80024870 <_ZN9BufferCPPD1Ev+0xd8>
    80024864:	00053783          	ld	a5,0(a0)
    80024868:	0087b783          	ld	a5,8(a5)
    8002486c:	000780e7          	jalr	a5
    delete mutexHead;
    80024870:	0284b503          	ld	a0,40(s1)
    80024874:	00050863          	beqz	a0,80024884 <_ZN9BufferCPPD1Ev+0xec>
    80024878:	00053783          	ld	a5,0(a0)
    8002487c:	0087b783          	ld	a5,8(a5)
    80024880:	000780e7          	jalr	a5
}
    80024884:	01813083          	ld	ra,24(sp)
    80024888:	01013403          	ld	s0,16(sp)
    8002488c:	00813483          	ld	s1,8(sp)
    80024890:	02010113          	addi	sp,sp,32
    80024894:	00008067          	ret

0000000080024898 <_Z8userMainv>:
#if LEVEL_8_IMPLEMENTED == 1
#include "ModTest.hpp"
#endif


void userMain() {
    80024898:	fe010113          	addi	sp,sp,-32
    8002489c:	00113c23          	sd	ra,24(sp)
    800248a0:	00813823          	sd	s0,16(sp)
    800248a4:	00913423          	sd	s1,8(sp)
    800248a8:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800248ac:	00004517          	auipc	a0,0x4
    800248b0:	a9c50513          	addi	a0,a0,-1380 # 80028348 <CONSOLE_STATUS+0x338>
    800248b4:	00000097          	auipc	ra,0x0
    800248b8:	91c080e7          	jalr	-1764(ra) # 800241d0 <_Z11printStringPKc>
    int test = getc() - '0';
    800248bc:	ffffc097          	auipc	ra,0xffffc
    800248c0:	dc4080e7          	jalr	-572(ra) # 80020680 <_Z4getcv>
    800248c4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800248c8:	ffffc097          	auipc	ra,0xffffc
    800248cc:	db8080e7          	jalr	-584(ra) # 80020680 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800248d0:	00800793          	li	a5,8
    800248d4:	1297e063          	bltu	a5,s1,800249f4 <_Z8userMainv+0x15c>
    800248d8:	00249493          	slli	s1,s1,0x2
    800248dc:	00004717          	auipc	a4,0x4
    800248e0:	d0c70713          	addi	a4,a4,-756 # 800285e8 <CONSOLE_STATUS+0x5d8>
    800248e4:	00e484b3          	add	s1,s1,a4
    800248e8:	0004a783          	lw	a5,0(s1)
    800248ec:	00e787b3          	add	a5,a5,a4
    800248f0:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800248f4:	fffff097          	auipc	ra,0xfffff
    800248f8:	f54080e7          	jalr	-172(ra) # 80023848 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800248fc:	00004517          	auipc	a0,0x4
    80024900:	a6c50513          	addi	a0,a0,-1428 # 80028368 <CONSOLE_STATUS+0x358>
    80024904:	00000097          	auipc	ra,0x0
    80024908:	8cc080e7          	jalr	-1844(ra) # 800241d0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8002490c:	01813083          	ld	ra,24(sp)
    80024910:	01013403          	ld	s0,16(sp)
    80024914:	00813483          	ld	s1,8(sp)
    80024918:	02010113          	addi	sp,sp,32
    8002491c:	00008067          	ret
            Threads_CPP_API_test();
    80024920:	ffffe097          	auipc	ra,0xffffe
    80024924:	e08080e7          	jalr	-504(ra) # 80022728 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80024928:	00004517          	auipc	a0,0x4
    8002492c:	a8050513          	addi	a0,a0,-1408 # 800283a8 <CONSOLE_STATUS+0x398>
    80024930:	00000097          	auipc	ra,0x0
    80024934:	8a0080e7          	jalr	-1888(ra) # 800241d0 <_Z11printStringPKc>
            break;
    80024938:	fd5ff06f          	j	8002490c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    8002493c:	ffffd097          	auipc	ra,0xffffd
    80024940:	5e8080e7          	jalr	1512(ra) # 80021f24 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80024944:	00004517          	auipc	a0,0x4
    80024948:	aa450513          	addi	a0,a0,-1372 # 800283e8 <CONSOLE_STATUS+0x3d8>
    8002494c:	00000097          	auipc	ra,0x0
    80024950:	884080e7          	jalr	-1916(ra) # 800241d0 <_Z11printStringPKc>
            break;
    80024954:	fb9ff06f          	j	8002490c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80024958:	fffff097          	auipc	ra,0xfffff
    8002495c:	234080e7          	jalr	564(ra) # 80023b8c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80024960:	00004517          	auipc	a0,0x4
    80024964:	ad850513          	addi	a0,a0,-1320 # 80028438 <CONSOLE_STATUS+0x428>
    80024968:	00000097          	auipc	ra,0x0
    8002496c:	868080e7          	jalr	-1944(ra) # 800241d0 <_Z11printStringPKc>
            break;
    80024970:	f9dff06f          	j	8002490c <_Z8userMainv+0x74>
            testSleeping();
    80024974:	00000097          	auipc	ra,0x0
    80024978:	138080e7          	jalr	312(ra) # 80024aac <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    8002497c:	00004517          	auipc	a0,0x4
    80024980:	b1450513          	addi	a0,a0,-1260 # 80028490 <CONSOLE_STATUS+0x480>
    80024984:	00000097          	auipc	ra,0x0
    80024988:	84c080e7          	jalr	-1972(ra) # 800241d0 <_Z11printStringPKc>
            break;
    8002498c:	f81ff06f          	j	8002490c <_Z8userMainv+0x74>
            testConsumerProducer();
    80024990:	ffffe097          	auipc	ra,0xffffe
    80024994:	258080e7          	jalr	600(ra) # 80022be8 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80024998:	00004517          	auipc	a0,0x4
    8002499c:	b2850513          	addi	a0,a0,-1240 # 800284c0 <CONSOLE_STATUS+0x4b0>
    800249a0:	00000097          	auipc	ra,0x0
    800249a4:	830080e7          	jalr	-2000(ra) # 800241d0 <_Z11printStringPKc>
            break;
    800249a8:	f65ff06f          	j	8002490c <_Z8userMainv+0x74>
            System_Mode_test();
    800249ac:	00000097          	auipc	ra,0x0
    800249b0:	674080e7          	jalr	1652(ra) # 80025020 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800249b4:	00004517          	auipc	a0,0x4
    800249b8:	b4c50513          	addi	a0,a0,-1204 # 80028500 <CONSOLE_STATUS+0x4f0>
    800249bc:	00000097          	auipc	ra,0x0
    800249c0:	814080e7          	jalr	-2028(ra) # 800241d0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800249c4:	00004517          	auipc	a0,0x4
    800249c8:	b5c50513          	addi	a0,a0,-1188 # 80028520 <CONSOLE_STATUS+0x510>
    800249cc:	00000097          	auipc	ra,0x0
    800249d0:	804080e7          	jalr	-2044(ra) # 800241d0 <_Z11printStringPKc>
            break;
    800249d4:	f39ff06f          	j	8002490c <_Z8userMainv+0x74>
            mod_test();
    800249d8:	ffffe097          	auipc	ra,0xffffe
    800249dc:	81c080e7          	jalr	-2020(ra) # 800221f4 <_Z8mod_testv>
            printString("\nTEST MODIFIKACIJE(add_child i join_all) ZAVRSEN, MODIFIKACIJA RADI");
    800249e0:	00004517          	auipc	a0,0x4
    800249e4:	b9850513          	addi	a0,a0,-1128 # 80028578 <CONSOLE_STATUS+0x568>
    800249e8:	fffff097          	auipc	ra,0xfffff
    800249ec:	7e8080e7          	jalr	2024(ra) # 800241d0 <_Z11printStringPKc>
            break;
    800249f0:	f1dff06f          	j	8002490c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800249f4:	00004517          	auipc	a0,0x4
    800249f8:	bcc50513          	addi	a0,a0,-1076 # 800285c0 <CONSOLE_STATUS+0x5b0>
    800249fc:	fffff097          	auipc	ra,0xfffff
    80024a00:	7d4080e7          	jalr	2004(ra) # 800241d0 <_Z11printStringPKc>
    80024a04:	f09ff06f          	j	8002490c <_Z8userMainv+0x74>

0000000080024a08 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80024a08:	fe010113          	addi	sp,sp,-32
    80024a0c:	00113c23          	sd	ra,24(sp)
    80024a10:	00813823          	sd	s0,16(sp)
    80024a14:	00913423          	sd	s1,8(sp)
    80024a18:	01213023          	sd	s2,0(sp)
    80024a1c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80024a20:	00053903          	ld	s2,0(a0)
    int i = 6;
    80024a24:	00600493          	li	s1,6
    while (--i > 0) {
    80024a28:	fff4849b          	addiw	s1,s1,-1
    80024a2c:	04905463          	blez	s1,80024a74 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80024a30:	00004517          	auipc	a0,0x4
    80024a34:	be050513          	addi	a0,a0,-1056 # 80028610 <CONSOLE_STATUS+0x600>
    80024a38:	fffff097          	auipc	ra,0xfffff
    80024a3c:	798080e7          	jalr	1944(ra) # 800241d0 <_Z11printStringPKc>
        printInt(sleep_time);
    80024a40:	00000613          	li	a2,0
    80024a44:	00a00593          	li	a1,10
    80024a48:	0009051b          	sext.w	a0,s2
    80024a4c:	00000097          	auipc	ra,0x0
    80024a50:	934080e7          	jalr	-1740(ra) # 80024380 <_Z8printIntiii>
        printString(" !\n");
    80024a54:	00004517          	auipc	a0,0x4
    80024a58:	bc450513          	addi	a0,a0,-1084 # 80028618 <CONSOLE_STATUS+0x608>
    80024a5c:	fffff097          	auipc	ra,0xfffff
    80024a60:	774080e7          	jalr	1908(ra) # 800241d0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80024a64:	00090513          	mv	a0,s2
    80024a68:	ffffc097          	auipc	ra,0xffffc
    80024a6c:	bf0080e7          	jalr	-1040(ra) # 80020658 <_Z10time_sleepm>
    while (--i > 0) {
    80024a70:	fb9ff06f          	j	80024a28 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80024a74:	00a00793          	li	a5,10
    80024a78:	02f95933          	divu	s2,s2,a5
    80024a7c:	fff90913          	addi	s2,s2,-1
    80024a80:	00006797          	auipc	a5,0x6
    80024a84:	1e878793          	addi	a5,a5,488 # 8002ac68 <_ZL8finished>
    80024a88:	01278933          	add	s2,a5,s2
    80024a8c:	00100793          	li	a5,1
    80024a90:	00f90023          	sb	a5,0(s2)
}
    80024a94:	01813083          	ld	ra,24(sp)
    80024a98:	01013403          	ld	s0,16(sp)
    80024a9c:	00813483          	ld	s1,8(sp)
    80024aa0:	00013903          	ld	s2,0(sp)
    80024aa4:	02010113          	addi	sp,sp,32
    80024aa8:	00008067          	ret

0000000080024aac <_Z12testSleepingv>:

void testSleeping() {
    80024aac:	fc010113          	addi	sp,sp,-64
    80024ab0:	02113c23          	sd	ra,56(sp)
    80024ab4:	02813823          	sd	s0,48(sp)
    80024ab8:	02913423          	sd	s1,40(sp)
    80024abc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80024ac0:	00a00793          	li	a5,10
    80024ac4:	fcf43823          	sd	a5,-48(s0)
    80024ac8:	01400793          	li	a5,20
    80024acc:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80024ad0:	00000493          	li	s1,0
    80024ad4:	02c0006f          	j	80024b00 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80024ad8:	00349793          	slli	a5,s1,0x3
    80024adc:	fd040613          	addi	a2,s0,-48
    80024ae0:	00f60633          	add	a2,a2,a5
    80024ae4:	00000597          	auipc	a1,0x0
    80024ae8:	f2458593          	addi	a1,a1,-220 # 80024a08 <_ZL9sleepyRunPv>
    80024aec:	fc040513          	addi	a0,s0,-64
    80024af0:	00f50533          	add	a0,a0,a5
    80024af4:	ffffc097          	auipc	ra,0xffffc
    80024af8:	a08080e7          	jalr	-1528(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80024afc:	0014849b          	addiw	s1,s1,1
    80024b00:	00100793          	li	a5,1
    80024b04:	fc97dae3          	bge	a5,s1,80024ad8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80024b08:	00006797          	auipc	a5,0x6
    80024b0c:	1607c783          	lbu	a5,352(a5) # 8002ac68 <_ZL8finished>
    80024b10:	fe078ce3          	beqz	a5,80024b08 <_Z12testSleepingv+0x5c>
    80024b14:	00006797          	auipc	a5,0x6
    80024b18:	1557c783          	lbu	a5,341(a5) # 8002ac69 <_ZL8finished+0x1>
    80024b1c:	fe0786e3          	beqz	a5,80024b08 <_Z12testSleepingv+0x5c>
}
    80024b20:	03813083          	ld	ra,56(sp)
    80024b24:	03013403          	ld	s0,48(sp)
    80024b28:	02813483          	ld	s1,40(sp)
    80024b2c:	04010113          	addi	sp,sp,64
    80024b30:	00008067          	ret

0000000080024b34 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80024b34:	fe010113          	addi	sp,sp,-32
    80024b38:	00113c23          	sd	ra,24(sp)
    80024b3c:	00813823          	sd	s0,16(sp)
    80024b40:	00913423          	sd	s1,8(sp)
    80024b44:	01213023          	sd	s2,0(sp)
    80024b48:	02010413          	addi	s0,sp,32
    80024b4c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80024b50:	00100793          	li	a5,1
    80024b54:	02a7f863          	bgeu	a5,a0,80024b84 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80024b58:	00a00793          	li	a5,10
    80024b5c:	02f577b3          	remu	a5,a0,a5
    80024b60:	02078e63          	beqz	a5,80024b9c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80024b64:	fff48513          	addi	a0,s1,-1
    80024b68:	00000097          	auipc	ra,0x0
    80024b6c:	fcc080e7          	jalr	-52(ra) # 80024b34 <_ZL9fibonaccim>
    80024b70:	00050913          	mv	s2,a0
    80024b74:	ffe48513          	addi	a0,s1,-2
    80024b78:	00000097          	auipc	ra,0x0
    80024b7c:	fbc080e7          	jalr	-68(ra) # 80024b34 <_ZL9fibonaccim>
    80024b80:	00a90533          	add	a0,s2,a0
}
    80024b84:	01813083          	ld	ra,24(sp)
    80024b88:	01013403          	ld	s0,16(sp)
    80024b8c:	00813483          	ld	s1,8(sp)
    80024b90:	00013903          	ld	s2,0(sp)
    80024b94:	02010113          	addi	sp,sp,32
    80024b98:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80024b9c:	ffffc097          	auipc	ra,0xffffc
    80024ba0:	940080e7          	jalr	-1728(ra) # 800204dc <_Z15thread_dispatchv>
    80024ba4:	fc1ff06f          	j	80024b64 <_ZL9fibonaccim+0x30>

0000000080024ba8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80024ba8:	fe010113          	addi	sp,sp,-32
    80024bac:	00113c23          	sd	ra,24(sp)
    80024bb0:	00813823          	sd	s0,16(sp)
    80024bb4:	00913423          	sd	s1,8(sp)
    80024bb8:	01213023          	sd	s2,0(sp)
    80024bbc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80024bc0:	00a00493          	li	s1,10
    80024bc4:	0400006f          	j	80024c04 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80024bc8:	00003517          	auipc	a0,0x3
    80024bcc:	6d050513          	addi	a0,a0,1744 # 80028298 <CONSOLE_STATUS+0x288>
    80024bd0:	fffff097          	auipc	ra,0xfffff
    80024bd4:	600080e7          	jalr	1536(ra) # 800241d0 <_Z11printStringPKc>
    80024bd8:	00000613          	li	a2,0
    80024bdc:	00a00593          	li	a1,10
    80024be0:	00048513          	mv	a0,s1
    80024be4:	fffff097          	auipc	ra,0xfffff
    80024be8:	79c080e7          	jalr	1948(ra) # 80024380 <_Z8printIntiii>
    80024bec:	00004517          	auipc	a0,0x4
    80024bf0:	89c50513          	addi	a0,a0,-1892 # 80028488 <CONSOLE_STATUS+0x478>
    80024bf4:	fffff097          	auipc	ra,0xfffff
    80024bf8:	5dc080e7          	jalr	1500(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80024bfc:	0014849b          	addiw	s1,s1,1
    80024c00:	0ff4f493          	andi	s1,s1,255
    80024c04:	00c00793          	li	a5,12
    80024c08:	fc97f0e3          	bgeu	a5,s1,80024bc8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80024c0c:	00003517          	auipc	a0,0x3
    80024c10:	69450513          	addi	a0,a0,1684 # 800282a0 <CONSOLE_STATUS+0x290>
    80024c14:	fffff097          	auipc	ra,0xfffff
    80024c18:	5bc080e7          	jalr	1468(ra) # 800241d0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80024c1c:	00500313          	li	t1,5
    thread_dispatch();
    80024c20:	ffffc097          	auipc	ra,0xffffc
    80024c24:	8bc080e7          	jalr	-1860(ra) # 800204dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80024c28:	01000513          	li	a0,16
    80024c2c:	00000097          	auipc	ra,0x0
    80024c30:	f08080e7          	jalr	-248(ra) # 80024b34 <_ZL9fibonaccim>
    80024c34:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80024c38:	00003517          	auipc	a0,0x3
    80024c3c:	67850513          	addi	a0,a0,1656 # 800282b0 <CONSOLE_STATUS+0x2a0>
    80024c40:	fffff097          	auipc	ra,0xfffff
    80024c44:	590080e7          	jalr	1424(ra) # 800241d0 <_Z11printStringPKc>
    80024c48:	00000613          	li	a2,0
    80024c4c:	00a00593          	li	a1,10
    80024c50:	0009051b          	sext.w	a0,s2
    80024c54:	fffff097          	auipc	ra,0xfffff
    80024c58:	72c080e7          	jalr	1836(ra) # 80024380 <_Z8printIntiii>
    80024c5c:	00004517          	auipc	a0,0x4
    80024c60:	82c50513          	addi	a0,a0,-2004 # 80028488 <CONSOLE_STATUS+0x478>
    80024c64:	fffff097          	auipc	ra,0xfffff
    80024c68:	56c080e7          	jalr	1388(ra) # 800241d0 <_Z11printStringPKc>
    80024c6c:	0400006f          	j	80024cac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80024c70:	00003517          	auipc	a0,0x3
    80024c74:	62850513          	addi	a0,a0,1576 # 80028298 <CONSOLE_STATUS+0x288>
    80024c78:	fffff097          	auipc	ra,0xfffff
    80024c7c:	558080e7          	jalr	1368(ra) # 800241d0 <_Z11printStringPKc>
    80024c80:	00000613          	li	a2,0
    80024c84:	00a00593          	li	a1,10
    80024c88:	00048513          	mv	a0,s1
    80024c8c:	fffff097          	auipc	ra,0xfffff
    80024c90:	6f4080e7          	jalr	1780(ra) # 80024380 <_Z8printIntiii>
    80024c94:	00003517          	auipc	a0,0x3
    80024c98:	7f450513          	addi	a0,a0,2036 # 80028488 <CONSOLE_STATUS+0x478>
    80024c9c:	fffff097          	auipc	ra,0xfffff
    80024ca0:	534080e7          	jalr	1332(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80024ca4:	0014849b          	addiw	s1,s1,1
    80024ca8:	0ff4f493          	andi	s1,s1,255
    80024cac:	00f00793          	li	a5,15
    80024cb0:	fc97f0e3          	bgeu	a5,s1,80024c70 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80024cb4:	00003517          	auipc	a0,0x3
    80024cb8:	60c50513          	addi	a0,a0,1548 # 800282c0 <CONSOLE_STATUS+0x2b0>
    80024cbc:	fffff097          	auipc	ra,0xfffff
    80024cc0:	514080e7          	jalr	1300(ra) # 800241d0 <_Z11printStringPKc>
    finishedD = true;
    80024cc4:	00100793          	li	a5,1
    80024cc8:	00006717          	auipc	a4,0x6
    80024ccc:	faf70123          	sb	a5,-94(a4) # 8002ac6a <_ZL9finishedD>
    thread_dispatch();
    80024cd0:	ffffc097          	auipc	ra,0xffffc
    80024cd4:	80c080e7          	jalr	-2036(ra) # 800204dc <_Z15thread_dispatchv>
}
    80024cd8:	01813083          	ld	ra,24(sp)
    80024cdc:	01013403          	ld	s0,16(sp)
    80024ce0:	00813483          	ld	s1,8(sp)
    80024ce4:	00013903          	ld	s2,0(sp)
    80024ce8:	02010113          	addi	sp,sp,32
    80024cec:	00008067          	ret

0000000080024cf0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80024cf0:	fe010113          	addi	sp,sp,-32
    80024cf4:	00113c23          	sd	ra,24(sp)
    80024cf8:	00813823          	sd	s0,16(sp)
    80024cfc:	00913423          	sd	s1,8(sp)
    80024d00:	01213023          	sd	s2,0(sp)
    80024d04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80024d08:	00000493          	li	s1,0
    80024d0c:	0400006f          	j	80024d4c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80024d10:	00003517          	auipc	a0,0x3
    80024d14:	55850513          	addi	a0,a0,1368 # 80028268 <CONSOLE_STATUS+0x258>
    80024d18:	fffff097          	auipc	ra,0xfffff
    80024d1c:	4b8080e7          	jalr	1208(ra) # 800241d0 <_Z11printStringPKc>
    80024d20:	00000613          	li	a2,0
    80024d24:	00a00593          	li	a1,10
    80024d28:	00048513          	mv	a0,s1
    80024d2c:	fffff097          	auipc	ra,0xfffff
    80024d30:	654080e7          	jalr	1620(ra) # 80024380 <_Z8printIntiii>
    80024d34:	00003517          	auipc	a0,0x3
    80024d38:	75450513          	addi	a0,a0,1876 # 80028488 <CONSOLE_STATUS+0x478>
    80024d3c:	fffff097          	auipc	ra,0xfffff
    80024d40:	494080e7          	jalr	1172(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80024d44:	0014849b          	addiw	s1,s1,1
    80024d48:	0ff4f493          	andi	s1,s1,255
    80024d4c:	00200793          	li	a5,2
    80024d50:	fc97f0e3          	bgeu	a5,s1,80024d10 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80024d54:	00003517          	auipc	a0,0x3
    80024d58:	51c50513          	addi	a0,a0,1308 # 80028270 <CONSOLE_STATUS+0x260>
    80024d5c:	fffff097          	auipc	ra,0xfffff
    80024d60:	474080e7          	jalr	1140(ra) # 800241d0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80024d64:	00700313          	li	t1,7
    thread_dispatch();
    80024d68:	ffffb097          	auipc	ra,0xffffb
    80024d6c:	774080e7          	jalr	1908(ra) # 800204dc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80024d70:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80024d74:	00003517          	auipc	a0,0x3
    80024d78:	50c50513          	addi	a0,a0,1292 # 80028280 <CONSOLE_STATUS+0x270>
    80024d7c:	fffff097          	auipc	ra,0xfffff
    80024d80:	454080e7          	jalr	1108(ra) # 800241d0 <_Z11printStringPKc>
    80024d84:	00000613          	li	a2,0
    80024d88:	00a00593          	li	a1,10
    80024d8c:	0009051b          	sext.w	a0,s2
    80024d90:	fffff097          	auipc	ra,0xfffff
    80024d94:	5f0080e7          	jalr	1520(ra) # 80024380 <_Z8printIntiii>
    80024d98:	00003517          	auipc	a0,0x3
    80024d9c:	6f050513          	addi	a0,a0,1776 # 80028488 <CONSOLE_STATUS+0x478>
    80024da0:	fffff097          	auipc	ra,0xfffff
    80024da4:	430080e7          	jalr	1072(ra) # 800241d0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80024da8:	00c00513          	li	a0,12
    80024dac:	00000097          	auipc	ra,0x0
    80024db0:	d88080e7          	jalr	-632(ra) # 80024b34 <_ZL9fibonaccim>
    80024db4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80024db8:	00003517          	auipc	a0,0x3
    80024dbc:	4d050513          	addi	a0,a0,1232 # 80028288 <CONSOLE_STATUS+0x278>
    80024dc0:	fffff097          	auipc	ra,0xfffff
    80024dc4:	410080e7          	jalr	1040(ra) # 800241d0 <_Z11printStringPKc>
    80024dc8:	00000613          	li	a2,0
    80024dcc:	00a00593          	li	a1,10
    80024dd0:	0009051b          	sext.w	a0,s2
    80024dd4:	fffff097          	auipc	ra,0xfffff
    80024dd8:	5ac080e7          	jalr	1452(ra) # 80024380 <_Z8printIntiii>
    80024ddc:	00003517          	auipc	a0,0x3
    80024de0:	6ac50513          	addi	a0,a0,1708 # 80028488 <CONSOLE_STATUS+0x478>
    80024de4:	fffff097          	auipc	ra,0xfffff
    80024de8:	3ec080e7          	jalr	1004(ra) # 800241d0 <_Z11printStringPKc>
    80024dec:	0400006f          	j	80024e2c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80024df0:	00003517          	auipc	a0,0x3
    80024df4:	47850513          	addi	a0,a0,1144 # 80028268 <CONSOLE_STATUS+0x258>
    80024df8:	fffff097          	auipc	ra,0xfffff
    80024dfc:	3d8080e7          	jalr	984(ra) # 800241d0 <_Z11printStringPKc>
    80024e00:	00000613          	li	a2,0
    80024e04:	00a00593          	li	a1,10
    80024e08:	00048513          	mv	a0,s1
    80024e0c:	fffff097          	auipc	ra,0xfffff
    80024e10:	574080e7          	jalr	1396(ra) # 80024380 <_Z8printIntiii>
    80024e14:	00003517          	auipc	a0,0x3
    80024e18:	67450513          	addi	a0,a0,1652 # 80028488 <CONSOLE_STATUS+0x478>
    80024e1c:	fffff097          	auipc	ra,0xfffff
    80024e20:	3b4080e7          	jalr	948(ra) # 800241d0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80024e24:	0014849b          	addiw	s1,s1,1
    80024e28:	0ff4f493          	andi	s1,s1,255
    80024e2c:	00500793          	li	a5,5
    80024e30:	fc97f0e3          	bgeu	a5,s1,80024df0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80024e34:	00003517          	auipc	a0,0x3
    80024e38:	40c50513          	addi	a0,a0,1036 # 80028240 <CONSOLE_STATUS+0x230>
    80024e3c:	fffff097          	auipc	ra,0xfffff
    80024e40:	394080e7          	jalr	916(ra) # 800241d0 <_Z11printStringPKc>
    finishedC = true;
    80024e44:	00100793          	li	a5,1
    80024e48:	00006717          	auipc	a4,0x6
    80024e4c:	e2f701a3          	sb	a5,-477(a4) # 8002ac6b <_ZL9finishedC>
    thread_dispatch();
    80024e50:	ffffb097          	auipc	ra,0xffffb
    80024e54:	68c080e7          	jalr	1676(ra) # 800204dc <_Z15thread_dispatchv>
}
    80024e58:	01813083          	ld	ra,24(sp)
    80024e5c:	01013403          	ld	s0,16(sp)
    80024e60:	00813483          	ld	s1,8(sp)
    80024e64:	00013903          	ld	s2,0(sp)
    80024e68:	02010113          	addi	sp,sp,32
    80024e6c:	00008067          	ret

0000000080024e70 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80024e70:	fe010113          	addi	sp,sp,-32
    80024e74:	00113c23          	sd	ra,24(sp)
    80024e78:	00813823          	sd	s0,16(sp)
    80024e7c:	00913423          	sd	s1,8(sp)
    80024e80:	01213023          	sd	s2,0(sp)
    80024e84:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80024e88:	00000913          	li	s2,0
    80024e8c:	0400006f          	j	80024ecc <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80024e90:	ffffb097          	auipc	ra,0xffffb
    80024e94:	64c080e7          	jalr	1612(ra) # 800204dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80024e98:	00148493          	addi	s1,s1,1
    80024e9c:	000027b7          	lui	a5,0x2
    80024ea0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80024ea4:	0097ee63          	bltu	a5,s1,80024ec0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80024ea8:	00000713          	li	a4,0
    80024eac:	000077b7          	lui	a5,0x7
    80024eb0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80024eb4:	fce7eee3          	bltu	a5,a4,80024e90 <_ZL11workerBodyBPv+0x20>
    80024eb8:	00170713          	addi	a4,a4,1
    80024ebc:	ff1ff06f          	j	80024eac <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80024ec0:	00a00793          	li	a5,10
    80024ec4:	04f90663          	beq	s2,a5,80024f10 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80024ec8:	00190913          	addi	s2,s2,1
    80024ecc:	00f00793          	li	a5,15
    80024ed0:	0527e463          	bltu	a5,s2,80024f18 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80024ed4:	00003517          	auipc	a0,0x3
    80024ed8:	37c50513          	addi	a0,a0,892 # 80028250 <CONSOLE_STATUS+0x240>
    80024edc:	fffff097          	auipc	ra,0xfffff
    80024ee0:	2f4080e7          	jalr	756(ra) # 800241d0 <_Z11printStringPKc>
    80024ee4:	00000613          	li	a2,0
    80024ee8:	00a00593          	li	a1,10
    80024eec:	0009051b          	sext.w	a0,s2
    80024ef0:	fffff097          	auipc	ra,0xfffff
    80024ef4:	490080e7          	jalr	1168(ra) # 80024380 <_Z8printIntiii>
    80024ef8:	00003517          	auipc	a0,0x3
    80024efc:	59050513          	addi	a0,a0,1424 # 80028488 <CONSOLE_STATUS+0x478>
    80024f00:	fffff097          	auipc	ra,0xfffff
    80024f04:	2d0080e7          	jalr	720(ra) # 800241d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80024f08:	00000493          	li	s1,0
    80024f0c:	f91ff06f          	j	80024e9c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80024f10:	14102ff3          	csrr	t6,sepc
    80024f14:	fb5ff06f          	j	80024ec8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80024f18:	00003517          	auipc	a0,0x3
    80024f1c:	34050513          	addi	a0,a0,832 # 80028258 <CONSOLE_STATUS+0x248>
    80024f20:	fffff097          	auipc	ra,0xfffff
    80024f24:	2b0080e7          	jalr	688(ra) # 800241d0 <_Z11printStringPKc>
    finishedB = true;
    80024f28:	00100793          	li	a5,1
    80024f2c:	00006717          	auipc	a4,0x6
    80024f30:	d4f70023          	sb	a5,-704(a4) # 8002ac6c <_ZL9finishedB>
    thread_dispatch();
    80024f34:	ffffb097          	auipc	ra,0xffffb
    80024f38:	5a8080e7          	jalr	1448(ra) # 800204dc <_Z15thread_dispatchv>
}
    80024f3c:	01813083          	ld	ra,24(sp)
    80024f40:	01013403          	ld	s0,16(sp)
    80024f44:	00813483          	ld	s1,8(sp)
    80024f48:	00013903          	ld	s2,0(sp)
    80024f4c:	02010113          	addi	sp,sp,32
    80024f50:	00008067          	ret

0000000080024f54 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80024f54:	fe010113          	addi	sp,sp,-32
    80024f58:	00113c23          	sd	ra,24(sp)
    80024f5c:	00813823          	sd	s0,16(sp)
    80024f60:	00913423          	sd	s1,8(sp)
    80024f64:	01213023          	sd	s2,0(sp)
    80024f68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80024f6c:	00000913          	li	s2,0
    80024f70:	0380006f          	j	80024fa8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80024f74:	ffffb097          	auipc	ra,0xffffb
    80024f78:	568080e7          	jalr	1384(ra) # 800204dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80024f7c:	00148493          	addi	s1,s1,1
    80024f80:	000027b7          	lui	a5,0x2
    80024f84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80024f88:	0097ee63          	bltu	a5,s1,80024fa4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80024f8c:	00000713          	li	a4,0
    80024f90:	000077b7          	lui	a5,0x7
    80024f94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80024f98:	fce7eee3          	bltu	a5,a4,80024f74 <_ZL11workerBodyAPv+0x20>
    80024f9c:	00170713          	addi	a4,a4,1
    80024fa0:	ff1ff06f          	j	80024f90 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80024fa4:	00190913          	addi	s2,s2,1
    80024fa8:	00900793          	li	a5,9
    80024fac:	0527e063          	bltu	a5,s2,80024fec <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80024fb0:	00003517          	auipc	a0,0x3
    80024fb4:	28850513          	addi	a0,a0,648 # 80028238 <CONSOLE_STATUS+0x228>
    80024fb8:	fffff097          	auipc	ra,0xfffff
    80024fbc:	218080e7          	jalr	536(ra) # 800241d0 <_Z11printStringPKc>
    80024fc0:	00000613          	li	a2,0
    80024fc4:	00a00593          	li	a1,10
    80024fc8:	0009051b          	sext.w	a0,s2
    80024fcc:	fffff097          	auipc	ra,0xfffff
    80024fd0:	3b4080e7          	jalr	948(ra) # 80024380 <_Z8printIntiii>
    80024fd4:	00003517          	auipc	a0,0x3
    80024fd8:	4b450513          	addi	a0,a0,1204 # 80028488 <CONSOLE_STATUS+0x478>
    80024fdc:	fffff097          	auipc	ra,0xfffff
    80024fe0:	1f4080e7          	jalr	500(ra) # 800241d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80024fe4:	00000493          	li	s1,0
    80024fe8:	f99ff06f          	j	80024f80 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80024fec:	00003517          	auipc	a0,0x3
    80024ff0:	25450513          	addi	a0,a0,596 # 80028240 <CONSOLE_STATUS+0x230>
    80024ff4:	fffff097          	auipc	ra,0xfffff
    80024ff8:	1dc080e7          	jalr	476(ra) # 800241d0 <_Z11printStringPKc>
    finishedA = true;
    80024ffc:	00100793          	li	a5,1
    80025000:	00006717          	auipc	a4,0x6
    80025004:	c6f706a3          	sb	a5,-915(a4) # 8002ac6d <_ZL9finishedA>
}
    80025008:	01813083          	ld	ra,24(sp)
    8002500c:	01013403          	ld	s0,16(sp)
    80025010:	00813483          	ld	s1,8(sp)
    80025014:	00013903          	ld	s2,0(sp)
    80025018:	02010113          	addi	sp,sp,32
    8002501c:	00008067          	ret

0000000080025020 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80025020:	fd010113          	addi	sp,sp,-48
    80025024:	02113423          	sd	ra,40(sp)
    80025028:	02813023          	sd	s0,32(sp)
    8002502c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80025030:	00000613          	li	a2,0
    80025034:	00000597          	auipc	a1,0x0
    80025038:	f2058593          	addi	a1,a1,-224 # 80024f54 <_ZL11workerBodyAPv>
    8002503c:	fd040513          	addi	a0,s0,-48
    80025040:	ffffb097          	auipc	ra,0xffffb
    80025044:	4bc080e7          	jalr	1212(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80025048:	00003517          	auipc	a0,0x3
    8002504c:	28850513          	addi	a0,a0,648 # 800282d0 <CONSOLE_STATUS+0x2c0>
    80025050:	fffff097          	auipc	ra,0xfffff
    80025054:	180080e7          	jalr	384(ra) # 800241d0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80025058:	00000613          	li	a2,0
    8002505c:	00000597          	auipc	a1,0x0
    80025060:	e1458593          	addi	a1,a1,-492 # 80024e70 <_ZL11workerBodyBPv>
    80025064:	fd840513          	addi	a0,s0,-40
    80025068:	ffffb097          	auipc	ra,0xffffb
    8002506c:	494080e7          	jalr	1172(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80025070:	00003517          	auipc	a0,0x3
    80025074:	27850513          	addi	a0,a0,632 # 800282e8 <CONSOLE_STATUS+0x2d8>
    80025078:	fffff097          	auipc	ra,0xfffff
    8002507c:	158080e7          	jalr	344(ra) # 800241d0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80025080:	00000613          	li	a2,0
    80025084:	00000597          	auipc	a1,0x0
    80025088:	c6c58593          	addi	a1,a1,-916 # 80024cf0 <_ZL11workerBodyCPv>
    8002508c:	fe040513          	addi	a0,s0,-32
    80025090:	ffffb097          	auipc	ra,0xffffb
    80025094:	46c080e7          	jalr	1132(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80025098:	00003517          	auipc	a0,0x3
    8002509c:	26850513          	addi	a0,a0,616 # 80028300 <CONSOLE_STATUS+0x2f0>
    800250a0:	fffff097          	auipc	ra,0xfffff
    800250a4:	130080e7          	jalr	304(ra) # 800241d0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800250a8:	00000613          	li	a2,0
    800250ac:	00000597          	auipc	a1,0x0
    800250b0:	afc58593          	addi	a1,a1,-1284 # 80024ba8 <_ZL11workerBodyDPv>
    800250b4:	fe840513          	addi	a0,s0,-24
    800250b8:	ffffb097          	auipc	ra,0xffffb
    800250bc:	444080e7          	jalr	1092(ra) # 800204fc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800250c0:	00003517          	auipc	a0,0x3
    800250c4:	25850513          	addi	a0,a0,600 # 80028318 <CONSOLE_STATUS+0x308>
    800250c8:	fffff097          	auipc	ra,0xfffff
    800250cc:	108080e7          	jalr	264(ra) # 800241d0 <_Z11printStringPKc>
    800250d0:	00c0006f          	j	800250dc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800250d4:	ffffb097          	auipc	ra,0xffffb
    800250d8:	408080e7          	jalr	1032(ra) # 800204dc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800250dc:	00006797          	auipc	a5,0x6
    800250e0:	b917c783          	lbu	a5,-1135(a5) # 8002ac6d <_ZL9finishedA>
    800250e4:	fe0788e3          	beqz	a5,800250d4 <_Z16System_Mode_testv+0xb4>
    800250e8:	00006797          	auipc	a5,0x6
    800250ec:	b847c783          	lbu	a5,-1148(a5) # 8002ac6c <_ZL9finishedB>
    800250f0:	fe0782e3          	beqz	a5,800250d4 <_Z16System_Mode_testv+0xb4>
    800250f4:	00006797          	auipc	a5,0x6
    800250f8:	b777c783          	lbu	a5,-1161(a5) # 8002ac6b <_ZL9finishedC>
    800250fc:	fc078ce3          	beqz	a5,800250d4 <_Z16System_Mode_testv+0xb4>
    80025100:	00006797          	auipc	a5,0x6
    80025104:	b6a7c783          	lbu	a5,-1174(a5) # 8002ac6a <_ZL9finishedD>
    80025108:	fc0786e3          	beqz	a5,800250d4 <_Z16System_Mode_testv+0xb4>
    }

}
    8002510c:	02813083          	ld	ra,40(sp)
    80025110:	02013403          	ld	s0,32(sp)
    80025114:	03010113          	addi	sp,sp,48
    80025118:	00008067          	ret

000000008002511c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8002511c:	fe010113          	addi	sp,sp,-32
    80025120:	00113c23          	sd	ra,24(sp)
    80025124:	00813823          	sd	s0,16(sp)
    80025128:	00913423          	sd	s1,8(sp)
    8002512c:	01213023          	sd	s2,0(sp)
    80025130:	02010413          	addi	s0,sp,32
    80025134:	00050493          	mv	s1,a0
    80025138:	00058913          	mv	s2,a1
    8002513c:	0015879b          	addiw	a5,a1,1
    80025140:	0007851b          	sext.w	a0,a5
    80025144:	00f4a023          	sw	a5,0(s1)
    80025148:	0004a823          	sw	zero,16(s1)
    8002514c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80025150:	00251513          	slli	a0,a0,0x2
    80025154:	ffffb097          	auipc	ra,0xffffb
    80025158:	308080e7          	jalr	776(ra) # 8002045c <_Z9mem_allocm>
    8002515c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80025160:	00000593          	li	a1,0
    80025164:	02048513          	addi	a0,s1,32
    80025168:	ffffb097          	auipc	ra,0xffffb
    8002516c:	440080e7          	jalr	1088(ra) # 800205a8 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80025170:	00090593          	mv	a1,s2
    80025174:	01848513          	addi	a0,s1,24
    80025178:	ffffb097          	auipc	ra,0xffffb
    8002517c:	430080e7          	jalr	1072(ra) # 800205a8 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80025180:	00100593          	li	a1,1
    80025184:	02848513          	addi	a0,s1,40
    80025188:	ffffb097          	auipc	ra,0xffffb
    8002518c:	420080e7          	jalr	1056(ra) # 800205a8 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80025190:	00100593          	li	a1,1
    80025194:	03048513          	addi	a0,s1,48
    80025198:	ffffb097          	auipc	ra,0xffffb
    8002519c:	410080e7          	jalr	1040(ra) # 800205a8 <_Z8sem_openPP4_semj>
}
    800251a0:	01813083          	ld	ra,24(sp)
    800251a4:	01013403          	ld	s0,16(sp)
    800251a8:	00813483          	ld	s1,8(sp)
    800251ac:	00013903          	ld	s2,0(sp)
    800251b0:	02010113          	addi	sp,sp,32
    800251b4:	00008067          	ret

00000000800251b8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800251b8:	fe010113          	addi	sp,sp,-32
    800251bc:	00113c23          	sd	ra,24(sp)
    800251c0:	00813823          	sd	s0,16(sp)
    800251c4:	00913423          	sd	s1,8(sp)
    800251c8:	01213023          	sd	s2,0(sp)
    800251cc:	02010413          	addi	s0,sp,32
    800251d0:	00050493          	mv	s1,a0
    800251d4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800251d8:	01853503          	ld	a0,24(a0)
    800251dc:	ffffb097          	auipc	ra,0xffffb
    800251e0:	42c080e7          	jalr	1068(ra) # 80020608 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800251e4:	0304b503          	ld	a0,48(s1)
    800251e8:	ffffb097          	auipc	ra,0xffffb
    800251ec:	420080e7          	jalr	1056(ra) # 80020608 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800251f0:	0084b783          	ld	a5,8(s1)
    800251f4:	0144a703          	lw	a4,20(s1)
    800251f8:	00271713          	slli	a4,a4,0x2
    800251fc:	00e787b3          	add	a5,a5,a4
    80025200:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80025204:	0144a783          	lw	a5,20(s1)
    80025208:	0017879b          	addiw	a5,a5,1
    8002520c:	0004a703          	lw	a4,0(s1)
    80025210:	02e7e7bb          	remw	a5,a5,a4
    80025214:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80025218:	0304b503          	ld	a0,48(s1)
    8002521c:	ffffb097          	auipc	ra,0xffffb
    80025220:	414080e7          	jalr	1044(ra) # 80020630 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80025224:	0204b503          	ld	a0,32(s1)
    80025228:	ffffb097          	auipc	ra,0xffffb
    8002522c:	408080e7          	jalr	1032(ra) # 80020630 <_Z10sem_signalP4_sem>

}
    80025230:	01813083          	ld	ra,24(sp)
    80025234:	01013403          	ld	s0,16(sp)
    80025238:	00813483          	ld	s1,8(sp)
    8002523c:	00013903          	ld	s2,0(sp)
    80025240:	02010113          	addi	sp,sp,32
    80025244:	00008067          	ret

0000000080025248 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80025248:	fe010113          	addi	sp,sp,-32
    8002524c:	00113c23          	sd	ra,24(sp)
    80025250:	00813823          	sd	s0,16(sp)
    80025254:	00913423          	sd	s1,8(sp)
    80025258:	01213023          	sd	s2,0(sp)
    8002525c:	02010413          	addi	s0,sp,32
    80025260:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80025264:	02053503          	ld	a0,32(a0)
    80025268:	ffffb097          	auipc	ra,0xffffb
    8002526c:	3a0080e7          	jalr	928(ra) # 80020608 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80025270:	0284b503          	ld	a0,40(s1)
    80025274:	ffffb097          	auipc	ra,0xffffb
    80025278:	394080e7          	jalr	916(ra) # 80020608 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8002527c:	0084b703          	ld	a4,8(s1)
    80025280:	0104a783          	lw	a5,16(s1)
    80025284:	00279693          	slli	a3,a5,0x2
    80025288:	00d70733          	add	a4,a4,a3
    8002528c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80025290:	0017879b          	addiw	a5,a5,1
    80025294:	0004a703          	lw	a4,0(s1)
    80025298:	02e7e7bb          	remw	a5,a5,a4
    8002529c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800252a0:	0284b503          	ld	a0,40(s1)
    800252a4:	ffffb097          	auipc	ra,0xffffb
    800252a8:	38c080e7          	jalr	908(ra) # 80020630 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800252ac:	0184b503          	ld	a0,24(s1)
    800252b0:	ffffb097          	auipc	ra,0xffffb
    800252b4:	380080e7          	jalr	896(ra) # 80020630 <_Z10sem_signalP4_sem>

    return ret;
}
    800252b8:	00090513          	mv	a0,s2
    800252bc:	01813083          	ld	ra,24(sp)
    800252c0:	01013403          	ld	s0,16(sp)
    800252c4:	00813483          	ld	s1,8(sp)
    800252c8:	00013903          	ld	s2,0(sp)
    800252cc:	02010113          	addi	sp,sp,32
    800252d0:	00008067          	ret

00000000800252d4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800252d4:	fe010113          	addi	sp,sp,-32
    800252d8:	00113c23          	sd	ra,24(sp)
    800252dc:	00813823          	sd	s0,16(sp)
    800252e0:	00913423          	sd	s1,8(sp)
    800252e4:	01213023          	sd	s2,0(sp)
    800252e8:	02010413          	addi	s0,sp,32
    800252ec:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800252f0:	02853503          	ld	a0,40(a0)
    800252f4:	ffffb097          	auipc	ra,0xffffb
    800252f8:	314080e7          	jalr	788(ra) # 80020608 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800252fc:	0304b503          	ld	a0,48(s1)
    80025300:	ffffb097          	auipc	ra,0xffffb
    80025304:	308080e7          	jalr	776(ra) # 80020608 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80025308:	0144a783          	lw	a5,20(s1)
    8002530c:	0104a903          	lw	s2,16(s1)
    80025310:	0327ce63          	blt	a5,s2,8002534c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80025314:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80025318:	0304b503          	ld	a0,48(s1)
    8002531c:	ffffb097          	auipc	ra,0xffffb
    80025320:	314080e7          	jalr	788(ra) # 80020630 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80025324:	0284b503          	ld	a0,40(s1)
    80025328:	ffffb097          	auipc	ra,0xffffb
    8002532c:	308080e7          	jalr	776(ra) # 80020630 <_Z10sem_signalP4_sem>

    return ret;
}
    80025330:	00090513          	mv	a0,s2
    80025334:	01813083          	ld	ra,24(sp)
    80025338:	01013403          	ld	s0,16(sp)
    8002533c:	00813483          	ld	s1,8(sp)
    80025340:	00013903          	ld	s2,0(sp)
    80025344:	02010113          	addi	sp,sp,32
    80025348:	00008067          	ret
        ret = cap - head + tail;
    8002534c:	0004a703          	lw	a4,0(s1)
    80025350:	4127093b          	subw	s2,a4,s2
    80025354:	00f9093b          	addw	s2,s2,a5
    80025358:	fc1ff06f          	j	80025318 <_ZN6Buffer6getCntEv+0x44>

000000008002535c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8002535c:	fe010113          	addi	sp,sp,-32
    80025360:	00113c23          	sd	ra,24(sp)
    80025364:	00813823          	sd	s0,16(sp)
    80025368:	00913423          	sd	s1,8(sp)
    8002536c:	02010413          	addi	s0,sp,32
    80025370:	00050493          	mv	s1,a0
    putc('\n');
    80025374:	00a00513          	li	a0,10
    80025378:	ffffb097          	auipc	ra,0xffffb
    8002537c:	32c080e7          	jalr	812(ra) # 800206a4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80025380:	00003517          	auipc	a0,0x3
    80025384:	fb050513          	addi	a0,a0,-80 # 80028330 <CONSOLE_STATUS+0x320>
    80025388:	fffff097          	auipc	ra,0xfffff
    8002538c:	e48080e7          	jalr	-440(ra) # 800241d0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80025390:	00048513          	mv	a0,s1
    80025394:	00000097          	auipc	ra,0x0
    80025398:	f40080e7          	jalr	-192(ra) # 800252d4 <_ZN6Buffer6getCntEv>
    8002539c:	02a05c63          	blez	a0,800253d4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800253a0:	0084b783          	ld	a5,8(s1)
    800253a4:	0104a703          	lw	a4,16(s1)
    800253a8:	00271713          	slli	a4,a4,0x2
    800253ac:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800253b0:	0007c503          	lbu	a0,0(a5)
    800253b4:	ffffb097          	auipc	ra,0xffffb
    800253b8:	2f0080e7          	jalr	752(ra) # 800206a4 <_Z4putcc>
        head = (head + 1) % cap;
    800253bc:	0104a783          	lw	a5,16(s1)
    800253c0:	0017879b          	addiw	a5,a5,1
    800253c4:	0004a703          	lw	a4,0(s1)
    800253c8:	02e7e7bb          	remw	a5,a5,a4
    800253cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800253d0:	fc1ff06f          	j	80025390 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800253d4:	02100513          	li	a0,33
    800253d8:	ffffb097          	auipc	ra,0xffffb
    800253dc:	2cc080e7          	jalr	716(ra) # 800206a4 <_Z4putcc>
    putc('\n');
    800253e0:	00a00513          	li	a0,10
    800253e4:	ffffb097          	auipc	ra,0xffffb
    800253e8:	2c0080e7          	jalr	704(ra) # 800206a4 <_Z4putcc>
    mem_free(buffer);
    800253ec:	0084b503          	ld	a0,8(s1)
    800253f0:	ffffb097          	auipc	ra,0xffffb
    800253f4:	094080e7          	jalr	148(ra) # 80020484 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800253f8:	0204b503          	ld	a0,32(s1)
    800253fc:	ffffb097          	auipc	ra,0xffffb
    80025400:	1e4080e7          	jalr	484(ra) # 800205e0 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80025404:	0184b503          	ld	a0,24(s1)
    80025408:	ffffb097          	auipc	ra,0xffffb
    8002540c:	1d8080e7          	jalr	472(ra) # 800205e0 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80025410:	0304b503          	ld	a0,48(s1)
    80025414:	ffffb097          	auipc	ra,0xffffb
    80025418:	1cc080e7          	jalr	460(ra) # 800205e0 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8002541c:	0284b503          	ld	a0,40(s1)
    80025420:	ffffb097          	auipc	ra,0xffffb
    80025424:	1c0080e7          	jalr	448(ra) # 800205e0 <_Z9sem_closeP4_sem>
}
    80025428:	01813083          	ld	ra,24(sp)
    8002542c:	01013403          	ld	s0,16(sp)
    80025430:	00813483          	ld	s1,8(sp)
    80025434:	02010113          	addi	sp,sp,32
    80025438:	00008067          	ret

000000008002543c <start>:
    8002543c:	ff010113          	addi	sp,sp,-16
    80025440:	00813423          	sd	s0,8(sp)
    80025444:	01010413          	addi	s0,sp,16
    80025448:	300027f3          	csrr	a5,mstatus
    8002544c:	ffffe737          	lui	a4,0xffffe
    80025450:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffd292f>
    80025454:	00e7f7b3          	and	a5,a5,a4
    80025458:	00001737          	lui	a4,0x1
    8002545c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80025460:	00e7e7b3          	or	a5,a5,a4
    80025464:	30079073          	csrw	mstatus,a5
    80025468:	00000797          	auipc	a5,0x0
    8002546c:	16078793          	addi	a5,a5,352 # 800255c8 <system_main>
    80025470:	34179073          	csrw	mepc,a5
    80025474:	00000793          	li	a5,0
    80025478:	18079073          	csrw	satp,a5
    8002547c:	000107b7          	lui	a5,0x10
    80025480:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80025484:	30279073          	csrw	medeleg,a5
    80025488:	30379073          	csrw	mideleg,a5
    8002548c:	104027f3          	csrr	a5,sie
    80025490:	2227e793          	ori	a5,a5,546
    80025494:	10479073          	csrw	sie,a5
    80025498:	fff00793          	li	a5,-1
    8002549c:	00a7d793          	srli	a5,a5,0xa
    800254a0:	3b079073          	csrw	pmpaddr0,a5
    800254a4:	00f00793          	li	a5,15
    800254a8:	3a079073          	csrw	pmpcfg0,a5
    800254ac:	f14027f3          	csrr	a5,mhartid
    800254b0:	0200c737          	lui	a4,0x200c
    800254b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800254b8:	0007869b          	sext.w	a3,a5
    800254bc:	00269713          	slli	a4,a3,0x2
    800254c0:	000f4637          	lui	a2,0xf4
    800254c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800254c8:	00d70733          	add	a4,a4,a3
    800254cc:	0037979b          	slliw	a5,a5,0x3
    800254d0:	020046b7          	lui	a3,0x2004
    800254d4:	00d787b3          	add	a5,a5,a3
    800254d8:	00c585b3          	add	a1,a1,a2
    800254dc:	00371693          	slli	a3,a4,0x3
    800254e0:	00005717          	auipc	a4,0x5
    800254e4:	79070713          	addi	a4,a4,1936 # 8002ac70 <timer_scratch>
    800254e8:	00b7b023          	sd	a1,0(a5)
    800254ec:	00d70733          	add	a4,a4,a3
    800254f0:	00f73c23          	sd	a5,24(a4)
    800254f4:	02c73023          	sd	a2,32(a4)
    800254f8:	34071073          	csrw	mscratch,a4
    800254fc:	00000797          	auipc	a5,0x0
    80025500:	6e478793          	addi	a5,a5,1764 # 80025be0 <timervec>
    80025504:	30579073          	csrw	mtvec,a5
    80025508:	300027f3          	csrr	a5,mstatus
    8002550c:	0087e793          	ori	a5,a5,8
    80025510:	30079073          	csrw	mstatus,a5
    80025514:	304027f3          	csrr	a5,mie
    80025518:	0807e793          	ori	a5,a5,128
    8002551c:	30479073          	csrw	mie,a5
    80025520:	f14027f3          	csrr	a5,mhartid
    80025524:	0007879b          	sext.w	a5,a5
    80025528:	00078213          	mv	tp,a5
    8002552c:	30200073          	mret
    80025530:	00813403          	ld	s0,8(sp)
    80025534:	01010113          	addi	sp,sp,16
    80025538:	00008067          	ret

000000008002553c <timerinit>:
    8002553c:	ff010113          	addi	sp,sp,-16
    80025540:	00813423          	sd	s0,8(sp)
    80025544:	01010413          	addi	s0,sp,16
    80025548:	f14027f3          	csrr	a5,mhartid
    8002554c:	0200c737          	lui	a4,0x200c
    80025550:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80025554:	0007869b          	sext.w	a3,a5
    80025558:	00269713          	slli	a4,a3,0x2
    8002555c:	000f4637          	lui	a2,0xf4
    80025560:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80025564:	00d70733          	add	a4,a4,a3
    80025568:	0037979b          	slliw	a5,a5,0x3
    8002556c:	020046b7          	lui	a3,0x2004
    80025570:	00d787b3          	add	a5,a5,a3
    80025574:	00c585b3          	add	a1,a1,a2
    80025578:	00371693          	slli	a3,a4,0x3
    8002557c:	00005717          	auipc	a4,0x5
    80025580:	6f470713          	addi	a4,a4,1780 # 8002ac70 <timer_scratch>
    80025584:	00b7b023          	sd	a1,0(a5)
    80025588:	00d70733          	add	a4,a4,a3
    8002558c:	00f73c23          	sd	a5,24(a4)
    80025590:	02c73023          	sd	a2,32(a4)
    80025594:	34071073          	csrw	mscratch,a4
    80025598:	00000797          	auipc	a5,0x0
    8002559c:	64878793          	addi	a5,a5,1608 # 80025be0 <timervec>
    800255a0:	30579073          	csrw	mtvec,a5
    800255a4:	300027f3          	csrr	a5,mstatus
    800255a8:	0087e793          	ori	a5,a5,8
    800255ac:	30079073          	csrw	mstatus,a5
    800255b0:	304027f3          	csrr	a5,mie
    800255b4:	0807e793          	ori	a5,a5,128
    800255b8:	30479073          	csrw	mie,a5
    800255bc:	00813403          	ld	s0,8(sp)
    800255c0:	01010113          	addi	sp,sp,16
    800255c4:	00008067          	ret

00000000800255c8 <system_main>:
    800255c8:	fe010113          	addi	sp,sp,-32
    800255cc:	00813823          	sd	s0,16(sp)
    800255d0:	00913423          	sd	s1,8(sp)
    800255d4:	00113c23          	sd	ra,24(sp)
    800255d8:	02010413          	addi	s0,sp,32
    800255dc:	00000097          	auipc	ra,0x0
    800255e0:	0c4080e7          	jalr	196(ra) # 800256a0 <cpuid>
    800255e4:	00005497          	auipc	s1,0x5
    800255e8:	35c48493          	addi	s1,s1,860 # 8002a940 <started>
    800255ec:	02050263          	beqz	a0,80025610 <system_main+0x48>
    800255f0:	0004a783          	lw	a5,0(s1)
    800255f4:	0007879b          	sext.w	a5,a5
    800255f8:	fe078ce3          	beqz	a5,800255f0 <system_main+0x28>
    800255fc:	0ff0000f          	fence
    80025600:	00003517          	auipc	a0,0x3
    80025604:	05050513          	addi	a0,a0,80 # 80028650 <CONSOLE_STATUS+0x640>
    80025608:	00001097          	auipc	ra,0x1
    8002560c:	a74080e7          	jalr	-1420(ra) # 8002607c <panic>
    80025610:	00001097          	auipc	ra,0x1
    80025614:	9c8080e7          	jalr	-1592(ra) # 80025fd8 <consoleinit>
    80025618:	00001097          	auipc	ra,0x1
    8002561c:	154080e7          	jalr	340(ra) # 8002676c <printfinit>
    80025620:	00003517          	auipc	a0,0x3
    80025624:	e6850513          	addi	a0,a0,-408 # 80028488 <CONSOLE_STATUS+0x478>
    80025628:	00001097          	auipc	ra,0x1
    8002562c:	ab0080e7          	jalr	-1360(ra) # 800260d8 <__printf>
    80025630:	00003517          	auipc	a0,0x3
    80025634:	ff050513          	addi	a0,a0,-16 # 80028620 <CONSOLE_STATUS+0x610>
    80025638:	00001097          	auipc	ra,0x1
    8002563c:	aa0080e7          	jalr	-1376(ra) # 800260d8 <__printf>
    80025640:	00003517          	auipc	a0,0x3
    80025644:	e4850513          	addi	a0,a0,-440 # 80028488 <CONSOLE_STATUS+0x478>
    80025648:	00001097          	auipc	ra,0x1
    8002564c:	a90080e7          	jalr	-1392(ra) # 800260d8 <__printf>
    80025650:	00001097          	auipc	ra,0x1
    80025654:	4a8080e7          	jalr	1192(ra) # 80026af8 <kinit>
    80025658:	00000097          	auipc	ra,0x0
    8002565c:	148080e7          	jalr	328(ra) # 800257a0 <trapinit>
    80025660:	00000097          	auipc	ra,0x0
    80025664:	16c080e7          	jalr	364(ra) # 800257cc <trapinithart>
    80025668:	00000097          	auipc	ra,0x0
    8002566c:	5b8080e7          	jalr	1464(ra) # 80025c20 <plicinit>
    80025670:	00000097          	auipc	ra,0x0
    80025674:	5d8080e7          	jalr	1496(ra) # 80025c48 <plicinithart>
    80025678:	00000097          	auipc	ra,0x0
    8002567c:	078080e7          	jalr	120(ra) # 800256f0 <userinit>
    80025680:	0ff0000f          	fence
    80025684:	00100793          	li	a5,1
    80025688:	00003517          	auipc	a0,0x3
    8002568c:	fb050513          	addi	a0,a0,-80 # 80028638 <CONSOLE_STATUS+0x628>
    80025690:	00f4a023          	sw	a5,0(s1)
    80025694:	00001097          	auipc	ra,0x1
    80025698:	a44080e7          	jalr	-1468(ra) # 800260d8 <__printf>
    8002569c:	0000006f          	j	8002569c <system_main+0xd4>

00000000800256a0 <cpuid>:
    800256a0:	ff010113          	addi	sp,sp,-16
    800256a4:	00813423          	sd	s0,8(sp)
    800256a8:	01010413          	addi	s0,sp,16
    800256ac:	00020513          	mv	a0,tp
    800256b0:	00813403          	ld	s0,8(sp)
    800256b4:	0005051b          	sext.w	a0,a0
    800256b8:	01010113          	addi	sp,sp,16
    800256bc:	00008067          	ret

00000000800256c0 <mycpu>:
    800256c0:	ff010113          	addi	sp,sp,-16
    800256c4:	00813423          	sd	s0,8(sp)
    800256c8:	01010413          	addi	s0,sp,16
    800256cc:	00020793          	mv	a5,tp
    800256d0:	00813403          	ld	s0,8(sp)
    800256d4:	0007879b          	sext.w	a5,a5
    800256d8:	00779793          	slli	a5,a5,0x7
    800256dc:	00006517          	auipc	a0,0x6
    800256e0:	5c450513          	addi	a0,a0,1476 # 8002bca0 <cpus>
    800256e4:	00f50533          	add	a0,a0,a5
    800256e8:	01010113          	addi	sp,sp,16
    800256ec:	00008067          	ret

00000000800256f0 <userinit>:
    800256f0:	ff010113          	addi	sp,sp,-16
    800256f4:	00813423          	sd	s0,8(sp)
    800256f8:	01010413          	addi	s0,sp,16
    800256fc:	00813403          	ld	s0,8(sp)
    80025700:	01010113          	addi	sp,sp,16
    80025704:	ffffc317          	auipc	t1,0xffffc
    80025708:	cd430067          	jr	-812(t1) # 800213d8 <main>

000000008002570c <either_copyout>:
    8002570c:	ff010113          	addi	sp,sp,-16
    80025710:	00813023          	sd	s0,0(sp)
    80025714:	00113423          	sd	ra,8(sp)
    80025718:	01010413          	addi	s0,sp,16
    8002571c:	02051663          	bnez	a0,80025748 <either_copyout+0x3c>
    80025720:	00058513          	mv	a0,a1
    80025724:	00060593          	mv	a1,a2
    80025728:	0006861b          	sext.w	a2,a3
    8002572c:	00002097          	auipc	ra,0x2
    80025730:	c58080e7          	jalr	-936(ra) # 80027384 <__memmove>
    80025734:	00813083          	ld	ra,8(sp)
    80025738:	00013403          	ld	s0,0(sp)
    8002573c:	00000513          	li	a0,0
    80025740:	01010113          	addi	sp,sp,16
    80025744:	00008067          	ret
    80025748:	00003517          	auipc	a0,0x3
    8002574c:	f3050513          	addi	a0,a0,-208 # 80028678 <CONSOLE_STATUS+0x668>
    80025750:	00001097          	auipc	ra,0x1
    80025754:	92c080e7          	jalr	-1748(ra) # 8002607c <panic>

0000000080025758 <either_copyin>:
    80025758:	ff010113          	addi	sp,sp,-16
    8002575c:	00813023          	sd	s0,0(sp)
    80025760:	00113423          	sd	ra,8(sp)
    80025764:	01010413          	addi	s0,sp,16
    80025768:	02059463          	bnez	a1,80025790 <either_copyin+0x38>
    8002576c:	00060593          	mv	a1,a2
    80025770:	0006861b          	sext.w	a2,a3
    80025774:	00002097          	auipc	ra,0x2
    80025778:	c10080e7          	jalr	-1008(ra) # 80027384 <__memmove>
    8002577c:	00813083          	ld	ra,8(sp)
    80025780:	00013403          	ld	s0,0(sp)
    80025784:	00000513          	li	a0,0
    80025788:	01010113          	addi	sp,sp,16
    8002578c:	00008067          	ret
    80025790:	00003517          	auipc	a0,0x3
    80025794:	f1050513          	addi	a0,a0,-240 # 800286a0 <CONSOLE_STATUS+0x690>
    80025798:	00001097          	auipc	ra,0x1
    8002579c:	8e4080e7          	jalr	-1820(ra) # 8002607c <panic>

00000000800257a0 <trapinit>:
    800257a0:	ff010113          	addi	sp,sp,-16
    800257a4:	00813423          	sd	s0,8(sp)
    800257a8:	01010413          	addi	s0,sp,16
    800257ac:	00813403          	ld	s0,8(sp)
    800257b0:	00003597          	auipc	a1,0x3
    800257b4:	f1858593          	addi	a1,a1,-232 # 800286c8 <CONSOLE_STATUS+0x6b8>
    800257b8:	00006517          	auipc	a0,0x6
    800257bc:	56850513          	addi	a0,a0,1384 # 8002bd20 <tickslock>
    800257c0:	01010113          	addi	sp,sp,16
    800257c4:	00001317          	auipc	t1,0x1
    800257c8:	5c430067          	jr	1476(t1) # 80026d88 <initlock>

00000000800257cc <trapinithart>:
    800257cc:	ff010113          	addi	sp,sp,-16
    800257d0:	00813423          	sd	s0,8(sp)
    800257d4:	01010413          	addi	s0,sp,16
    800257d8:	00000797          	auipc	a5,0x0
    800257dc:	2f878793          	addi	a5,a5,760 # 80025ad0 <kernelvec>
    800257e0:	10579073          	csrw	stvec,a5
    800257e4:	00813403          	ld	s0,8(sp)
    800257e8:	01010113          	addi	sp,sp,16
    800257ec:	00008067          	ret

00000000800257f0 <usertrap>:
    800257f0:	ff010113          	addi	sp,sp,-16
    800257f4:	00813423          	sd	s0,8(sp)
    800257f8:	01010413          	addi	s0,sp,16
    800257fc:	00813403          	ld	s0,8(sp)
    80025800:	01010113          	addi	sp,sp,16
    80025804:	00008067          	ret

0000000080025808 <usertrapret>:
    80025808:	ff010113          	addi	sp,sp,-16
    8002580c:	00813423          	sd	s0,8(sp)
    80025810:	01010413          	addi	s0,sp,16
    80025814:	00813403          	ld	s0,8(sp)
    80025818:	01010113          	addi	sp,sp,16
    8002581c:	00008067          	ret

0000000080025820 <kerneltrap>:
    80025820:	fe010113          	addi	sp,sp,-32
    80025824:	00813823          	sd	s0,16(sp)
    80025828:	00113c23          	sd	ra,24(sp)
    8002582c:	00913423          	sd	s1,8(sp)
    80025830:	02010413          	addi	s0,sp,32
    80025834:	142025f3          	csrr	a1,scause
    80025838:	100027f3          	csrr	a5,sstatus
    8002583c:	0027f793          	andi	a5,a5,2
    80025840:	10079c63          	bnez	a5,80025958 <kerneltrap+0x138>
    80025844:	142027f3          	csrr	a5,scause
    80025848:	0207ce63          	bltz	a5,80025884 <kerneltrap+0x64>
    8002584c:	00003517          	auipc	a0,0x3
    80025850:	ec450513          	addi	a0,a0,-316 # 80028710 <CONSOLE_STATUS+0x700>
    80025854:	00001097          	auipc	ra,0x1
    80025858:	884080e7          	jalr	-1916(ra) # 800260d8 <__printf>
    8002585c:	141025f3          	csrr	a1,sepc
    80025860:	14302673          	csrr	a2,stval
    80025864:	00003517          	auipc	a0,0x3
    80025868:	ebc50513          	addi	a0,a0,-324 # 80028720 <CONSOLE_STATUS+0x710>
    8002586c:	00001097          	auipc	ra,0x1
    80025870:	86c080e7          	jalr	-1940(ra) # 800260d8 <__printf>
    80025874:	00003517          	auipc	a0,0x3
    80025878:	ec450513          	addi	a0,a0,-316 # 80028738 <CONSOLE_STATUS+0x728>
    8002587c:	00001097          	auipc	ra,0x1
    80025880:	800080e7          	jalr	-2048(ra) # 8002607c <panic>
    80025884:	0ff7f713          	andi	a4,a5,255
    80025888:	00900693          	li	a3,9
    8002588c:	04d70063          	beq	a4,a3,800258cc <kerneltrap+0xac>
    80025890:	fff00713          	li	a4,-1
    80025894:	03f71713          	slli	a4,a4,0x3f
    80025898:	00170713          	addi	a4,a4,1
    8002589c:	fae798e3          	bne	a5,a4,8002584c <kerneltrap+0x2c>
    800258a0:	00000097          	auipc	ra,0x0
    800258a4:	e00080e7          	jalr	-512(ra) # 800256a0 <cpuid>
    800258a8:	06050663          	beqz	a0,80025914 <kerneltrap+0xf4>
    800258ac:	144027f3          	csrr	a5,sip
    800258b0:	ffd7f793          	andi	a5,a5,-3
    800258b4:	14479073          	csrw	sip,a5
    800258b8:	01813083          	ld	ra,24(sp)
    800258bc:	01013403          	ld	s0,16(sp)
    800258c0:	00813483          	ld	s1,8(sp)
    800258c4:	02010113          	addi	sp,sp,32
    800258c8:	00008067          	ret
    800258cc:	00000097          	auipc	ra,0x0
    800258d0:	3c8080e7          	jalr	968(ra) # 80025c94 <plic_claim>
    800258d4:	00a00793          	li	a5,10
    800258d8:	00050493          	mv	s1,a0
    800258dc:	06f50863          	beq	a0,a5,8002594c <kerneltrap+0x12c>
    800258e0:	fc050ce3          	beqz	a0,800258b8 <kerneltrap+0x98>
    800258e4:	00050593          	mv	a1,a0
    800258e8:	00003517          	auipc	a0,0x3
    800258ec:	e0850513          	addi	a0,a0,-504 # 800286f0 <CONSOLE_STATUS+0x6e0>
    800258f0:	00000097          	auipc	ra,0x0
    800258f4:	7e8080e7          	jalr	2024(ra) # 800260d8 <__printf>
    800258f8:	01013403          	ld	s0,16(sp)
    800258fc:	01813083          	ld	ra,24(sp)
    80025900:	00048513          	mv	a0,s1
    80025904:	00813483          	ld	s1,8(sp)
    80025908:	02010113          	addi	sp,sp,32
    8002590c:	00000317          	auipc	t1,0x0
    80025910:	3c030067          	jr	960(t1) # 80025ccc <plic_complete>
    80025914:	00006517          	auipc	a0,0x6
    80025918:	40c50513          	addi	a0,a0,1036 # 8002bd20 <tickslock>
    8002591c:	00001097          	auipc	ra,0x1
    80025920:	490080e7          	jalr	1168(ra) # 80026dac <acquire>
    80025924:	00005717          	auipc	a4,0x5
    80025928:	02070713          	addi	a4,a4,32 # 8002a944 <ticks>
    8002592c:	00072783          	lw	a5,0(a4)
    80025930:	00006517          	auipc	a0,0x6
    80025934:	3f050513          	addi	a0,a0,1008 # 8002bd20 <tickslock>
    80025938:	0017879b          	addiw	a5,a5,1
    8002593c:	00f72023          	sw	a5,0(a4)
    80025940:	00001097          	auipc	ra,0x1
    80025944:	538080e7          	jalr	1336(ra) # 80026e78 <release>
    80025948:	f65ff06f          	j	800258ac <kerneltrap+0x8c>
    8002594c:	00001097          	auipc	ra,0x1
    80025950:	094080e7          	jalr	148(ra) # 800269e0 <uartintr>
    80025954:	fa5ff06f          	j	800258f8 <kerneltrap+0xd8>
    80025958:	00003517          	auipc	a0,0x3
    8002595c:	d7850513          	addi	a0,a0,-648 # 800286d0 <CONSOLE_STATUS+0x6c0>
    80025960:	00000097          	auipc	ra,0x0
    80025964:	71c080e7          	jalr	1820(ra) # 8002607c <panic>

0000000080025968 <clockintr>:
    80025968:	fe010113          	addi	sp,sp,-32
    8002596c:	00813823          	sd	s0,16(sp)
    80025970:	00913423          	sd	s1,8(sp)
    80025974:	00113c23          	sd	ra,24(sp)
    80025978:	02010413          	addi	s0,sp,32
    8002597c:	00006497          	auipc	s1,0x6
    80025980:	3a448493          	addi	s1,s1,932 # 8002bd20 <tickslock>
    80025984:	00048513          	mv	a0,s1
    80025988:	00001097          	auipc	ra,0x1
    8002598c:	424080e7          	jalr	1060(ra) # 80026dac <acquire>
    80025990:	00005717          	auipc	a4,0x5
    80025994:	fb470713          	addi	a4,a4,-76 # 8002a944 <ticks>
    80025998:	00072783          	lw	a5,0(a4)
    8002599c:	01013403          	ld	s0,16(sp)
    800259a0:	01813083          	ld	ra,24(sp)
    800259a4:	00048513          	mv	a0,s1
    800259a8:	0017879b          	addiw	a5,a5,1
    800259ac:	00813483          	ld	s1,8(sp)
    800259b0:	00f72023          	sw	a5,0(a4)
    800259b4:	02010113          	addi	sp,sp,32
    800259b8:	00001317          	auipc	t1,0x1
    800259bc:	4c030067          	jr	1216(t1) # 80026e78 <release>

00000000800259c0 <devintr>:
    800259c0:	142027f3          	csrr	a5,scause
    800259c4:	00000513          	li	a0,0
    800259c8:	0007c463          	bltz	a5,800259d0 <devintr+0x10>
    800259cc:	00008067          	ret
    800259d0:	fe010113          	addi	sp,sp,-32
    800259d4:	00813823          	sd	s0,16(sp)
    800259d8:	00113c23          	sd	ra,24(sp)
    800259dc:	00913423          	sd	s1,8(sp)
    800259e0:	02010413          	addi	s0,sp,32
    800259e4:	0ff7f713          	andi	a4,a5,255
    800259e8:	00900693          	li	a3,9
    800259ec:	04d70c63          	beq	a4,a3,80025a44 <devintr+0x84>
    800259f0:	fff00713          	li	a4,-1
    800259f4:	03f71713          	slli	a4,a4,0x3f
    800259f8:	00170713          	addi	a4,a4,1
    800259fc:	00e78c63          	beq	a5,a4,80025a14 <devintr+0x54>
    80025a00:	01813083          	ld	ra,24(sp)
    80025a04:	01013403          	ld	s0,16(sp)
    80025a08:	00813483          	ld	s1,8(sp)
    80025a0c:	02010113          	addi	sp,sp,32
    80025a10:	00008067          	ret
    80025a14:	00000097          	auipc	ra,0x0
    80025a18:	c8c080e7          	jalr	-884(ra) # 800256a0 <cpuid>
    80025a1c:	06050663          	beqz	a0,80025a88 <devintr+0xc8>
    80025a20:	144027f3          	csrr	a5,sip
    80025a24:	ffd7f793          	andi	a5,a5,-3
    80025a28:	14479073          	csrw	sip,a5
    80025a2c:	01813083          	ld	ra,24(sp)
    80025a30:	01013403          	ld	s0,16(sp)
    80025a34:	00813483          	ld	s1,8(sp)
    80025a38:	00200513          	li	a0,2
    80025a3c:	02010113          	addi	sp,sp,32
    80025a40:	00008067          	ret
    80025a44:	00000097          	auipc	ra,0x0
    80025a48:	250080e7          	jalr	592(ra) # 80025c94 <plic_claim>
    80025a4c:	00a00793          	li	a5,10
    80025a50:	00050493          	mv	s1,a0
    80025a54:	06f50663          	beq	a0,a5,80025ac0 <devintr+0x100>
    80025a58:	00100513          	li	a0,1
    80025a5c:	fa0482e3          	beqz	s1,80025a00 <devintr+0x40>
    80025a60:	00048593          	mv	a1,s1
    80025a64:	00003517          	auipc	a0,0x3
    80025a68:	c8c50513          	addi	a0,a0,-884 # 800286f0 <CONSOLE_STATUS+0x6e0>
    80025a6c:	00000097          	auipc	ra,0x0
    80025a70:	66c080e7          	jalr	1644(ra) # 800260d8 <__printf>
    80025a74:	00048513          	mv	a0,s1
    80025a78:	00000097          	auipc	ra,0x0
    80025a7c:	254080e7          	jalr	596(ra) # 80025ccc <plic_complete>
    80025a80:	00100513          	li	a0,1
    80025a84:	f7dff06f          	j	80025a00 <devintr+0x40>
    80025a88:	00006517          	auipc	a0,0x6
    80025a8c:	29850513          	addi	a0,a0,664 # 8002bd20 <tickslock>
    80025a90:	00001097          	auipc	ra,0x1
    80025a94:	31c080e7          	jalr	796(ra) # 80026dac <acquire>
    80025a98:	00005717          	auipc	a4,0x5
    80025a9c:	eac70713          	addi	a4,a4,-340 # 8002a944 <ticks>
    80025aa0:	00072783          	lw	a5,0(a4)
    80025aa4:	00006517          	auipc	a0,0x6
    80025aa8:	27c50513          	addi	a0,a0,636 # 8002bd20 <tickslock>
    80025aac:	0017879b          	addiw	a5,a5,1
    80025ab0:	00f72023          	sw	a5,0(a4)
    80025ab4:	00001097          	auipc	ra,0x1
    80025ab8:	3c4080e7          	jalr	964(ra) # 80026e78 <release>
    80025abc:	f65ff06f          	j	80025a20 <devintr+0x60>
    80025ac0:	00001097          	auipc	ra,0x1
    80025ac4:	f20080e7          	jalr	-224(ra) # 800269e0 <uartintr>
    80025ac8:	fadff06f          	j	80025a74 <devintr+0xb4>
    80025acc:	0000                	unimp
	...

0000000080025ad0 <kernelvec>:
    80025ad0:	f0010113          	addi	sp,sp,-256
    80025ad4:	00113023          	sd	ra,0(sp)
    80025ad8:	00213423          	sd	sp,8(sp)
    80025adc:	00313823          	sd	gp,16(sp)
    80025ae0:	00413c23          	sd	tp,24(sp)
    80025ae4:	02513023          	sd	t0,32(sp)
    80025ae8:	02613423          	sd	t1,40(sp)
    80025aec:	02713823          	sd	t2,48(sp)
    80025af0:	02813c23          	sd	s0,56(sp)
    80025af4:	04913023          	sd	s1,64(sp)
    80025af8:	04a13423          	sd	a0,72(sp)
    80025afc:	04b13823          	sd	a1,80(sp)
    80025b00:	04c13c23          	sd	a2,88(sp)
    80025b04:	06d13023          	sd	a3,96(sp)
    80025b08:	06e13423          	sd	a4,104(sp)
    80025b0c:	06f13823          	sd	a5,112(sp)
    80025b10:	07013c23          	sd	a6,120(sp)
    80025b14:	09113023          	sd	a7,128(sp)
    80025b18:	09213423          	sd	s2,136(sp)
    80025b1c:	09313823          	sd	s3,144(sp)
    80025b20:	09413c23          	sd	s4,152(sp)
    80025b24:	0b513023          	sd	s5,160(sp)
    80025b28:	0b613423          	sd	s6,168(sp)
    80025b2c:	0b713823          	sd	s7,176(sp)
    80025b30:	0b813c23          	sd	s8,184(sp)
    80025b34:	0d913023          	sd	s9,192(sp)
    80025b38:	0da13423          	sd	s10,200(sp)
    80025b3c:	0db13823          	sd	s11,208(sp)
    80025b40:	0dc13c23          	sd	t3,216(sp)
    80025b44:	0fd13023          	sd	t4,224(sp)
    80025b48:	0fe13423          	sd	t5,232(sp)
    80025b4c:	0ff13823          	sd	t6,240(sp)
    80025b50:	cd1ff0ef          	jal	ra,80025820 <kerneltrap>
    80025b54:	00013083          	ld	ra,0(sp)
    80025b58:	00813103          	ld	sp,8(sp)
    80025b5c:	01013183          	ld	gp,16(sp)
    80025b60:	02013283          	ld	t0,32(sp)
    80025b64:	02813303          	ld	t1,40(sp)
    80025b68:	03013383          	ld	t2,48(sp)
    80025b6c:	03813403          	ld	s0,56(sp)
    80025b70:	04013483          	ld	s1,64(sp)
    80025b74:	04813503          	ld	a0,72(sp)
    80025b78:	05013583          	ld	a1,80(sp)
    80025b7c:	05813603          	ld	a2,88(sp)
    80025b80:	06013683          	ld	a3,96(sp)
    80025b84:	06813703          	ld	a4,104(sp)
    80025b88:	07013783          	ld	a5,112(sp)
    80025b8c:	07813803          	ld	a6,120(sp)
    80025b90:	08013883          	ld	a7,128(sp)
    80025b94:	08813903          	ld	s2,136(sp)
    80025b98:	09013983          	ld	s3,144(sp)
    80025b9c:	09813a03          	ld	s4,152(sp)
    80025ba0:	0a013a83          	ld	s5,160(sp)
    80025ba4:	0a813b03          	ld	s6,168(sp)
    80025ba8:	0b013b83          	ld	s7,176(sp)
    80025bac:	0b813c03          	ld	s8,184(sp)
    80025bb0:	0c013c83          	ld	s9,192(sp)
    80025bb4:	0c813d03          	ld	s10,200(sp)
    80025bb8:	0d013d83          	ld	s11,208(sp)
    80025bbc:	0d813e03          	ld	t3,216(sp)
    80025bc0:	0e013e83          	ld	t4,224(sp)
    80025bc4:	0e813f03          	ld	t5,232(sp)
    80025bc8:	0f013f83          	ld	t6,240(sp)
    80025bcc:	10010113          	addi	sp,sp,256
    80025bd0:	10200073          	sret
    80025bd4:	00000013          	nop
    80025bd8:	00000013          	nop
    80025bdc:	00000013          	nop

0000000080025be0 <timervec>:
    80025be0:	34051573          	csrrw	a0,mscratch,a0
    80025be4:	00b53023          	sd	a1,0(a0)
    80025be8:	00c53423          	sd	a2,8(a0)
    80025bec:	00d53823          	sd	a3,16(a0)
    80025bf0:	01853583          	ld	a1,24(a0)
    80025bf4:	02053603          	ld	a2,32(a0)
    80025bf8:	0005b683          	ld	a3,0(a1)
    80025bfc:	00c686b3          	add	a3,a3,a2
    80025c00:	00d5b023          	sd	a3,0(a1)
    80025c04:	00200593          	li	a1,2
    80025c08:	14459073          	csrw	sip,a1
    80025c0c:	01053683          	ld	a3,16(a0)
    80025c10:	00853603          	ld	a2,8(a0)
    80025c14:	00053583          	ld	a1,0(a0)
    80025c18:	34051573          	csrrw	a0,mscratch,a0
    80025c1c:	30200073          	mret

0000000080025c20 <plicinit>:
    80025c20:	ff010113          	addi	sp,sp,-16
    80025c24:	00813423          	sd	s0,8(sp)
    80025c28:	01010413          	addi	s0,sp,16
    80025c2c:	00813403          	ld	s0,8(sp)
    80025c30:	0c0007b7          	lui	a5,0xc000
    80025c34:	00100713          	li	a4,1
    80025c38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80025c3c:	00e7a223          	sw	a4,4(a5)
    80025c40:	01010113          	addi	sp,sp,16
    80025c44:	00008067          	ret

0000000080025c48 <plicinithart>:
    80025c48:	ff010113          	addi	sp,sp,-16
    80025c4c:	00813023          	sd	s0,0(sp)
    80025c50:	00113423          	sd	ra,8(sp)
    80025c54:	01010413          	addi	s0,sp,16
    80025c58:	00000097          	auipc	ra,0x0
    80025c5c:	a48080e7          	jalr	-1464(ra) # 800256a0 <cpuid>
    80025c60:	0085171b          	slliw	a4,a0,0x8
    80025c64:	0c0027b7          	lui	a5,0xc002
    80025c68:	00e787b3          	add	a5,a5,a4
    80025c6c:	40200713          	li	a4,1026
    80025c70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80025c74:	00813083          	ld	ra,8(sp)
    80025c78:	00013403          	ld	s0,0(sp)
    80025c7c:	00d5151b          	slliw	a0,a0,0xd
    80025c80:	0c2017b7          	lui	a5,0xc201
    80025c84:	00a78533          	add	a0,a5,a0
    80025c88:	00052023          	sw	zero,0(a0)
    80025c8c:	01010113          	addi	sp,sp,16
    80025c90:	00008067          	ret

0000000080025c94 <plic_claim>:
    80025c94:	ff010113          	addi	sp,sp,-16
    80025c98:	00813023          	sd	s0,0(sp)
    80025c9c:	00113423          	sd	ra,8(sp)
    80025ca0:	01010413          	addi	s0,sp,16
    80025ca4:	00000097          	auipc	ra,0x0
    80025ca8:	9fc080e7          	jalr	-1540(ra) # 800256a0 <cpuid>
    80025cac:	00813083          	ld	ra,8(sp)
    80025cb0:	00013403          	ld	s0,0(sp)
    80025cb4:	00d5151b          	slliw	a0,a0,0xd
    80025cb8:	0c2017b7          	lui	a5,0xc201
    80025cbc:	00a78533          	add	a0,a5,a0
    80025cc0:	00452503          	lw	a0,4(a0)
    80025cc4:	01010113          	addi	sp,sp,16
    80025cc8:	00008067          	ret

0000000080025ccc <plic_complete>:
    80025ccc:	fe010113          	addi	sp,sp,-32
    80025cd0:	00813823          	sd	s0,16(sp)
    80025cd4:	00913423          	sd	s1,8(sp)
    80025cd8:	00113c23          	sd	ra,24(sp)
    80025cdc:	02010413          	addi	s0,sp,32
    80025ce0:	00050493          	mv	s1,a0
    80025ce4:	00000097          	auipc	ra,0x0
    80025ce8:	9bc080e7          	jalr	-1604(ra) # 800256a0 <cpuid>
    80025cec:	01813083          	ld	ra,24(sp)
    80025cf0:	01013403          	ld	s0,16(sp)
    80025cf4:	00d5179b          	slliw	a5,a0,0xd
    80025cf8:	0c201737          	lui	a4,0xc201
    80025cfc:	00f707b3          	add	a5,a4,a5
    80025d00:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80025d04:	00813483          	ld	s1,8(sp)
    80025d08:	02010113          	addi	sp,sp,32
    80025d0c:	00008067          	ret

0000000080025d10 <consolewrite>:
    80025d10:	fb010113          	addi	sp,sp,-80
    80025d14:	04813023          	sd	s0,64(sp)
    80025d18:	04113423          	sd	ra,72(sp)
    80025d1c:	02913c23          	sd	s1,56(sp)
    80025d20:	03213823          	sd	s2,48(sp)
    80025d24:	03313423          	sd	s3,40(sp)
    80025d28:	03413023          	sd	s4,32(sp)
    80025d2c:	01513c23          	sd	s5,24(sp)
    80025d30:	05010413          	addi	s0,sp,80
    80025d34:	06c05c63          	blez	a2,80025dac <consolewrite+0x9c>
    80025d38:	00060993          	mv	s3,a2
    80025d3c:	00050a13          	mv	s4,a0
    80025d40:	00058493          	mv	s1,a1
    80025d44:	00000913          	li	s2,0
    80025d48:	fff00a93          	li	s5,-1
    80025d4c:	01c0006f          	j	80025d68 <consolewrite+0x58>
    80025d50:	fbf44503          	lbu	a0,-65(s0)
    80025d54:	0019091b          	addiw	s2,s2,1
    80025d58:	00148493          	addi	s1,s1,1
    80025d5c:	00001097          	auipc	ra,0x1
    80025d60:	a9c080e7          	jalr	-1380(ra) # 800267f8 <uartputc>
    80025d64:	03298063          	beq	s3,s2,80025d84 <consolewrite+0x74>
    80025d68:	00048613          	mv	a2,s1
    80025d6c:	00100693          	li	a3,1
    80025d70:	000a0593          	mv	a1,s4
    80025d74:	fbf40513          	addi	a0,s0,-65
    80025d78:	00000097          	auipc	ra,0x0
    80025d7c:	9e0080e7          	jalr	-1568(ra) # 80025758 <either_copyin>
    80025d80:	fd5518e3          	bne	a0,s5,80025d50 <consolewrite+0x40>
    80025d84:	04813083          	ld	ra,72(sp)
    80025d88:	04013403          	ld	s0,64(sp)
    80025d8c:	03813483          	ld	s1,56(sp)
    80025d90:	02813983          	ld	s3,40(sp)
    80025d94:	02013a03          	ld	s4,32(sp)
    80025d98:	01813a83          	ld	s5,24(sp)
    80025d9c:	00090513          	mv	a0,s2
    80025da0:	03013903          	ld	s2,48(sp)
    80025da4:	05010113          	addi	sp,sp,80
    80025da8:	00008067          	ret
    80025dac:	00000913          	li	s2,0
    80025db0:	fd5ff06f          	j	80025d84 <consolewrite+0x74>

0000000080025db4 <consoleread>:
    80025db4:	f9010113          	addi	sp,sp,-112
    80025db8:	06813023          	sd	s0,96(sp)
    80025dbc:	04913c23          	sd	s1,88(sp)
    80025dc0:	05213823          	sd	s2,80(sp)
    80025dc4:	05313423          	sd	s3,72(sp)
    80025dc8:	05413023          	sd	s4,64(sp)
    80025dcc:	03513c23          	sd	s5,56(sp)
    80025dd0:	03613823          	sd	s6,48(sp)
    80025dd4:	03713423          	sd	s7,40(sp)
    80025dd8:	03813023          	sd	s8,32(sp)
    80025ddc:	06113423          	sd	ra,104(sp)
    80025de0:	01913c23          	sd	s9,24(sp)
    80025de4:	07010413          	addi	s0,sp,112
    80025de8:	00060b93          	mv	s7,a2
    80025dec:	00050913          	mv	s2,a0
    80025df0:	00058c13          	mv	s8,a1
    80025df4:	00060b1b          	sext.w	s6,a2
    80025df8:	00006497          	auipc	s1,0x6
    80025dfc:	f5048493          	addi	s1,s1,-176 # 8002bd48 <cons>
    80025e00:	00400993          	li	s3,4
    80025e04:	fff00a13          	li	s4,-1
    80025e08:	00a00a93          	li	s5,10
    80025e0c:	05705e63          	blez	s7,80025e68 <consoleread+0xb4>
    80025e10:	09c4a703          	lw	a4,156(s1)
    80025e14:	0984a783          	lw	a5,152(s1)
    80025e18:	0007071b          	sext.w	a4,a4
    80025e1c:	08e78463          	beq	a5,a4,80025ea4 <consoleread+0xf0>
    80025e20:	07f7f713          	andi	a4,a5,127
    80025e24:	00e48733          	add	a4,s1,a4
    80025e28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80025e2c:	0017869b          	addiw	a3,a5,1
    80025e30:	08d4ac23          	sw	a3,152(s1)
    80025e34:	00070c9b          	sext.w	s9,a4
    80025e38:	0b370663          	beq	a4,s3,80025ee4 <consoleread+0x130>
    80025e3c:	00100693          	li	a3,1
    80025e40:	f9f40613          	addi	a2,s0,-97
    80025e44:	000c0593          	mv	a1,s8
    80025e48:	00090513          	mv	a0,s2
    80025e4c:	f8e40fa3          	sb	a4,-97(s0)
    80025e50:	00000097          	auipc	ra,0x0
    80025e54:	8bc080e7          	jalr	-1860(ra) # 8002570c <either_copyout>
    80025e58:	01450863          	beq	a0,s4,80025e68 <consoleread+0xb4>
    80025e5c:	001c0c13          	addi	s8,s8,1
    80025e60:	fffb8b9b          	addiw	s7,s7,-1
    80025e64:	fb5c94e3          	bne	s9,s5,80025e0c <consoleread+0x58>
    80025e68:	000b851b          	sext.w	a0,s7
    80025e6c:	06813083          	ld	ra,104(sp)
    80025e70:	06013403          	ld	s0,96(sp)
    80025e74:	05813483          	ld	s1,88(sp)
    80025e78:	05013903          	ld	s2,80(sp)
    80025e7c:	04813983          	ld	s3,72(sp)
    80025e80:	04013a03          	ld	s4,64(sp)
    80025e84:	03813a83          	ld	s5,56(sp)
    80025e88:	02813b83          	ld	s7,40(sp)
    80025e8c:	02013c03          	ld	s8,32(sp)
    80025e90:	01813c83          	ld	s9,24(sp)
    80025e94:	40ab053b          	subw	a0,s6,a0
    80025e98:	03013b03          	ld	s6,48(sp)
    80025e9c:	07010113          	addi	sp,sp,112
    80025ea0:	00008067          	ret
    80025ea4:	00001097          	auipc	ra,0x1
    80025ea8:	1d8080e7          	jalr	472(ra) # 8002707c <push_on>
    80025eac:	0984a703          	lw	a4,152(s1)
    80025eb0:	09c4a783          	lw	a5,156(s1)
    80025eb4:	0007879b          	sext.w	a5,a5
    80025eb8:	fef70ce3          	beq	a4,a5,80025eb0 <consoleread+0xfc>
    80025ebc:	00001097          	auipc	ra,0x1
    80025ec0:	234080e7          	jalr	564(ra) # 800270f0 <pop_on>
    80025ec4:	0984a783          	lw	a5,152(s1)
    80025ec8:	07f7f713          	andi	a4,a5,127
    80025ecc:	00e48733          	add	a4,s1,a4
    80025ed0:	01874703          	lbu	a4,24(a4)
    80025ed4:	0017869b          	addiw	a3,a5,1
    80025ed8:	08d4ac23          	sw	a3,152(s1)
    80025edc:	00070c9b          	sext.w	s9,a4
    80025ee0:	f5371ee3          	bne	a4,s3,80025e3c <consoleread+0x88>
    80025ee4:	000b851b          	sext.w	a0,s7
    80025ee8:	f96bf2e3          	bgeu	s7,s6,80025e6c <consoleread+0xb8>
    80025eec:	08f4ac23          	sw	a5,152(s1)
    80025ef0:	f7dff06f          	j	80025e6c <consoleread+0xb8>

0000000080025ef4 <consputc>:
    80025ef4:	10000793          	li	a5,256
    80025ef8:	00f50663          	beq	a0,a5,80025f04 <consputc+0x10>
    80025efc:	00001317          	auipc	t1,0x1
    80025f00:	9f430067          	jr	-1548(t1) # 800268f0 <uartputc_sync>
    80025f04:	ff010113          	addi	sp,sp,-16
    80025f08:	00113423          	sd	ra,8(sp)
    80025f0c:	00813023          	sd	s0,0(sp)
    80025f10:	01010413          	addi	s0,sp,16
    80025f14:	00800513          	li	a0,8
    80025f18:	00001097          	auipc	ra,0x1
    80025f1c:	9d8080e7          	jalr	-1576(ra) # 800268f0 <uartputc_sync>
    80025f20:	02000513          	li	a0,32
    80025f24:	00001097          	auipc	ra,0x1
    80025f28:	9cc080e7          	jalr	-1588(ra) # 800268f0 <uartputc_sync>
    80025f2c:	00013403          	ld	s0,0(sp)
    80025f30:	00813083          	ld	ra,8(sp)
    80025f34:	00800513          	li	a0,8
    80025f38:	01010113          	addi	sp,sp,16
    80025f3c:	00001317          	auipc	t1,0x1
    80025f40:	9b430067          	jr	-1612(t1) # 800268f0 <uartputc_sync>

0000000080025f44 <consoleintr>:
    80025f44:	fe010113          	addi	sp,sp,-32
    80025f48:	00813823          	sd	s0,16(sp)
    80025f4c:	00913423          	sd	s1,8(sp)
    80025f50:	01213023          	sd	s2,0(sp)
    80025f54:	00113c23          	sd	ra,24(sp)
    80025f58:	02010413          	addi	s0,sp,32
    80025f5c:	00006917          	auipc	s2,0x6
    80025f60:	dec90913          	addi	s2,s2,-532 # 8002bd48 <cons>
    80025f64:	00050493          	mv	s1,a0
    80025f68:	00090513          	mv	a0,s2
    80025f6c:	00001097          	auipc	ra,0x1
    80025f70:	e40080e7          	jalr	-448(ra) # 80026dac <acquire>
    80025f74:	02048c63          	beqz	s1,80025fac <consoleintr+0x68>
    80025f78:	0a092783          	lw	a5,160(s2)
    80025f7c:	09892703          	lw	a4,152(s2)
    80025f80:	07f00693          	li	a3,127
    80025f84:	40e7873b          	subw	a4,a5,a4
    80025f88:	02e6e263          	bltu	a3,a4,80025fac <consoleintr+0x68>
    80025f8c:	00d00713          	li	a4,13
    80025f90:	04e48063          	beq	s1,a4,80025fd0 <consoleintr+0x8c>
    80025f94:	07f7f713          	andi	a4,a5,127
    80025f98:	00e90733          	add	a4,s2,a4
    80025f9c:	0017879b          	addiw	a5,a5,1
    80025fa0:	0af92023          	sw	a5,160(s2)
    80025fa4:	00970c23          	sb	s1,24(a4)
    80025fa8:	08f92e23          	sw	a5,156(s2)
    80025fac:	01013403          	ld	s0,16(sp)
    80025fb0:	01813083          	ld	ra,24(sp)
    80025fb4:	00813483          	ld	s1,8(sp)
    80025fb8:	00013903          	ld	s2,0(sp)
    80025fbc:	00006517          	auipc	a0,0x6
    80025fc0:	d8c50513          	addi	a0,a0,-628 # 8002bd48 <cons>
    80025fc4:	02010113          	addi	sp,sp,32
    80025fc8:	00001317          	auipc	t1,0x1
    80025fcc:	eb030067          	jr	-336(t1) # 80026e78 <release>
    80025fd0:	00a00493          	li	s1,10
    80025fd4:	fc1ff06f          	j	80025f94 <consoleintr+0x50>

0000000080025fd8 <consoleinit>:
    80025fd8:	fe010113          	addi	sp,sp,-32
    80025fdc:	00113c23          	sd	ra,24(sp)
    80025fe0:	00813823          	sd	s0,16(sp)
    80025fe4:	00913423          	sd	s1,8(sp)
    80025fe8:	02010413          	addi	s0,sp,32
    80025fec:	00006497          	auipc	s1,0x6
    80025ff0:	d5c48493          	addi	s1,s1,-676 # 8002bd48 <cons>
    80025ff4:	00048513          	mv	a0,s1
    80025ff8:	00002597          	auipc	a1,0x2
    80025ffc:	75058593          	addi	a1,a1,1872 # 80028748 <CONSOLE_STATUS+0x738>
    80026000:	00001097          	auipc	ra,0x1
    80026004:	d88080e7          	jalr	-632(ra) # 80026d88 <initlock>
    80026008:	00000097          	auipc	ra,0x0
    8002600c:	7ac080e7          	jalr	1964(ra) # 800267b4 <uartinit>
    80026010:	01813083          	ld	ra,24(sp)
    80026014:	01013403          	ld	s0,16(sp)
    80026018:	00000797          	auipc	a5,0x0
    8002601c:	d9c78793          	addi	a5,a5,-612 # 80025db4 <consoleread>
    80026020:	0af4bc23          	sd	a5,184(s1)
    80026024:	00000797          	auipc	a5,0x0
    80026028:	cec78793          	addi	a5,a5,-788 # 80025d10 <consolewrite>
    8002602c:	0cf4b023          	sd	a5,192(s1)
    80026030:	00813483          	ld	s1,8(sp)
    80026034:	02010113          	addi	sp,sp,32
    80026038:	00008067          	ret

000000008002603c <console_read>:
    8002603c:	ff010113          	addi	sp,sp,-16
    80026040:	00813423          	sd	s0,8(sp)
    80026044:	01010413          	addi	s0,sp,16
    80026048:	00813403          	ld	s0,8(sp)
    8002604c:	00006317          	auipc	t1,0x6
    80026050:	db433303          	ld	t1,-588(t1) # 8002be00 <devsw+0x10>
    80026054:	01010113          	addi	sp,sp,16
    80026058:	00030067          	jr	t1

000000008002605c <console_write>:
    8002605c:	ff010113          	addi	sp,sp,-16
    80026060:	00813423          	sd	s0,8(sp)
    80026064:	01010413          	addi	s0,sp,16
    80026068:	00813403          	ld	s0,8(sp)
    8002606c:	00006317          	auipc	t1,0x6
    80026070:	d9c33303          	ld	t1,-612(t1) # 8002be08 <devsw+0x18>
    80026074:	01010113          	addi	sp,sp,16
    80026078:	00030067          	jr	t1

000000008002607c <panic>:
    8002607c:	fe010113          	addi	sp,sp,-32
    80026080:	00113c23          	sd	ra,24(sp)
    80026084:	00813823          	sd	s0,16(sp)
    80026088:	00913423          	sd	s1,8(sp)
    8002608c:	02010413          	addi	s0,sp,32
    80026090:	00050493          	mv	s1,a0
    80026094:	00002517          	auipc	a0,0x2
    80026098:	6bc50513          	addi	a0,a0,1724 # 80028750 <CONSOLE_STATUS+0x740>
    8002609c:	00006797          	auipc	a5,0x6
    800260a0:	e007a623          	sw	zero,-500(a5) # 8002bea8 <pr+0x18>
    800260a4:	00000097          	auipc	ra,0x0
    800260a8:	034080e7          	jalr	52(ra) # 800260d8 <__printf>
    800260ac:	00048513          	mv	a0,s1
    800260b0:	00000097          	auipc	ra,0x0
    800260b4:	028080e7          	jalr	40(ra) # 800260d8 <__printf>
    800260b8:	00002517          	auipc	a0,0x2
    800260bc:	3d050513          	addi	a0,a0,976 # 80028488 <CONSOLE_STATUS+0x478>
    800260c0:	00000097          	auipc	ra,0x0
    800260c4:	018080e7          	jalr	24(ra) # 800260d8 <__printf>
    800260c8:	00100793          	li	a5,1
    800260cc:	00005717          	auipc	a4,0x5
    800260d0:	86f72e23          	sw	a5,-1924(a4) # 8002a948 <panicked>
    800260d4:	0000006f          	j	800260d4 <panic+0x58>

00000000800260d8 <__printf>:
    800260d8:	f3010113          	addi	sp,sp,-208
    800260dc:	08813023          	sd	s0,128(sp)
    800260e0:	07313423          	sd	s3,104(sp)
    800260e4:	09010413          	addi	s0,sp,144
    800260e8:	05813023          	sd	s8,64(sp)
    800260ec:	08113423          	sd	ra,136(sp)
    800260f0:	06913c23          	sd	s1,120(sp)
    800260f4:	07213823          	sd	s2,112(sp)
    800260f8:	07413023          	sd	s4,96(sp)
    800260fc:	05513c23          	sd	s5,88(sp)
    80026100:	05613823          	sd	s6,80(sp)
    80026104:	05713423          	sd	s7,72(sp)
    80026108:	03913c23          	sd	s9,56(sp)
    8002610c:	03a13823          	sd	s10,48(sp)
    80026110:	03b13423          	sd	s11,40(sp)
    80026114:	00006317          	auipc	t1,0x6
    80026118:	d7c30313          	addi	t1,t1,-644 # 8002be90 <pr>
    8002611c:	01832c03          	lw	s8,24(t1)
    80026120:	00b43423          	sd	a1,8(s0)
    80026124:	00c43823          	sd	a2,16(s0)
    80026128:	00d43c23          	sd	a3,24(s0)
    8002612c:	02e43023          	sd	a4,32(s0)
    80026130:	02f43423          	sd	a5,40(s0)
    80026134:	03043823          	sd	a6,48(s0)
    80026138:	03143c23          	sd	a7,56(s0)
    8002613c:	00050993          	mv	s3,a0
    80026140:	4a0c1663          	bnez	s8,800265ec <__printf+0x514>
    80026144:	60098c63          	beqz	s3,8002675c <__printf+0x684>
    80026148:	0009c503          	lbu	a0,0(s3)
    8002614c:	00840793          	addi	a5,s0,8
    80026150:	f6f43c23          	sd	a5,-136(s0)
    80026154:	00000493          	li	s1,0
    80026158:	22050063          	beqz	a0,80026378 <__printf+0x2a0>
    8002615c:	00002a37          	lui	s4,0x2
    80026160:	00018ab7          	lui	s5,0x18
    80026164:	000f4b37          	lui	s6,0xf4
    80026168:	00989bb7          	lui	s7,0x989
    8002616c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80026170:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80026174:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80026178:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8002617c:	00148c9b          	addiw	s9,s1,1
    80026180:	02500793          	li	a5,37
    80026184:	01998933          	add	s2,s3,s9
    80026188:	38f51263          	bne	a0,a5,8002650c <__printf+0x434>
    8002618c:	00094783          	lbu	a5,0(s2)
    80026190:	00078c9b          	sext.w	s9,a5
    80026194:	1e078263          	beqz	a5,80026378 <__printf+0x2a0>
    80026198:	0024849b          	addiw	s1,s1,2
    8002619c:	07000713          	li	a4,112
    800261a0:	00998933          	add	s2,s3,s1
    800261a4:	38e78a63          	beq	a5,a4,80026538 <__printf+0x460>
    800261a8:	20f76863          	bltu	a4,a5,800263b8 <__printf+0x2e0>
    800261ac:	42a78863          	beq	a5,a0,800265dc <__printf+0x504>
    800261b0:	06400713          	li	a4,100
    800261b4:	40e79663          	bne	a5,a4,800265c0 <__printf+0x4e8>
    800261b8:	f7843783          	ld	a5,-136(s0)
    800261bc:	0007a603          	lw	a2,0(a5)
    800261c0:	00878793          	addi	a5,a5,8
    800261c4:	f6f43c23          	sd	a5,-136(s0)
    800261c8:	42064a63          	bltz	a2,800265fc <__printf+0x524>
    800261cc:	00a00713          	li	a4,10
    800261d0:	02e677bb          	remuw	a5,a2,a4
    800261d4:	00002d97          	auipc	s11,0x2
    800261d8:	5a4d8d93          	addi	s11,s11,1444 # 80028778 <digits>
    800261dc:	00900593          	li	a1,9
    800261e0:	0006051b          	sext.w	a0,a2
    800261e4:	00000c93          	li	s9,0
    800261e8:	02079793          	slli	a5,a5,0x20
    800261ec:	0207d793          	srli	a5,a5,0x20
    800261f0:	00fd87b3          	add	a5,s11,a5
    800261f4:	0007c783          	lbu	a5,0(a5)
    800261f8:	02e656bb          	divuw	a3,a2,a4
    800261fc:	f8f40023          	sb	a5,-128(s0)
    80026200:	14c5d863          	bge	a1,a2,80026350 <__printf+0x278>
    80026204:	06300593          	li	a1,99
    80026208:	00100c93          	li	s9,1
    8002620c:	02e6f7bb          	remuw	a5,a3,a4
    80026210:	02079793          	slli	a5,a5,0x20
    80026214:	0207d793          	srli	a5,a5,0x20
    80026218:	00fd87b3          	add	a5,s11,a5
    8002621c:	0007c783          	lbu	a5,0(a5)
    80026220:	02e6d73b          	divuw	a4,a3,a4
    80026224:	f8f400a3          	sb	a5,-127(s0)
    80026228:	12a5f463          	bgeu	a1,a0,80026350 <__printf+0x278>
    8002622c:	00a00693          	li	a3,10
    80026230:	00900593          	li	a1,9
    80026234:	02d777bb          	remuw	a5,a4,a3
    80026238:	02079793          	slli	a5,a5,0x20
    8002623c:	0207d793          	srli	a5,a5,0x20
    80026240:	00fd87b3          	add	a5,s11,a5
    80026244:	0007c503          	lbu	a0,0(a5)
    80026248:	02d757bb          	divuw	a5,a4,a3
    8002624c:	f8a40123          	sb	a0,-126(s0)
    80026250:	48e5f263          	bgeu	a1,a4,800266d4 <__printf+0x5fc>
    80026254:	06300513          	li	a0,99
    80026258:	02d7f5bb          	remuw	a1,a5,a3
    8002625c:	02059593          	slli	a1,a1,0x20
    80026260:	0205d593          	srli	a1,a1,0x20
    80026264:	00bd85b3          	add	a1,s11,a1
    80026268:	0005c583          	lbu	a1,0(a1)
    8002626c:	02d7d7bb          	divuw	a5,a5,a3
    80026270:	f8b401a3          	sb	a1,-125(s0)
    80026274:	48e57263          	bgeu	a0,a4,800266f8 <__printf+0x620>
    80026278:	3e700513          	li	a0,999
    8002627c:	02d7f5bb          	remuw	a1,a5,a3
    80026280:	02059593          	slli	a1,a1,0x20
    80026284:	0205d593          	srli	a1,a1,0x20
    80026288:	00bd85b3          	add	a1,s11,a1
    8002628c:	0005c583          	lbu	a1,0(a1)
    80026290:	02d7d7bb          	divuw	a5,a5,a3
    80026294:	f8b40223          	sb	a1,-124(s0)
    80026298:	46e57663          	bgeu	a0,a4,80026704 <__printf+0x62c>
    8002629c:	02d7f5bb          	remuw	a1,a5,a3
    800262a0:	02059593          	slli	a1,a1,0x20
    800262a4:	0205d593          	srli	a1,a1,0x20
    800262a8:	00bd85b3          	add	a1,s11,a1
    800262ac:	0005c583          	lbu	a1,0(a1)
    800262b0:	02d7d7bb          	divuw	a5,a5,a3
    800262b4:	f8b402a3          	sb	a1,-123(s0)
    800262b8:	46ea7863          	bgeu	s4,a4,80026728 <__printf+0x650>
    800262bc:	02d7f5bb          	remuw	a1,a5,a3
    800262c0:	02059593          	slli	a1,a1,0x20
    800262c4:	0205d593          	srli	a1,a1,0x20
    800262c8:	00bd85b3          	add	a1,s11,a1
    800262cc:	0005c583          	lbu	a1,0(a1)
    800262d0:	02d7d7bb          	divuw	a5,a5,a3
    800262d4:	f8b40323          	sb	a1,-122(s0)
    800262d8:	3eeaf863          	bgeu	s5,a4,800266c8 <__printf+0x5f0>
    800262dc:	02d7f5bb          	remuw	a1,a5,a3
    800262e0:	02059593          	slli	a1,a1,0x20
    800262e4:	0205d593          	srli	a1,a1,0x20
    800262e8:	00bd85b3          	add	a1,s11,a1
    800262ec:	0005c583          	lbu	a1,0(a1)
    800262f0:	02d7d7bb          	divuw	a5,a5,a3
    800262f4:	f8b403a3          	sb	a1,-121(s0)
    800262f8:	42eb7e63          	bgeu	s6,a4,80026734 <__printf+0x65c>
    800262fc:	02d7f5bb          	remuw	a1,a5,a3
    80026300:	02059593          	slli	a1,a1,0x20
    80026304:	0205d593          	srli	a1,a1,0x20
    80026308:	00bd85b3          	add	a1,s11,a1
    8002630c:	0005c583          	lbu	a1,0(a1)
    80026310:	02d7d7bb          	divuw	a5,a5,a3
    80026314:	f8b40423          	sb	a1,-120(s0)
    80026318:	42ebfc63          	bgeu	s7,a4,80026750 <__printf+0x678>
    8002631c:	02079793          	slli	a5,a5,0x20
    80026320:	0207d793          	srli	a5,a5,0x20
    80026324:	00fd8db3          	add	s11,s11,a5
    80026328:	000dc703          	lbu	a4,0(s11)
    8002632c:	00a00793          	li	a5,10
    80026330:	00900c93          	li	s9,9
    80026334:	f8e404a3          	sb	a4,-119(s0)
    80026338:	00065c63          	bgez	a2,80026350 <__printf+0x278>
    8002633c:	f9040713          	addi	a4,s0,-112
    80026340:	00f70733          	add	a4,a4,a5
    80026344:	02d00693          	li	a3,45
    80026348:	fed70823          	sb	a3,-16(a4)
    8002634c:	00078c93          	mv	s9,a5
    80026350:	f8040793          	addi	a5,s0,-128
    80026354:	01978cb3          	add	s9,a5,s9
    80026358:	f7f40d13          	addi	s10,s0,-129
    8002635c:	000cc503          	lbu	a0,0(s9)
    80026360:	fffc8c93          	addi	s9,s9,-1
    80026364:	00000097          	auipc	ra,0x0
    80026368:	b90080e7          	jalr	-1136(ra) # 80025ef4 <consputc>
    8002636c:	ffac98e3          	bne	s9,s10,8002635c <__printf+0x284>
    80026370:	00094503          	lbu	a0,0(s2)
    80026374:	e00514e3          	bnez	a0,8002617c <__printf+0xa4>
    80026378:	1a0c1663          	bnez	s8,80026524 <__printf+0x44c>
    8002637c:	08813083          	ld	ra,136(sp)
    80026380:	08013403          	ld	s0,128(sp)
    80026384:	07813483          	ld	s1,120(sp)
    80026388:	07013903          	ld	s2,112(sp)
    8002638c:	06813983          	ld	s3,104(sp)
    80026390:	06013a03          	ld	s4,96(sp)
    80026394:	05813a83          	ld	s5,88(sp)
    80026398:	05013b03          	ld	s6,80(sp)
    8002639c:	04813b83          	ld	s7,72(sp)
    800263a0:	04013c03          	ld	s8,64(sp)
    800263a4:	03813c83          	ld	s9,56(sp)
    800263a8:	03013d03          	ld	s10,48(sp)
    800263ac:	02813d83          	ld	s11,40(sp)
    800263b0:	0d010113          	addi	sp,sp,208
    800263b4:	00008067          	ret
    800263b8:	07300713          	li	a4,115
    800263bc:	1ce78a63          	beq	a5,a4,80026590 <__printf+0x4b8>
    800263c0:	07800713          	li	a4,120
    800263c4:	1ee79e63          	bne	a5,a4,800265c0 <__printf+0x4e8>
    800263c8:	f7843783          	ld	a5,-136(s0)
    800263cc:	0007a703          	lw	a4,0(a5)
    800263d0:	00878793          	addi	a5,a5,8
    800263d4:	f6f43c23          	sd	a5,-136(s0)
    800263d8:	28074263          	bltz	a4,8002665c <__printf+0x584>
    800263dc:	00002d97          	auipc	s11,0x2
    800263e0:	39cd8d93          	addi	s11,s11,924 # 80028778 <digits>
    800263e4:	00f77793          	andi	a5,a4,15
    800263e8:	00fd87b3          	add	a5,s11,a5
    800263ec:	0007c683          	lbu	a3,0(a5)
    800263f0:	00f00613          	li	a2,15
    800263f4:	0007079b          	sext.w	a5,a4
    800263f8:	f8d40023          	sb	a3,-128(s0)
    800263fc:	0047559b          	srliw	a1,a4,0x4
    80026400:	0047569b          	srliw	a3,a4,0x4
    80026404:	00000c93          	li	s9,0
    80026408:	0ee65063          	bge	a2,a4,800264e8 <__printf+0x410>
    8002640c:	00f6f693          	andi	a3,a3,15
    80026410:	00dd86b3          	add	a3,s11,a3
    80026414:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80026418:	0087d79b          	srliw	a5,a5,0x8
    8002641c:	00100c93          	li	s9,1
    80026420:	f8d400a3          	sb	a3,-127(s0)
    80026424:	0cb67263          	bgeu	a2,a1,800264e8 <__printf+0x410>
    80026428:	00f7f693          	andi	a3,a5,15
    8002642c:	00dd86b3          	add	a3,s11,a3
    80026430:	0006c583          	lbu	a1,0(a3)
    80026434:	00f00613          	li	a2,15
    80026438:	0047d69b          	srliw	a3,a5,0x4
    8002643c:	f8b40123          	sb	a1,-126(s0)
    80026440:	0047d593          	srli	a1,a5,0x4
    80026444:	28f67e63          	bgeu	a2,a5,800266e0 <__printf+0x608>
    80026448:	00f6f693          	andi	a3,a3,15
    8002644c:	00dd86b3          	add	a3,s11,a3
    80026450:	0006c503          	lbu	a0,0(a3)
    80026454:	0087d813          	srli	a6,a5,0x8
    80026458:	0087d69b          	srliw	a3,a5,0x8
    8002645c:	f8a401a3          	sb	a0,-125(s0)
    80026460:	28b67663          	bgeu	a2,a1,800266ec <__printf+0x614>
    80026464:	00f6f693          	andi	a3,a3,15
    80026468:	00dd86b3          	add	a3,s11,a3
    8002646c:	0006c583          	lbu	a1,0(a3)
    80026470:	00c7d513          	srli	a0,a5,0xc
    80026474:	00c7d69b          	srliw	a3,a5,0xc
    80026478:	f8b40223          	sb	a1,-124(s0)
    8002647c:	29067a63          	bgeu	a2,a6,80026710 <__printf+0x638>
    80026480:	00f6f693          	andi	a3,a3,15
    80026484:	00dd86b3          	add	a3,s11,a3
    80026488:	0006c583          	lbu	a1,0(a3)
    8002648c:	0107d813          	srli	a6,a5,0x10
    80026490:	0107d69b          	srliw	a3,a5,0x10
    80026494:	f8b402a3          	sb	a1,-123(s0)
    80026498:	28a67263          	bgeu	a2,a0,8002671c <__printf+0x644>
    8002649c:	00f6f693          	andi	a3,a3,15
    800264a0:	00dd86b3          	add	a3,s11,a3
    800264a4:	0006c683          	lbu	a3,0(a3)
    800264a8:	0147d79b          	srliw	a5,a5,0x14
    800264ac:	f8d40323          	sb	a3,-122(s0)
    800264b0:	21067663          	bgeu	a2,a6,800266bc <__printf+0x5e4>
    800264b4:	02079793          	slli	a5,a5,0x20
    800264b8:	0207d793          	srli	a5,a5,0x20
    800264bc:	00fd8db3          	add	s11,s11,a5
    800264c0:	000dc683          	lbu	a3,0(s11)
    800264c4:	00800793          	li	a5,8
    800264c8:	00700c93          	li	s9,7
    800264cc:	f8d403a3          	sb	a3,-121(s0)
    800264d0:	00075c63          	bgez	a4,800264e8 <__printf+0x410>
    800264d4:	f9040713          	addi	a4,s0,-112
    800264d8:	00f70733          	add	a4,a4,a5
    800264dc:	02d00693          	li	a3,45
    800264e0:	fed70823          	sb	a3,-16(a4)
    800264e4:	00078c93          	mv	s9,a5
    800264e8:	f8040793          	addi	a5,s0,-128
    800264ec:	01978cb3          	add	s9,a5,s9
    800264f0:	f7f40d13          	addi	s10,s0,-129
    800264f4:	000cc503          	lbu	a0,0(s9)
    800264f8:	fffc8c93          	addi	s9,s9,-1
    800264fc:	00000097          	auipc	ra,0x0
    80026500:	9f8080e7          	jalr	-1544(ra) # 80025ef4 <consputc>
    80026504:	ff9d18e3          	bne	s10,s9,800264f4 <__printf+0x41c>
    80026508:	0100006f          	j	80026518 <__printf+0x440>
    8002650c:	00000097          	auipc	ra,0x0
    80026510:	9e8080e7          	jalr	-1560(ra) # 80025ef4 <consputc>
    80026514:	000c8493          	mv	s1,s9
    80026518:	00094503          	lbu	a0,0(s2)
    8002651c:	c60510e3          	bnez	a0,8002617c <__printf+0xa4>
    80026520:	e40c0ee3          	beqz	s8,8002637c <__printf+0x2a4>
    80026524:	00006517          	auipc	a0,0x6
    80026528:	96c50513          	addi	a0,a0,-1684 # 8002be90 <pr>
    8002652c:	00001097          	auipc	ra,0x1
    80026530:	94c080e7          	jalr	-1716(ra) # 80026e78 <release>
    80026534:	e49ff06f          	j	8002637c <__printf+0x2a4>
    80026538:	f7843783          	ld	a5,-136(s0)
    8002653c:	03000513          	li	a0,48
    80026540:	01000d13          	li	s10,16
    80026544:	00878713          	addi	a4,a5,8
    80026548:	0007bc83          	ld	s9,0(a5)
    8002654c:	f6e43c23          	sd	a4,-136(s0)
    80026550:	00000097          	auipc	ra,0x0
    80026554:	9a4080e7          	jalr	-1628(ra) # 80025ef4 <consputc>
    80026558:	07800513          	li	a0,120
    8002655c:	00000097          	auipc	ra,0x0
    80026560:	998080e7          	jalr	-1640(ra) # 80025ef4 <consputc>
    80026564:	00002d97          	auipc	s11,0x2
    80026568:	214d8d93          	addi	s11,s11,532 # 80028778 <digits>
    8002656c:	03ccd793          	srli	a5,s9,0x3c
    80026570:	00fd87b3          	add	a5,s11,a5
    80026574:	0007c503          	lbu	a0,0(a5)
    80026578:	fffd0d1b          	addiw	s10,s10,-1
    8002657c:	004c9c93          	slli	s9,s9,0x4
    80026580:	00000097          	auipc	ra,0x0
    80026584:	974080e7          	jalr	-1676(ra) # 80025ef4 <consputc>
    80026588:	fe0d12e3          	bnez	s10,8002656c <__printf+0x494>
    8002658c:	f8dff06f          	j	80026518 <__printf+0x440>
    80026590:	f7843783          	ld	a5,-136(s0)
    80026594:	0007bc83          	ld	s9,0(a5)
    80026598:	00878793          	addi	a5,a5,8
    8002659c:	f6f43c23          	sd	a5,-136(s0)
    800265a0:	000c9a63          	bnez	s9,800265b4 <__printf+0x4dc>
    800265a4:	1080006f          	j	800266ac <__printf+0x5d4>
    800265a8:	001c8c93          	addi	s9,s9,1
    800265ac:	00000097          	auipc	ra,0x0
    800265b0:	948080e7          	jalr	-1720(ra) # 80025ef4 <consputc>
    800265b4:	000cc503          	lbu	a0,0(s9)
    800265b8:	fe0518e3          	bnez	a0,800265a8 <__printf+0x4d0>
    800265bc:	f5dff06f          	j	80026518 <__printf+0x440>
    800265c0:	02500513          	li	a0,37
    800265c4:	00000097          	auipc	ra,0x0
    800265c8:	930080e7          	jalr	-1744(ra) # 80025ef4 <consputc>
    800265cc:	000c8513          	mv	a0,s9
    800265d0:	00000097          	auipc	ra,0x0
    800265d4:	924080e7          	jalr	-1756(ra) # 80025ef4 <consputc>
    800265d8:	f41ff06f          	j	80026518 <__printf+0x440>
    800265dc:	02500513          	li	a0,37
    800265e0:	00000097          	auipc	ra,0x0
    800265e4:	914080e7          	jalr	-1772(ra) # 80025ef4 <consputc>
    800265e8:	f31ff06f          	j	80026518 <__printf+0x440>
    800265ec:	00030513          	mv	a0,t1
    800265f0:	00000097          	auipc	ra,0x0
    800265f4:	7bc080e7          	jalr	1980(ra) # 80026dac <acquire>
    800265f8:	b4dff06f          	j	80026144 <__printf+0x6c>
    800265fc:	40c0053b          	negw	a0,a2
    80026600:	00a00713          	li	a4,10
    80026604:	02e576bb          	remuw	a3,a0,a4
    80026608:	00002d97          	auipc	s11,0x2
    8002660c:	170d8d93          	addi	s11,s11,368 # 80028778 <digits>
    80026610:	ff700593          	li	a1,-9
    80026614:	02069693          	slli	a3,a3,0x20
    80026618:	0206d693          	srli	a3,a3,0x20
    8002661c:	00dd86b3          	add	a3,s11,a3
    80026620:	0006c683          	lbu	a3,0(a3)
    80026624:	02e557bb          	divuw	a5,a0,a4
    80026628:	f8d40023          	sb	a3,-128(s0)
    8002662c:	10b65e63          	bge	a2,a1,80026748 <__printf+0x670>
    80026630:	06300593          	li	a1,99
    80026634:	02e7f6bb          	remuw	a3,a5,a4
    80026638:	02069693          	slli	a3,a3,0x20
    8002663c:	0206d693          	srli	a3,a3,0x20
    80026640:	00dd86b3          	add	a3,s11,a3
    80026644:	0006c683          	lbu	a3,0(a3)
    80026648:	02e7d73b          	divuw	a4,a5,a4
    8002664c:	00200793          	li	a5,2
    80026650:	f8d400a3          	sb	a3,-127(s0)
    80026654:	bca5ece3          	bltu	a1,a0,8002622c <__printf+0x154>
    80026658:	ce5ff06f          	j	8002633c <__printf+0x264>
    8002665c:	40e007bb          	negw	a5,a4
    80026660:	00002d97          	auipc	s11,0x2
    80026664:	118d8d93          	addi	s11,s11,280 # 80028778 <digits>
    80026668:	00f7f693          	andi	a3,a5,15
    8002666c:	00dd86b3          	add	a3,s11,a3
    80026670:	0006c583          	lbu	a1,0(a3)
    80026674:	ff100613          	li	a2,-15
    80026678:	0047d69b          	srliw	a3,a5,0x4
    8002667c:	f8b40023          	sb	a1,-128(s0)
    80026680:	0047d59b          	srliw	a1,a5,0x4
    80026684:	0ac75e63          	bge	a4,a2,80026740 <__printf+0x668>
    80026688:	00f6f693          	andi	a3,a3,15
    8002668c:	00dd86b3          	add	a3,s11,a3
    80026690:	0006c603          	lbu	a2,0(a3)
    80026694:	00f00693          	li	a3,15
    80026698:	0087d79b          	srliw	a5,a5,0x8
    8002669c:	f8c400a3          	sb	a2,-127(s0)
    800266a0:	d8b6e4e3          	bltu	a3,a1,80026428 <__printf+0x350>
    800266a4:	00200793          	li	a5,2
    800266a8:	e2dff06f          	j	800264d4 <__printf+0x3fc>
    800266ac:	00002c97          	auipc	s9,0x2
    800266b0:	0acc8c93          	addi	s9,s9,172 # 80028758 <CONSOLE_STATUS+0x748>
    800266b4:	02800513          	li	a0,40
    800266b8:	ef1ff06f          	j	800265a8 <__printf+0x4d0>
    800266bc:	00700793          	li	a5,7
    800266c0:	00600c93          	li	s9,6
    800266c4:	e0dff06f          	j	800264d0 <__printf+0x3f8>
    800266c8:	00700793          	li	a5,7
    800266cc:	00600c93          	li	s9,6
    800266d0:	c69ff06f          	j	80026338 <__printf+0x260>
    800266d4:	00300793          	li	a5,3
    800266d8:	00200c93          	li	s9,2
    800266dc:	c5dff06f          	j	80026338 <__printf+0x260>
    800266e0:	00300793          	li	a5,3
    800266e4:	00200c93          	li	s9,2
    800266e8:	de9ff06f          	j	800264d0 <__printf+0x3f8>
    800266ec:	00400793          	li	a5,4
    800266f0:	00300c93          	li	s9,3
    800266f4:	dddff06f          	j	800264d0 <__printf+0x3f8>
    800266f8:	00400793          	li	a5,4
    800266fc:	00300c93          	li	s9,3
    80026700:	c39ff06f          	j	80026338 <__printf+0x260>
    80026704:	00500793          	li	a5,5
    80026708:	00400c93          	li	s9,4
    8002670c:	c2dff06f          	j	80026338 <__printf+0x260>
    80026710:	00500793          	li	a5,5
    80026714:	00400c93          	li	s9,4
    80026718:	db9ff06f          	j	800264d0 <__printf+0x3f8>
    8002671c:	00600793          	li	a5,6
    80026720:	00500c93          	li	s9,5
    80026724:	dadff06f          	j	800264d0 <__printf+0x3f8>
    80026728:	00600793          	li	a5,6
    8002672c:	00500c93          	li	s9,5
    80026730:	c09ff06f          	j	80026338 <__printf+0x260>
    80026734:	00800793          	li	a5,8
    80026738:	00700c93          	li	s9,7
    8002673c:	bfdff06f          	j	80026338 <__printf+0x260>
    80026740:	00100793          	li	a5,1
    80026744:	d91ff06f          	j	800264d4 <__printf+0x3fc>
    80026748:	00100793          	li	a5,1
    8002674c:	bf1ff06f          	j	8002633c <__printf+0x264>
    80026750:	00900793          	li	a5,9
    80026754:	00800c93          	li	s9,8
    80026758:	be1ff06f          	j	80026338 <__printf+0x260>
    8002675c:	00002517          	auipc	a0,0x2
    80026760:	00450513          	addi	a0,a0,4 # 80028760 <CONSOLE_STATUS+0x750>
    80026764:	00000097          	auipc	ra,0x0
    80026768:	918080e7          	jalr	-1768(ra) # 8002607c <panic>

000000008002676c <printfinit>:
    8002676c:	fe010113          	addi	sp,sp,-32
    80026770:	00813823          	sd	s0,16(sp)
    80026774:	00913423          	sd	s1,8(sp)
    80026778:	00113c23          	sd	ra,24(sp)
    8002677c:	02010413          	addi	s0,sp,32
    80026780:	00005497          	auipc	s1,0x5
    80026784:	71048493          	addi	s1,s1,1808 # 8002be90 <pr>
    80026788:	00048513          	mv	a0,s1
    8002678c:	00002597          	auipc	a1,0x2
    80026790:	fe458593          	addi	a1,a1,-28 # 80028770 <CONSOLE_STATUS+0x760>
    80026794:	00000097          	auipc	ra,0x0
    80026798:	5f4080e7          	jalr	1524(ra) # 80026d88 <initlock>
    8002679c:	01813083          	ld	ra,24(sp)
    800267a0:	01013403          	ld	s0,16(sp)
    800267a4:	0004ac23          	sw	zero,24(s1)
    800267a8:	00813483          	ld	s1,8(sp)
    800267ac:	02010113          	addi	sp,sp,32
    800267b0:	00008067          	ret

00000000800267b4 <uartinit>:
    800267b4:	ff010113          	addi	sp,sp,-16
    800267b8:	00813423          	sd	s0,8(sp)
    800267bc:	01010413          	addi	s0,sp,16
    800267c0:	100007b7          	lui	a5,0x10000
    800267c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800267c8:	f8000713          	li	a4,-128
    800267cc:	00e781a3          	sb	a4,3(a5)
    800267d0:	00300713          	li	a4,3
    800267d4:	00e78023          	sb	a4,0(a5)
    800267d8:	000780a3          	sb	zero,1(a5)
    800267dc:	00e781a3          	sb	a4,3(a5)
    800267e0:	00700693          	li	a3,7
    800267e4:	00d78123          	sb	a3,2(a5)
    800267e8:	00e780a3          	sb	a4,1(a5)
    800267ec:	00813403          	ld	s0,8(sp)
    800267f0:	01010113          	addi	sp,sp,16
    800267f4:	00008067          	ret

00000000800267f8 <uartputc>:
    800267f8:	00004797          	auipc	a5,0x4
    800267fc:	1507a783          	lw	a5,336(a5) # 8002a948 <panicked>
    80026800:	00078463          	beqz	a5,80026808 <uartputc+0x10>
    80026804:	0000006f          	j	80026804 <uartputc+0xc>
    80026808:	fd010113          	addi	sp,sp,-48
    8002680c:	02813023          	sd	s0,32(sp)
    80026810:	00913c23          	sd	s1,24(sp)
    80026814:	01213823          	sd	s2,16(sp)
    80026818:	01313423          	sd	s3,8(sp)
    8002681c:	02113423          	sd	ra,40(sp)
    80026820:	03010413          	addi	s0,sp,48
    80026824:	00004917          	auipc	s2,0x4
    80026828:	12c90913          	addi	s2,s2,300 # 8002a950 <uart_tx_r>
    8002682c:	00093783          	ld	a5,0(s2)
    80026830:	00004497          	auipc	s1,0x4
    80026834:	12848493          	addi	s1,s1,296 # 8002a958 <uart_tx_w>
    80026838:	0004b703          	ld	a4,0(s1)
    8002683c:	02078693          	addi	a3,a5,32
    80026840:	00050993          	mv	s3,a0
    80026844:	02e69c63          	bne	a3,a4,8002687c <uartputc+0x84>
    80026848:	00001097          	auipc	ra,0x1
    8002684c:	834080e7          	jalr	-1996(ra) # 8002707c <push_on>
    80026850:	00093783          	ld	a5,0(s2)
    80026854:	0004b703          	ld	a4,0(s1)
    80026858:	02078793          	addi	a5,a5,32
    8002685c:	00e79463          	bne	a5,a4,80026864 <uartputc+0x6c>
    80026860:	0000006f          	j	80026860 <uartputc+0x68>
    80026864:	00001097          	auipc	ra,0x1
    80026868:	88c080e7          	jalr	-1908(ra) # 800270f0 <pop_on>
    8002686c:	00093783          	ld	a5,0(s2)
    80026870:	0004b703          	ld	a4,0(s1)
    80026874:	02078693          	addi	a3,a5,32
    80026878:	fce688e3          	beq	a3,a4,80026848 <uartputc+0x50>
    8002687c:	01f77693          	andi	a3,a4,31
    80026880:	00005597          	auipc	a1,0x5
    80026884:	63058593          	addi	a1,a1,1584 # 8002beb0 <uart_tx_buf>
    80026888:	00d586b3          	add	a3,a1,a3
    8002688c:	00170713          	addi	a4,a4,1
    80026890:	01368023          	sb	s3,0(a3)
    80026894:	00e4b023          	sd	a4,0(s1)
    80026898:	10000637          	lui	a2,0x10000
    8002689c:	02f71063          	bne	a4,a5,800268bc <uartputc+0xc4>
    800268a0:	0340006f          	j	800268d4 <uartputc+0xdc>
    800268a4:	00074703          	lbu	a4,0(a4)
    800268a8:	00f93023          	sd	a5,0(s2)
    800268ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800268b0:	00093783          	ld	a5,0(s2)
    800268b4:	0004b703          	ld	a4,0(s1)
    800268b8:	00f70e63          	beq	a4,a5,800268d4 <uartputc+0xdc>
    800268bc:	00564683          	lbu	a3,5(a2)
    800268c0:	01f7f713          	andi	a4,a5,31
    800268c4:	00e58733          	add	a4,a1,a4
    800268c8:	0206f693          	andi	a3,a3,32
    800268cc:	00178793          	addi	a5,a5,1
    800268d0:	fc069ae3          	bnez	a3,800268a4 <uartputc+0xac>
    800268d4:	02813083          	ld	ra,40(sp)
    800268d8:	02013403          	ld	s0,32(sp)
    800268dc:	01813483          	ld	s1,24(sp)
    800268e0:	01013903          	ld	s2,16(sp)
    800268e4:	00813983          	ld	s3,8(sp)
    800268e8:	03010113          	addi	sp,sp,48
    800268ec:	00008067          	ret

00000000800268f0 <uartputc_sync>:
    800268f0:	ff010113          	addi	sp,sp,-16
    800268f4:	00813423          	sd	s0,8(sp)
    800268f8:	01010413          	addi	s0,sp,16
    800268fc:	00004717          	auipc	a4,0x4
    80026900:	04c72703          	lw	a4,76(a4) # 8002a948 <panicked>
    80026904:	02071663          	bnez	a4,80026930 <uartputc_sync+0x40>
    80026908:	00050793          	mv	a5,a0
    8002690c:	100006b7          	lui	a3,0x10000
    80026910:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80026914:	02077713          	andi	a4,a4,32
    80026918:	fe070ce3          	beqz	a4,80026910 <uartputc_sync+0x20>
    8002691c:	0ff7f793          	andi	a5,a5,255
    80026920:	00f68023          	sb	a5,0(a3)
    80026924:	00813403          	ld	s0,8(sp)
    80026928:	01010113          	addi	sp,sp,16
    8002692c:	00008067          	ret
    80026930:	0000006f          	j	80026930 <uartputc_sync+0x40>

0000000080026934 <uartstart>:
    80026934:	ff010113          	addi	sp,sp,-16
    80026938:	00813423          	sd	s0,8(sp)
    8002693c:	01010413          	addi	s0,sp,16
    80026940:	00004617          	auipc	a2,0x4
    80026944:	01060613          	addi	a2,a2,16 # 8002a950 <uart_tx_r>
    80026948:	00004517          	auipc	a0,0x4
    8002694c:	01050513          	addi	a0,a0,16 # 8002a958 <uart_tx_w>
    80026950:	00063783          	ld	a5,0(a2)
    80026954:	00053703          	ld	a4,0(a0)
    80026958:	04f70263          	beq	a4,a5,8002699c <uartstart+0x68>
    8002695c:	100005b7          	lui	a1,0x10000
    80026960:	00005817          	auipc	a6,0x5
    80026964:	55080813          	addi	a6,a6,1360 # 8002beb0 <uart_tx_buf>
    80026968:	01c0006f          	j	80026984 <uartstart+0x50>
    8002696c:	0006c703          	lbu	a4,0(a3)
    80026970:	00f63023          	sd	a5,0(a2)
    80026974:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80026978:	00063783          	ld	a5,0(a2)
    8002697c:	00053703          	ld	a4,0(a0)
    80026980:	00f70e63          	beq	a4,a5,8002699c <uartstart+0x68>
    80026984:	01f7f713          	andi	a4,a5,31
    80026988:	00e806b3          	add	a3,a6,a4
    8002698c:	0055c703          	lbu	a4,5(a1)
    80026990:	00178793          	addi	a5,a5,1
    80026994:	02077713          	andi	a4,a4,32
    80026998:	fc071ae3          	bnez	a4,8002696c <uartstart+0x38>
    8002699c:	00813403          	ld	s0,8(sp)
    800269a0:	01010113          	addi	sp,sp,16
    800269a4:	00008067          	ret

00000000800269a8 <uartgetc>:
    800269a8:	ff010113          	addi	sp,sp,-16
    800269ac:	00813423          	sd	s0,8(sp)
    800269b0:	01010413          	addi	s0,sp,16
    800269b4:	10000737          	lui	a4,0x10000
    800269b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800269bc:	0017f793          	andi	a5,a5,1
    800269c0:	00078c63          	beqz	a5,800269d8 <uartgetc+0x30>
    800269c4:	00074503          	lbu	a0,0(a4)
    800269c8:	0ff57513          	andi	a0,a0,255
    800269cc:	00813403          	ld	s0,8(sp)
    800269d0:	01010113          	addi	sp,sp,16
    800269d4:	00008067          	ret
    800269d8:	fff00513          	li	a0,-1
    800269dc:	ff1ff06f          	j	800269cc <uartgetc+0x24>

00000000800269e0 <uartintr>:
    800269e0:	100007b7          	lui	a5,0x10000
    800269e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800269e8:	0017f793          	andi	a5,a5,1
    800269ec:	0a078463          	beqz	a5,80026a94 <uartintr+0xb4>
    800269f0:	fe010113          	addi	sp,sp,-32
    800269f4:	00813823          	sd	s0,16(sp)
    800269f8:	00913423          	sd	s1,8(sp)
    800269fc:	00113c23          	sd	ra,24(sp)
    80026a00:	02010413          	addi	s0,sp,32
    80026a04:	100004b7          	lui	s1,0x10000
    80026a08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80026a0c:	0ff57513          	andi	a0,a0,255
    80026a10:	fffff097          	auipc	ra,0xfffff
    80026a14:	534080e7          	jalr	1332(ra) # 80025f44 <consoleintr>
    80026a18:	0054c783          	lbu	a5,5(s1)
    80026a1c:	0017f793          	andi	a5,a5,1
    80026a20:	fe0794e3          	bnez	a5,80026a08 <uartintr+0x28>
    80026a24:	00004617          	auipc	a2,0x4
    80026a28:	f2c60613          	addi	a2,a2,-212 # 8002a950 <uart_tx_r>
    80026a2c:	00004517          	auipc	a0,0x4
    80026a30:	f2c50513          	addi	a0,a0,-212 # 8002a958 <uart_tx_w>
    80026a34:	00063783          	ld	a5,0(a2)
    80026a38:	00053703          	ld	a4,0(a0)
    80026a3c:	04f70263          	beq	a4,a5,80026a80 <uartintr+0xa0>
    80026a40:	100005b7          	lui	a1,0x10000
    80026a44:	00005817          	auipc	a6,0x5
    80026a48:	46c80813          	addi	a6,a6,1132 # 8002beb0 <uart_tx_buf>
    80026a4c:	01c0006f          	j	80026a68 <uartintr+0x88>
    80026a50:	0006c703          	lbu	a4,0(a3)
    80026a54:	00f63023          	sd	a5,0(a2)
    80026a58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80026a5c:	00063783          	ld	a5,0(a2)
    80026a60:	00053703          	ld	a4,0(a0)
    80026a64:	00f70e63          	beq	a4,a5,80026a80 <uartintr+0xa0>
    80026a68:	01f7f713          	andi	a4,a5,31
    80026a6c:	00e806b3          	add	a3,a6,a4
    80026a70:	0055c703          	lbu	a4,5(a1)
    80026a74:	00178793          	addi	a5,a5,1
    80026a78:	02077713          	andi	a4,a4,32
    80026a7c:	fc071ae3          	bnez	a4,80026a50 <uartintr+0x70>
    80026a80:	01813083          	ld	ra,24(sp)
    80026a84:	01013403          	ld	s0,16(sp)
    80026a88:	00813483          	ld	s1,8(sp)
    80026a8c:	02010113          	addi	sp,sp,32
    80026a90:	00008067          	ret
    80026a94:	00004617          	auipc	a2,0x4
    80026a98:	ebc60613          	addi	a2,a2,-324 # 8002a950 <uart_tx_r>
    80026a9c:	00004517          	auipc	a0,0x4
    80026aa0:	ebc50513          	addi	a0,a0,-324 # 8002a958 <uart_tx_w>
    80026aa4:	00063783          	ld	a5,0(a2)
    80026aa8:	00053703          	ld	a4,0(a0)
    80026aac:	04f70263          	beq	a4,a5,80026af0 <uartintr+0x110>
    80026ab0:	100005b7          	lui	a1,0x10000
    80026ab4:	00005817          	auipc	a6,0x5
    80026ab8:	3fc80813          	addi	a6,a6,1020 # 8002beb0 <uart_tx_buf>
    80026abc:	01c0006f          	j	80026ad8 <uartintr+0xf8>
    80026ac0:	0006c703          	lbu	a4,0(a3)
    80026ac4:	00f63023          	sd	a5,0(a2)
    80026ac8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80026acc:	00063783          	ld	a5,0(a2)
    80026ad0:	00053703          	ld	a4,0(a0)
    80026ad4:	02f70063          	beq	a4,a5,80026af4 <uartintr+0x114>
    80026ad8:	01f7f713          	andi	a4,a5,31
    80026adc:	00e806b3          	add	a3,a6,a4
    80026ae0:	0055c703          	lbu	a4,5(a1)
    80026ae4:	00178793          	addi	a5,a5,1
    80026ae8:	02077713          	andi	a4,a4,32
    80026aec:	fc071ae3          	bnez	a4,80026ac0 <uartintr+0xe0>
    80026af0:	00008067          	ret
    80026af4:	00008067          	ret

0000000080026af8 <kinit>:
    80026af8:	fc010113          	addi	sp,sp,-64
    80026afc:	02913423          	sd	s1,40(sp)
    80026b00:	fffff7b7          	lui	a5,0xfffff
    80026b04:	00006497          	auipc	s1,0x6
    80026b08:	3cb48493          	addi	s1,s1,971 # 8002cecf <end+0xfff>
    80026b0c:	02813823          	sd	s0,48(sp)
    80026b10:	01313c23          	sd	s3,24(sp)
    80026b14:	00f4f4b3          	and	s1,s1,a5
    80026b18:	02113c23          	sd	ra,56(sp)
    80026b1c:	03213023          	sd	s2,32(sp)
    80026b20:	01413823          	sd	s4,16(sp)
    80026b24:	01513423          	sd	s5,8(sp)
    80026b28:	04010413          	addi	s0,sp,64
    80026b2c:	000017b7          	lui	a5,0x1
    80026b30:	01100993          	li	s3,17
    80026b34:	00f487b3          	add	a5,s1,a5
    80026b38:	01b99993          	slli	s3,s3,0x1b
    80026b3c:	06f9e063          	bltu	s3,a5,80026b9c <kinit+0xa4>
    80026b40:	00005a97          	auipc	s5,0x5
    80026b44:	390a8a93          	addi	s5,s5,912 # 8002bed0 <end>
    80026b48:	0754ec63          	bltu	s1,s5,80026bc0 <kinit+0xc8>
    80026b4c:	0734fa63          	bgeu	s1,s3,80026bc0 <kinit+0xc8>
    80026b50:	00088a37          	lui	s4,0x88
    80026b54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80026b58:	00004917          	auipc	s2,0x4
    80026b5c:	e0890913          	addi	s2,s2,-504 # 8002a960 <kmem>
    80026b60:	00ca1a13          	slli	s4,s4,0xc
    80026b64:	0140006f          	j	80026b78 <kinit+0x80>
    80026b68:	000017b7          	lui	a5,0x1
    80026b6c:	00f484b3          	add	s1,s1,a5
    80026b70:	0554e863          	bltu	s1,s5,80026bc0 <kinit+0xc8>
    80026b74:	0534f663          	bgeu	s1,s3,80026bc0 <kinit+0xc8>
    80026b78:	00001637          	lui	a2,0x1
    80026b7c:	00100593          	li	a1,1
    80026b80:	00048513          	mv	a0,s1
    80026b84:	00000097          	auipc	ra,0x0
    80026b88:	5e4080e7          	jalr	1508(ra) # 80027168 <__memset>
    80026b8c:	00093783          	ld	a5,0(s2)
    80026b90:	00f4b023          	sd	a5,0(s1)
    80026b94:	00993023          	sd	s1,0(s2)
    80026b98:	fd4498e3          	bne	s1,s4,80026b68 <kinit+0x70>
    80026b9c:	03813083          	ld	ra,56(sp)
    80026ba0:	03013403          	ld	s0,48(sp)
    80026ba4:	02813483          	ld	s1,40(sp)
    80026ba8:	02013903          	ld	s2,32(sp)
    80026bac:	01813983          	ld	s3,24(sp)
    80026bb0:	01013a03          	ld	s4,16(sp)
    80026bb4:	00813a83          	ld	s5,8(sp)
    80026bb8:	04010113          	addi	sp,sp,64
    80026bbc:	00008067          	ret
    80026bc0:	00002517          	auipc	a0,0x2
    80026bc4:	bd050513          	addi	a0,a0,-1072 # 80028790 <digits+0x18>
    80026bc8:	fffff097          	auipc	ra,0xfffff
    80026bcc:	4b4080e7          	jalr	1204(ra) # 8002607c <panic>

0000000080026bd0 <freerange>:
    80026bd0:	fc010113          	addi	sp,sp,-64
    80026bd4:	000017b7          	lui	a5,0x1
    80026bd8:	02913423          	sd	s1,40(sp)
    80026bdc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80026be0:	009504b3          	add	s1,a0,s1
    80026be4:	fffff537          	lui	a0,0xfffff
    80026be8:	02813823          	sd	s0,48(sp)
    80026bec:	02113c23          	sd	ra,56(sp)
    80026bf0:	03213023          	sd	s2,32(sp)
    80026bf4:	01313c23          	sd	s3,24(sp)
    80026bf8:	01413823          	sd	s4,16(sp)
    80026bfc:	01513423          	sd	s5,8(sp)
    80026c00:	01613023          	sd	s6,0(sp)
    80026c04:	04010413          	addi	s0,sp,64
    80026c08:	00a4f4b3          	and	s1,s1,a0
    80026c0c:	00f487b3          	add	a5,s1,a5
    80026c10:	06f5e463          	bltu	a1,a5,80026c78 <freerange+0xa8>
    80026c14:	00005a97          	auipc	s5,0x5
    80026c18:	2bca8a93          	addi	s5,s5,700 # 8002bed0 <end>
    80026c1c:	0954e263          	bltu	s1,s5,80026ca0 <freerange+0xd0>
    80026c20:	01100993          	li	s3,17
    80026c24:	01b99993          	slli	s3,s3,0x1b
    80026c28:	0734fc63          	bgeu	s1,s3,80026ca0 <freerange+0xd0>
    80026c2c:	00058a13          	mv	s4,a1
    80026c30:	00004917          	auipc	s2,0x4
    80026c34:	d3090913          	addi	s2,s2,-720 # 8002a960 <kmem>
    80026c38:	00002b37          	lui	s6,0x2
    80026c3c:	0140006f          	j	80026c50 <freerange+0x80>
    80026c40:	000017b7          	lui	a5,0x1
    80026c44:	00f484b3          	add	s1,s1,a5
    80026c48:	0554ec63          	bltu	s1,s5,80026ca0 <freerange+0xd0>
    80026c4c:	0534fa63          	bgeu	s1,s3,80026ca0 <freerange+0xd0>
    80026c50:	00001637          	lui	a2,0x1
    80026c54:	00100593          	li	a1,1
    80026c58:	00048513          	mv	a0,s1
    80026c5c:	00000097          	auipc	ra,0x0
    80026c60:	50c080e7          	jalr	1292(ra) # 80027168 <__memset>
    80026c64:	00093703          	ld	a4,0(s2)
    80026c68:	016487b3          	add	a5,s1,s6
    80026c6c:	00e4b023          	sd	a4,0(s1)
    80026c70:	00993023          	sd	s1,0(s2)
    80026c74:	fcfa76e3          	bgeu	s4,a5,80026c40 <freerange+0x70>
    80026c78:	03813083          	ld	ra,56(sp)
    80026c7c:	03013403          	ld	s0,48(sp)
    80026c80:	02813483          	ld	s1,40(sp)
    80026c84:	02013903          	ld	s2,32(sp)
    80026c88:	01813983          	ld	s3,24(sp)
    80026c8c:	01013a03          	ld	s4,16(sp)
    80026c90:	00813a83          	ld	s5,8(sp)
    80026c94:	00013b03          	ld	s6,0(sp)
    80026c98:	04010113          	addi	sp,sp,64
    80026c9c:	00008067          	ret
    80026ca0:	00002517          	auipc	a0,0x2
    80026ca4:	af050513          	addi	a0,a0,-1296 # 80028790 <digits+0x18>
    80026ca8:	fffff097          	auipc	ra,0xfffff
    80026cac:	3d4080e7          	jalr	980(ra) # 8002607c <panic>

0000000080026cb0 <kfree>:
    80026cb0:	fe010113          	addi	sp,sp,-32
    80026cb4:	00813823          	sd	s0,16(sp)
    80026cb8:	00113c23          	sd	ra,24(sp)
    80026cbc:	00913423          	sd	s1,8(sp)
    80026cc0:	02010413          	addi	s0,sp,32
    80026cc4:	03451793          	slli	a5,a0,0x34
    80026cc8:	04079c63          	bnez	a5,80026d20 <kfree+0x70>
    80026ccc:	00005797          	auipc	a5,0x5
    80026cd0:	20478793          	addi	a5,a5,516 # 8002bed0 <end>
    80026cd4:	00050493          	mv	s1,a0
    80026cd8:	04f56463          	bltu	a0,a5,80026d20 <kfree+0x70>
    80026cdc:	01100793          	li	a5,17
    80026ce0:	01b79793          	slli	a5,a5,0x1b
    80026ce4:	02f57e63          	bgeu	a0,a5,80026d20 <kfree+0x70>
    80026ce8:	00001637          	lui	a2,0x1
    80026cec:	00100593          	li	a1,1
    80026cf0:	00000097          	auipc	ra,0x0
    80026cf4:	478080e7          	jalr	1144(ra) # 80027168 <__memset>
    80026cf8:	00004797          	auipc	a5,0x4
    80026cfc:	c6878793          	addi	a5,a5,-920 # 8002a960 <kmem>
    80026d00:	0007b703          	ld	a4,0(a5)
    80026d04:	01813083          	ld	ra,24(sp)
    80026d08:	01013403          	ld	s0,16(sp)
    80026d0c:	00e4b023          	sd	a4,0(s1)
    80026d10:	0097b023          	sd	s1,0(a5)
    80026d14:	00813483          	ld	s1,8(sp)
    80026d18:	02010113          	addi	sp,sp,32
    80026d1c:	00008067          	ret
    80026d20:	00002517          	auipc	a0,0x2
    80026d24:	a7050513          	addi	a0,a0,-1424 # 80028790 <digits+0x18>
    80026d28:	fffff097          	auipc	ra,0xfffff
    80026d2c:	354080e7          	jalr	852(ra) # 8002607c <panic>

0000000080026d30 <kalloc>:
    80026d30:	fe010113          	addi	sp,sp,-32
    80026d34:	00813823          	sd	s0,16(sp)
    80026d38:	00913423          	sd	s1,8(sp)
    80026d3c:	00113c23          	sd	ra,24(sp)
    80026d40:	02010413          	addi	s0,sp,32
    80026d44:	00004797          	auipc	a5,0x4
    80026d48:	c1c78793          	addi	a5,a5,-996 # 8002a960 <kmem>
    80026d4c:	0007b483          	ld	s1,0(a5)
    80026d50:	02048063          	beqz	s1,80026d70 <kalloc+0x40>
    80026d54:	0004b703          	ld	a4,0(s1)
    80026d58:	00001637          	lui	a2,0x1
    80026d5c:	00500593          	li	a1,5
    80026d60:	00048513          	mv	a0,s1
    80026d64:	00e7b023          	sd	a4,0(a5)
    80026d68:	00000097          	auipc	ra,0x0
    80026d6c:	400080e7          	jalr	1024(ra) # 80027168 <__memset>
    80026d70:	01813083          	ld	ra,24(sp)
    80026d74:	01013403          	ld	s0,16(sp)
    80026d78:	00048513          	mv	a0,s1
    80026d7c:	00813483          	ld	s1,8(sp)
    80026d80:	02010113          	addi	sp,sp,32
    80026d84:	00008067          	ret

0000000080026d88 <initlock>:
    80026d88:	ff010113          	addi	sp,sp,-16
    80026d8c:	00813423          	sd	s0,8(sp)
    80026d90:	01010413          	addi	s0,sp,16
    80026d94:	00813403          	ld	s0,8(sp)
    80026d98:	00b53423          	sd	a1,8(a0)
    80026d9c:	00052023          	sw	zero,0(a0)
    80026da0:	00053823          	sd	zero,16(a0)
    80026da4:	01010113          	addi	sp,sp,16
    80026da8:	00008067          	ret

0000000080026dac <acquire>:
    80026dac:	fe010113          	addi	sp,sp,-32
    80026db0:	00813823          	sd	s0,16(sp)
    80026db4:	00913423          	sd	s1,8(sp)
    80026db8:	00113c23          	sd	ra,24(sp)
    80026dbc:	01213023          	sd	s2,0(sp)
    80026dc0:	02010413          	addi	s0,sp,32
    80026dc4:	00050493          	mv	s1,a0
    80026dc8:	10002973          	csrr	s2,sstatus
    80026dcc:	100027f3          	csrr	a5,sstatus
    80026dd0:	ffd7f793          	andi	a5,a5,-3
    80026dd4:	10079073          	csrw	sstatus,a5
    80026dd8:	fffff097          	auipc	ra,0xfffff
    80026ddc:	8e8080e7          	jalr	-1816(ra) # 800256c0 <mycpu>
    80026de0:	07852783          	lw	a5,120(a0)
    80026de4:	06078e63          	beqz	a5,80026e60 <acquire+0xb4>
    80026de8:	fffff097          	auipc	ra,0xfffff
    80026dec:	8d8080e7          	jalr	-1832(ra) # 800256c0 <mycpu>
    80026df0:	07852783          	lw	a5,120(a0)
    80026df4:	0004a703          	lw	a4,0(s1)
    80026df8:	0017879b          	addiw	a5,a5,1
    80026dfc:	06f52c23          	sw	a5,120(a0)
    80026e00:	04071063          	bnez	a4,80026e40 <acquire+0x94>
    80026e04:	00100713          	li	a4,1
    80026e08:	00070793          	mv	a5,a4
    80026e0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80026e10:	0007879b          	sext.w	a5,a5
    80026e14:	fe079ae3          	bnez	a5,80026e08 <acquire+0x5c>
    80026e18:	0ff0000f          	fence
    80026e1c:	fffff097          	auipc	ra,0xfffff
    80026e20:	8a4080e7          	jalr	-1884(ra) # 800256c0 <mycpu>
    80026e24:	01813083          	ld	ra,24(sp)
    80026e28:	01013403          	ld	s0,16(sp)
    80026e2c:	00a4b823          	sd	a0,16(s1)
    80026e30:	00013903          	ld	s2,0(sp)
    80026e34:	00813483          	ld	s1,8(sp)
    80026e38:	02010113          	addi	sp,sp,32
    80026e3c:	00008067          	ret
    80026e40:	0104b903          	ld	s2,16(s1)
    80026e44:	fffff097          	auipc	ra,0xfffff
    80026e48:	87c080e7          	jalr	-1924(ra) # 800256c0 <mycpu>
    80026e4c:	faa91ce3          	bne	s2,a0,80026e04 <acquire+0x58>
    80026e50:	00002517          	auipc	a0,0x2
    80026e54:	94850513          	addi	a0,a0,-1720 # 80028798 <digits+0x20>
    80026e58:	fffff097          	auipc	ra,0xfffff
    80026e5c:	224080e7          	jalr	548(ra) # 8002607c <panic>
    80026e60:	00195913          	srli	s2,s2,0x1
    80026e64:	fffff097          	auipc	ra,0xfffff
    80026e68:	85c080e7          	jalr	-1956(ra) # 800256c0 <mycpu>
    80026e6c:	00197913          	andi	s2,s2,1
    80026e70:	07252e23          	sw	s2,124(a0)
    80026e74:	f75ff06f          	j	80026de8 <acquire+0x3c>

0000000080026e78 <release>:
    80026e78:	fe010113          	addi	sp,sp,-32
    80026e7c:	00813823          	sd	s0,16(sp)
    80026e80:	00113c23          	sd	ra,24(sp)
    80026e84:	00913423          	sd	s1,8(sp)
    80026e88:	01213023          	sd	s2,0(sp)
    80026e8c:	02010413          	addi	s0,sp,32
    80026e90:	00052783          	lw	a5,0(a0)
    80026e94:	00079a63          	bnez	a5,80026ea8 <release+0x30>
    80026e98:	00002517          	auipc	a0,0x2
    80026e9c:	90850513          	addi	a0,a0,-1784 # 800287a0 <digits+0x28>
    80026ea0:	fffff097          	auipc	ra,0xfffff
    80026ea4:	1dc080e7          	jalr	476(ra) # 8002607c <panic>
    80026ea8:	01053903          	ld	s2,16(a0)
    80026eac:	00050493          	mv	s1,a0
    80026eb0:	fffff097          	auipc	ra,0xfffff
    80026eb4:	810080e7          	jalr	-2032(ra) # 800256c0 <mycpu>
    80026eb8:	fea910e3          	bne	s2,a0,80026e98 <release+0x20>
    80026ebc:	0004b823          	sd	zero,16(s1)
    80026ec0:	0ff0000f          	fence
    80026ec4:	0f50000f          	fence	iorw,ow
    80026ec8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80026ecc:	ffffe097          	auipc	ra,0xffffe
    80026ed0:	7f4080e7          	jalr	2036(ra) # 800256c0 <mycpu>
    80026ed4:	100027f3          	csrr	a5,sstatus
    80026ed8:	0027f793          	andi	a5,a5,2
    80026edc:	04079a63          	bnez	a5,80026f30 <release+0xb8>
    80026ee0:	07852783          	lw	a5,120(a0)
    80026ee4:	02f05e63          	blez	a5,80026f20 <release+0xa8>
    80026ee8:	fff7871b          	addiw	a4,a5,-1
    80026eec:	06e52c23          	sw	a4,120(a0)
    80026ef0:	00071c63          	bnez	a4,80026f08 <release+0x90>
    80026ef4:	07c52783          	lw	a5,124(a0)
    80026ef8:	00078863          	beqz	a5,80026f08 <release+0x90>
    80026efc:	100027f3          	csrr	a5,sstatus
    80026f00:	0027e793          	ori	a5,a5,2
    80026f04:	10079073          	csrw	sstatus,a5
    80026f08:	01813083          	ld	ra,24(sp)
    80026f0c:	01013403          	ld	s0,16(sp)
    80026f10:	00813483          	ld	s1,8(sp)
    80026f14:	00013903          	ld	s2,0(sp)
    80026f18:	02010113          	addi	sp,sp,32
    80026f1c:	00008067          	ret
    80026f20:	00002517          	auipc	a0,0x2
    80026f24:	8a050513          	addi	a0,a0,-1888 # 800287c0 <digits+0x48>
    80026f28:	fffff097          	auipc	ra,0xfffff
    80026f2c:	154080e7          	jalr	340(ra) # 8002607c <panic>
    80026f30:	00002517          	auipc	a0,0x2
    80026f34:	87850513          	addi	a0,a0,-1928 # 800287a8 <digits+0x30>
    80026f38:	fffff097          	auipc	ra,0xfffff
    80026f3c:	144080e7          	jalr	324(ra) # 8002607c <panic>

0000000080026f40 <holding>:
    80026f40:	00052783          	lw	a5,0(a0)
    80026f44:	00079663          	bnez	a5,80026f50 <holding+0x10>
    80026f48:	00000513          	li	a0,0
    80026f4c:	00008067          	ret
    80026f50:	fe010113          	addi	sp,sp,-32
    80026f54:	00813823          	sd	s0,16(sp)
    80026f58:	00913423          	sd	s1,8(sp)
    80026f5c:	00113c23          	sd	ra,24(sp)
    80026f60:	02010413          	addi	s0,sp,32
    80026f64:	01053483          	ld	s1,16(a0)
    80026f68:	ffffe097          	auipc	ra,0xffffe
    80026f6c:	758080e7          	jalr	1880(ra) # 800256c0 <mycpu>
    80026f70:	01813083          	ld	ra,24(sp)
    80026f74:	01013403          	ld	s0,16(sp)
    80026f78:	40a48533          	sub	a0,s1,a0
    80026f7c:	00153513          	seqz	a0,a0
    80026f80:	00813483          	ld	s1,8(sp)
    80026f84:	02010113          	addi	sp,sp,32
    80026f88:	00008067          	ret

0000000080026f8c <push_off>:
    80026f8c:	fe010113          	addi	sp,sp,-32
    80026f90:	00813823          	sd	s0,16(sp)
    80026f94:	00113c23          	sd	ra,24(sp)
    80026f98:	00913423          	sd	s1,8(sp)
    80026f9c:	02010413          	addi	s0,sp,32
    80026fa0:	100024f3          	csrr	s1,sstatus
    80026fa4:	100027f3          	csrr	a5,sstatus
    80026fa8:	ffd7f793          	andi	a5,a5,-3
    80026fac:	10079073          	csrw	sstatus,a5
    80026fb0:	ffffe097          	auipc	ra,0xffffe
    80026fb4:	710080e7          	jalr	1808(ra) # 800256c0 <mycpu>
    80026fb8:	07852783          	lw	a5,120(a0)
    80026fbc:	02078663          	beqz	a5,80026fe8 <push_off+0x5c>
    80026fc0:	ffffe097          	auipc	ra,0xffffe
    80026fc4:	700080e7          	jalr	1792(ra) # 800256c0 <mycpu>
    80026fc8:	07852783          	lw	a5,120(a0)
    80026fcc:	01813083          	ld	ra,24(sp)
    80026fd0:	01013403          	ld	s0,16(sp)
    80026fd4:	0017879b          	addiw	a5,a5,1
    80026fd8:	06f52c23          	sw	a5,120(a0)
    80026fdc:	00813483          	ld	s1,8(sp)
    80026fe0:	02010113          	addi	sp,sp,32
    80026fe4:	00008067          	ret
    80026fe8:	0014d493          	srli	s1,s1,0x1
    80026fec:	ffffe097          	auipc	ra,0xffffe
    80026ff0:	6d4080e7          	jalr	1748(ra) # 800256c0 <mycpu>
    80026ff4:	0014f493          	andi	s1,s1,1
    80026ff8:	06952e23          	sw	s1,124(a0)
    80026ffc:	fc5ff06f          	j	80026fc0 <push_off+0x34>

0000000080027000 <pop_off>:
    80027000:	ff010113          	addi	sp,sp,-16
    80027004:	00813023          	sd	s0,0(sp)
    80027008:	00113423          	sd	ra,8(sp)
    8002700c:	01010413          	addi	s0,sp,16
    80027010:	ffffe097          	auipc	ra,0xffffe
    80027014:	6b0080e7          	jalr	1712(ra) # 800256c0 <mycpu>
    80027018:	100027f3          	csrr	a5,sstatus
    8002701c:	0027f793          	andi	a5,a5,2
    80027020:	04079663          	bnez	a5,8002706c <pop_off+0x6c>
    80027024:	07852783          	lw	a5,120(a0)
    80027028:	02f05a63          	blez	a5,8002705c <pop_off+0x5c>
    8002702c:	fff7871b          	addiw	a4,a5,-1
    80027030:	06e52c23          	sw	a4,120(a0)
    80027034:	00071c63          	bnez	a4,8002704c <pop_off+0x4c>
    80027038:	07c52783          	lw	a5,124(a0)
    8002703c:	00078863          	beqz	a5,8002704c <pop_off+0x4c>
    80027040:	100027f3          	csrr	a5,sstatus
    80027044:	0027e793          	ori	a5,a5,2
    80027048:	10079073          	csrw	sstatus,a5
    8002704c:	00813083          	ld	ra,8(sp)
    80027050:	00013403          	ld	s0,0(sp)
    80027054:	01010113          	addi	sp,sp,16
    80027058:	00008067          	ret
    8002705c:	00001517          	auipc	a0,0x1
    80027060:	76450513          	addi	a0,a0,1892 # 800287c0 <digits+0x48>
    80027064:	fffff097          	auipc	ra,0xfffff
    80027068:	018080e7          	jalr	24(ra) # 8002607c <panic>
    8002706c:	00001517          	auipc	a0,0x1
    80027070:	73c50513          	addi	a0,a0,1852 # 800287a8 <digits+0x30>
    80027074:	fffff097          	auipc	ra,0xfffff
    80027078:	008080e7          	jalr	8(ra) # 8002607c <panic>

000000008002707c <push_on>:
    8002707c:	fe010113          	addi	sp,sp,-32
    80027080:	00813823          	sd	s0,16(sp)
    80027084:	00113c23          	sd	ra,24(sp)
    80027088:	00913423          	sd	s1,8(sp)
    8002708c:	02010413          	addi	s0,sp,32
    80027090:	100024f3          	csrr	s1,sstatus
    80027094:	100027f3          	csrr	a5,sstatus
    80027098:	0027e793          	ori	a5,a5,2
    8002709c:	10079073          	csrw	sstatus,a5
    800270a0:	ffffe097          	auipc	ra,0xffffe
    800270a4:	620080e7          	jalr	1568(ra) # 800256c0 <mycpu>
    800270a8:	07852783          	lw	a5,120(a0)
    800270ac:	02078663          	beqz	a5,800270d8 <push_on+0x5c>
    800270b0:	ffffe097          	auipc	ra,0xffffe
    800270b4:	610080e7          	jalr	1552(ra) # 800256c0 <mycpu>
    800270b8:	07852783          	lw	a5,120(a0)
    800270bc:	01813083          	ld	ra,24(sp)
    800270c0:	01013403          	ld	s0,16(sp)
    800270c4:	0017879b          	addiw	a5,a5,1
    800270c8:	06f52c23          	sw	a5,120(a0)
    800270cc:	00813483          	ld	s1,8(sp)
    800270d0:	02010113          	addi	sp,sp,32
    800270d4:	00008067          	ret
    800270d8:	0014d493          	srli	s1,s1,0x1
    800270dc:	ffffe097          	auipc	ra,0xffffe
    800270e0:	5e4080e7          	jalr	1508(ra) # 800256c0 <mycpu>
    800270e4:	0014f493          	andi	s1,s1,1
    800270e8:	06952e23          	sw	s1,124(a0)
    800270ec:	fc5ff06f          	j	800270b0 <push_on+0x34>

00000000800270f0 <pop_on>:
    800270f0:	ff010113          	addi	sp,sp,-16
    800270f4:	00813023          	sd	s0,0(sp)
    800270f8:	00113423          	sd	ra,8(sp)
    800270fc:	01010413          	addi	s0,sp,16
    80027100:	ffffe097          	auipc	ra,0xffffe
    80027104:	5c0080e7          	jalr	1472(ra) # 800256c0 <mycpu>
    80027108:	100027f3          	csrr	a5,sstatus
    8002710c:	0027f793          	andi	a5,a5,2
    80027110:	04078463          	beqz	a5,80027158 <pop_on+0x68>
    80027114:	07852783          	lw	a5,120(a0)
    80027118:	02f05863          	blez	a5,80027148 <pop_on+0x58>
    8002711c:	fff7879b          	addiw	a5,a5,-1
    80027120:	06f52c23          	sw	a5,120(a0)
    80027124:	07853783          	ld	a5,120(a0)
    80027128:	00079863          	bnez	a5,80027138 <pop_on+0x48>
    8002712c:	100027f3          	csrr	a5,sstatus
    80027130:	ffd7f793          	andi	a5,a5,-3
    80027134:	10079073          	csrw	sstatus,a5
    80027138:	00813083          	ld	ra,8(sp)
    8002713c:	00013403          	ld	s0,0(sp)
    80027140:	01010113          	addi	sp,sp,16
    80027144:	00008067          	ret
    80027148:	00001517          	auipc	a0,0x1
    8002714c:	6a050513          	addi	a0,a0,1696 # 800287e8 <digits+0x70>
    80027150:	fffff097          	auipc	ra,0xfffff
    80027154:	f2c080e7          	jalr	-212(ra) # 8002607c <panic>
    80027158:	00001517          	auipc	a0,0x1
    8002715c:	67050513          	addi	a0,a0,1648 # 800287c8 <digits+0x50>
    80027160:	fffff097          	auipc	ra,0xfffff
    80027164:	f1c080e7          	jalr	-228(ra) # 8002607c <panic>

0000000080027168 <__memset>:
    80027168:	ff010113          	addi	sp,sp,-16
    8002716c:	00813423          	sd	s0,8(sp)
    80027170:	01010413          	addi	s0,sp,16
    80027174:	1a060e63          	beqz	a2,80027330 <__memset+0x1c8>
    80027178:	40a007b3          	neg	a5,a0
    8002717c:	0077f793          	andi	a5,a5,7
    80027180:	00778693          	addi	a3,a5,7
    80027184:	00b00813          	li	a6,11
    80027188:	0ff5f593          	andi	a1,a1,255
    8002718c:	fff6071b          	addiw	a4,a2,-1
    80027190:	1b06e663          	bltu	a3,a6,8002733c <__memset+0x1d4>
    80027194:	1cd76463          	bltu	a4,a3,8002735c <__memset+0x1f4>
    80027198:	1a078e63          	beqz	a5,80027354 <__memset+0x1ec>
    8002719c:	00b50023          	sb	a1,0(a0)
    800271a0:	00100713          	li	a4,1
    800271a4:	1ae78463          	beq	a5,a4,8002734c <__memset+0x1e4>
    800271a8:	00b500a3          	sb	a1,1(a0)
    800271ac:	00200713          	li	a4,2
    800271b0:	1ae78a63          	beq	a5,a4,80027364 <__memset+0x1fc>
    800271b4:	00b50123          	sb	a1,2(a0)
    800271b8:	00300713          	li	a4,3
    800271bc:	18e78463          	beq	a5,a4,80027344 <__memset+0x1dc>
    800271c0:	00b501a3          	sb	a1,3(a0)
    800271c4:	00400713          	li	a4,4
    800271c8:	1ae78263          	beq	a5,a4,8002736c <__memset+0x204>
    800271cc:	00b50223          	sb	a1,4(a0)
    800271d0:	00500713          	li	a4,5
    800271d4:	1ae78063          	beq	a5,a4,80027374 <__memset+0x20c>
    800271d8:	00b502a3          	sb	a1,5(a0)
    800271dc:	00700713          	li	a4,7
    800271e0:	18e79e63          	bne	a5,a4,8002737c <__memset+0x214>
    800271e4:	00b50323          	sb	a1,6(a0)
    800271e8:	00700e93          	li	t4,7
    800271ec:	00859713          	slli	a4,a1,0x8
    800271f0:	00e5e733          	or	a4,a1,a4
    800271f4:	01059e13          	slli	t3,a1,0x10
    800271f8:	01c76e33          	or	t3,a4,t3
    800271fc:	01859313          	slli	t1,a1,0x18
    80027200:	006e6333          	or	t1,t3,t1
    80027204:	02059893          	slli	a7,a1,0x20
    80027208:	40f60e3b          	subw	t3,a2,a5
    8002720c:	011368b3          	or	a7,t1,a7
    80027210:	02859813          	slli	a6,a1,0x28
    80027214:	0108e833          	or	a6,a7,a6
    80027218:	03059693          	slli	a3,a1,0x30
    8002721c:	003e589b          	srliw	a7,t3,0x3
    80027220:	00d866b3          	or	a3,a6,a3
    80027224:	03859713          	slli	a4,a1,0x38
    80027228:	00389813          	slli	a6,a7,0x3
    8002722c:	00f507b3          	add	a5,a0,a5
    80027230:	00e6e733          	or	a4,a3,a4
    80027234:	000e089b          	sext.w	a7,t3
    80027238:	00f806b3          	add	a3,a6,a5
    8002723c:	00e7b023          	sd	a4,0(a5)
    80027240:	00878793          	addi	a5,a5,8
    80027244:	fed79ce3          	bne	a5,a3,8002723c <__memset+0xd4>
    80027248:	ff8e7793          	andi	a5,t3,-8
    8002724c:	0007871b          	sext.w	a4,a5
    80027250:	01d787bb          	addw	a5,a5,t4
    80027254:	0ce88e63          	beq	a7,a4,80027330 <__memset+0x1c8>
    80027258:	00f50733          	add	a4,a0,a5
    8002725c:	00b70023          	sb	a1,0(a4)
    80027260:	0017871b          	addiw	a4,a5,1
    80027264:	0cc77663          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    80027268:	00e50733          	add	a4,a0,a4
    8002726c:	00b70023          	sb	a1,0(a4)
    80027270:	0027871b          	addiw	a4,a5,2
    80027274:	0ac77e63          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    80027278:	00e50733          	add	a4,a0,a4
    8002727c:	00b70023          	sb	a1,0(a4)
    80027280:	0037871b          	addiw	a4,a5,3
    80027284:	0ac77663          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    80027288:	00e50733          	add	a4,a0,a4
    8002728c:	00b70023          	sb	a1,0(a4)
    80027290:	0047871b          	addiw	a4,a5,4
    80027294:	08c77e63          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    80027298:	00e50733          	add	a4,a0,a4
    8002729c:	00b70023          	sb	a1,0(a4)
    800272a0:	0057871b          	addiw	a4,a5,5
    800272a4:	08c77663          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    800272a8:	00e50733          	add	a4,a0,a4
    800272ac:	00b70023          	sb	a1,0(a4)
    800272b0:	0067871b          	addiw	a4,a5,6
    800272b4:	06c77e63          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    800272b8:	00e50733          	add	a4,a0,a4
    800272bc:	00b70023          	sb	a1,0(a4)
    800272c0:	0077871b          	addiw	a4,a5,7
    800272c4:	06c77663          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    800272c8:	00e50733          	add	a4,a0,a4
    800272cc:	00b70023          	sb	a1,0(a4)
    800272d0:	0087871b          	addiw	a4,a5,8
    800272d4:	04c77e63          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    800272d8:	00e50733          	add	a4,a0,a4
    800272dc:	00b70023          	sb	a1,0(a4)
    800272e0:	0097871b          	addiw	a4,a5,9
    800272e4:	04c77663          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    800272e8:	00e50733          	add	a4,a0,a4
    800272ec:	00b70023          	sb	a1,0(a4)
    800272f0:	00a7871b          	addiw	a4,a5,10
    800272f4:	02c77e63          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    800272f8:	00e50733          	add	a4,a0,a4
    800272fc:	00b70023          	sb	a1,0(a4)
    80027300:	00b7871b          	addiw	a4,a5,11
    80027304:	02c77663          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    80027308:	00e50733          	add	a4,a0,a4
    8002730c:	00b70023          	sb	a1,0(a4)
    80027310:	00c7871b          	addiw	a4,a5,12
    80027314:	00c77e63          	bgeu	a4,a2,80027330 <__memset+0x1c8>
    80027318:	00e50733          	add	a4,a0,a4
    8002731c:	00b70023          	sb	a1,0(a4)
    80027320:	00d7879b          	addiw	a5,a5,13
    80027324:	00c7f663          	bgeu	a5,a2,80027330 <__memset+0x1c8>
    80027328:	00f507b3          	add	a5,a0,a5
    8002732c:	00b78023          	sb	a1,0(a5)
    80027330:	00813403          	ld	s0,8(sp)
    80027334:	01010113          	addi	sp,sp,16
    80027338:	00008067          	ret
    8002733c:	00b00693          	li	a3,11
    80027340:	e55ff06f          	j	80027194 <__memset+0x2c>
    80027344:	00300e93          	li	t4,3
    80027348:	ea5ff06f          	j	800271ec <__memset+0x84>
    8002734c:	00100e93          	li	t4,1
    80027350:	e9dff06f          	j	800271ec <__memset+0x84>
    80027354:	00000e93          	li	t4,0
    80027358:	e95ff06f          	j	800271ec <__memset+0x84>
    8002735c:	00000793          	li	a5,0
    80027360:	ef9ff06f          	j	80027258 <__memset+0xf0>
    80027364:	00200e93          	li	t4,2
    80027368:	e85ff06f          	j	800271ec <__memset+0x84>
    8002736c:	00400e93          	li	t4,4
    80027370:	e7dff06f          	j	800271ec <__memset+0x84>
    80027374:	00500e93          	li	t4,5
    80027378:	e75ff06f          	j	800271ec <__memset+0x84>
    8002737c:	00600e93          	li	t4,6
    80027380:	e6dff06f          	j	800271ec <__memset+0x84>

0000000080027384 <__memmove>:
    80027384:	ff010113          	addi	sp,sp,-16
    80027388:	00813423          	sd	s0,8(sp)
    8002738c:	01010413          	addi	s0,sp,16
    80027390:	0e060863          	beqz	a2,80027480 <__memmove+0xfc>
    80027394:	fff6069b          	addiw	a3,a2,-1
    80027398:	0006881b          	sext.w	a6,a3
    8002739c:	0ea5e863          	bltu	a1,a0,8002748c <__memmove+0x108>
    800273a0:	00758713          	addi	a4,a1,7
    800273a4:	00a5e7b3          	or	a5,a1,a0
    800273a8:	40a70733          	sub	a4,a4,a0
    800273ac:	0077f793          	andi	a5,a5,7
    800273b0:	00f73713          	sltiu	a4,a4,15
    800273b4:	00174713          	xori	a4,a4,1
    800273b8:	0017b793          	seqz	a5,a5
    800273bc:	00e7f7b3          	and	a5,a5,a4
    800273c0:	10078863          	beqz	a5,800274d0 <__memmove+0x14c>
    800273c4:	00900793          	li	a5,9
    800273c8:	1107f463          	bgeu	a5,a6,800274d0 <__memmove+0x14c>
    800273cc:	0036581b          	srliw	a6,a2,0x3
    800273d0:	fff8081b          	addiw	a6,a6,-1
    800273d4:	02081813          	slli	a6,a6,0x20
    800273d8:	01d85893          	srli	a7,a6,0x1d
    800273dc:	00858813          	addi	a6,a1,8
    800273e0:	00058793          	mv	a5,a1
    800273e4:	00050713          	mv	a4,a0
    800273e8:	01088833          	add	a6,a7,a6
    800273ec:	0007b883          	ld	a7,0(a5)
    800273f0:	00878793          	addi	a5,a5,8
    800273f4:	00870713          	addi	a4,a4,8
    800273f8:	ff173c23          	sd	a7,-8(a4)
    800273fc:	ff0798e3          	bne	a5,a6,800273ec <__memmove+0x68>
    80027400:	ff867713          	andi	a4,a2,-8
    80027404:	02071793          	slli	a5,a4,0x20
    80027408:	0207d793          	srli	a5,a5,0x20
    8002740c:	00f585b3          	add	a1,a1,a5
    80027410:	40e686bb          	subw	a3,a3,a4
    80027414:	00f507b3          	add	a5,a0,a5
    80027418:	06e60463          	beq	a2,a4,80027480 <__memmove+0xfc>
    8002741c:	0005c703          	lbu	a4,0(a1)
    80027420:	00e78023          	sb	a4,0(a5)
    80027424:	04068e63          	beqz	a3,80027480 <__memmove+0xfc>
    80027428:	0015c603          	lbu	a2,1(a1)
    8002742c:	00100713          	li	a4,1
    80027430:	00c780a3          	sb	a2,1(a5)
    80027434:	04e68663          	beq	a3,a4,80027480 <__memmove+0xfc>
    80027438:	0025c603          	lbu	a2,2(a1)
    8002743c:	00200713          	li	a4,2
    80027440:	00c78123          	sb	a2,2(a5)
    80027444:	02e68e63          	beq	a3,a4,80027480 <__memmove+0xfc>
    80027448:	0035c603          	lbu	a2,3(a1)
    8002744c:	00300713          	li	a4,3
    80027450:	00c781a3          	sb	a2,3(a5)
    80027454:	02e68663          	beq	a3,a4,80027480 <__memmove+0xfc>
    80027458:	0045c603          	lbu	a2,4(a1)
    8002745c:	00400713          	li	a4,4
    80027460:	00c78223          	sb	a2,4(a5)
    80027464:	00e68e63          	beq	a3,a4,80027480 <__memmove+0xfc>
    80027468:	0055c603          	lbu	a2,5(a1)
    8002746c:	00500713          	li	a4,5
    80027470:	00c782a3          	sb	a2,5(a5)
    80027474:	00e68663          	beq	a3,a4,80027480 <__memmove+0xfc>
    80027478:	0065c703          	lbu	a4,6(a1)
    8002747c:	00e78323          	sb	a4,6(a5)
    80027480:	00813403          	ld	s0,8(sp)
    80027484:	01010113          	addi	sp,sp,16
    80027488:	00008067          	ret
    8002748c:	02061713          	slli	a4,a2,0x20
    80027490:	02075713          	srli	a4,a4,0x20
    80027494:	00e587b3          	add	a5,a1,a4
    80027498:	f0f574e3          	bgeu	a0,a5,800273a0 <__memmove+0x1c>
    8002749c:	02069613          	slli	a2,a3,0x20
    800274a0:	02065613          	srli	a2,a2,0x20
    800274a4:	fff64613          	not	a2,a2
    800274a8:	00e50733          	add	a4,a0,a4
    800274ac:	00c78633          	add	a2,a5,a2
    800274b0:	fff7c683          	lbu	a3,-1(a5)
    800274b4:	fff78793          	addi	a5,a5,-1
    800274b8:	fff70713          	addi	a4,a4,-1
    800274bc:	00d70023          	sb	a3,0(a4)
    800274c0:	fec798e3          	bne	a5,a2,800274b0 <__memmove+0x12c>
    800274c4:	00813403          	ld	s0,8(sp)
    800274c8:	01010113          	addi	sp,sp,16
    800274cc:	00008067          	ret
    800274d0:	02069713          	slli	a4,a3,0x20
    800274d4:	02075713          	srli	a4,a4,0x20
    800274d8:	00170713          	addi	a4,a4,1
    800274dc:	00e50733          	add	a4,a0,a4
    800274e0:	00050793          	mv	a5,a0
    800274e4:	0005c683          	lbu	a3,0(a1)
    800274e8:	00178793          	addi	a5,a5,1
    800274ec:	00158593          	addi	a1,a1,1
    800274f0:	fed78fa3          	sb	a3,-1(a5)
    800274f4:	fee798e3          	bne	a5,a4,800274e4 <__memmove+0x160>
    800274f8:	f89ff06f          	j	80027480 <__memmove+0xfc>
	...
