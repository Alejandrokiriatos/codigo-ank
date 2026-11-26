.class Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;
.super Ljava/lang/Object;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    return-void
.end method

.method static base2B([BII)[I
    .locals 8

    new-array v0, p2, [I

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, p2, :cond_1

    :goto_1
    if-ge v4, p1, :cond_0

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x8

    goto :goto_1

    :cond_0
    sub-int/2addr v4, p1

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public pkFromSig([Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x2

    new-array v4, v3, [[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    new-array v5, v5, [[B

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    move-object/from16 v8, p2

    invoke-static {v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->base2B([BII)[I

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    if-ge v8, v9, :cond_2

    aget v9, v6, v8

    aget-object v10, p1, v8

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;->getSK()[B

    move-result-object v10

    invoke-virtual {v2, v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    shl-int v11, v8, v11

    add-int/2addr v11, v9

    invoke-virtual {v2, v11}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    invoke-virtual {v11, v1, v2, v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->F([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B)[B

    move-result-object v10

    aput-object v10, v4, v7

    aget-object v10, p1, v8

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;->getAuthPath()[[B

    move-result-object v10

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    shl-int v11, v8, v11

    add-int/2addr v11, v9

    invoke-virtual {v2, v11}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    move v11, v7

    :goto_1
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v12, v12, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    if-ge v11, v12, :cond_1

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v2, v12}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    const/4 v13, 0x1

    shl-int v14, v13, v11

    and-int/2addr v14, v9

    if-nez v14, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->getTreeIndex()I

    move-result v14

    div-int/2addr v14, v3

    invoke-virtual {v2, v14}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    aget-object v15, v4, v7

    aget-object v11, v10, v11

    invoke-virtual {v14, v1, v2, v15, v11}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->H([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B[B)[B

    move-result-object v11

    aput-object v11, v4, v13

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->getTreeIndex()I

    move-result v14

    sub-int/2addr v14, v13

    div-int/2addr v14, v3

    invoke-virtual {v2, v14}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    aget-object v11, v10, v11

    aget-object v15, v4, v7

    invoke-virtual {v14, v1, v2, v11, v15}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->H([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B[B)[B

    move-result-object v11

    aput-object v11, v4, v13

    :goto_2
    aget-object v11, v4, v13

    aput-object v11, v4, v7

    move v11, v12

    goto :goto_1

    :cond_1
    aget-object v9, v4, v7

    aput-object v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTypeAndClear(I)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->getKeyPairAddress()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setKeyPairAddress(I)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->T_l([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B)[B

    move-result-object v1

    return-object v1
.end method

.method public sign([B[B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;
    .locals 14

    new-instance v5, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;

    move-object/from16 v6, p4

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->base2B([BII)[I

    move-result-object v7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    new-array v8, v0, [Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    if-ge v10, v0, :cond_1

    aget v11, v7, v10

    const/4 v0, 0x6

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTypeAndClear(I)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->getKeyPairAddress()I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    shl-int v0, v10, v0

    add-int/2addr v0, v11

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    invoke-virtual {v0, v4, v1, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object v12

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->changeType(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    new-array v13, v0, [[B

    move v3, v9

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    if-ge v3, v0, :cond_0

    ushr-int v0, v11, v3

    xor-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    shl-int v2, v10, v2

    shl-int/2addr v0, v3

    add-int/2addr v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->treehash([BII[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object v2

    aput-object v2, v13, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;

    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;-><init>([B[[B)V

    aput-object v0, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method treehash([BII[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B
    .locals 10

    ushr-int v0, p2, p3

    shl-int/2addr v0, p3

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;

    invoke-direct {v1, p5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    shl-int v5, v4, p3

    if-ge v3, v5, :cond_2

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTypeAndClear(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->getKeyPairAddress()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    add-int v5, p2, v3

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    invoke-virtual {v6, p4, p1, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->changeType(I)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    invoke-virtual {v7, p4, v1, v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->F([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B)[B

    move-result-object v6

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    move v7, v4

    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;->nodeHeight:I

    if-ne v8, v7, :cond_1

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;->nodeValue:[B

    invoke-virtual {v9, p4, v1, v8, v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->H([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B[B)[B

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;

    invoke-direct {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;-><init>([BI)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;->nodeValue:[B

    return-object p1
.end method
