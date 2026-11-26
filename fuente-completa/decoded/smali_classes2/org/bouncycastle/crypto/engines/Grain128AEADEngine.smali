.class public Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;
.super Lorg/bouncycastle/crypto/engines/AEADBaseEngine;


# static fields
.field private static final STATE_SIZE:I = 0x4


# instance fields
.field private final authAcc:[I

.field private final authSr:[I

.field private final lfsr:[I

.field private final nfsr:[I

.field private workingIV:[B

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;-><init>()V

    const-string v0, "Grain-128 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->algorithmName:Ljava/lang/String;

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->KEY_SIZE:I

    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->IV_SIZE:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->MAC_SIZE:I

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    sget-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Immediate:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;->Stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;

    sget-object v2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->StreamCipher:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->setInnerMembers(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;)V

    return-void
.end method

.method private absorbAadData([BII)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    move v3, v0

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift()V

    shr-int v4, v2, v3

    and-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->updateInternalState(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getByteKeyStream()I
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift()V

    return v0
.end method

.method private getOutput()I
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    ushr-int/lit8 v4, v3, 0x2

    ushr-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v3, v3, 0xf

    const/4 v6, 0x1

    aget v7, v1, v6

    ushr-int/lit8 v8, v7, 0x4

    ushr-int/lit8 v7, v7, 0xd

    const/4 v9, 0x2

    aget v1, v1, v9

    ushr-int/lit8 v10, v1, 0x9

    ushr-int/lit8 v11, v1, 0x19

    ushr-int/lit8 v12, v1, 0x1f

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v2, v13, v2

    ushr-int/lit8 v14, v2, 0x8

    ushr-int/lit8 v15, v2, 0xd

    ushr-int/lit8 v2, v2, 0x14

    aget v16, v13, v6

    ushr-int/lit8 v17, v16, 0xa

    ushr-int/lit8 v16, v16, 0x1c

    aget v9, v13, v9

    ushr-int/lit8 v13, v9, 0xf

    ushr-int/lit8 v18, v9, 0x1d

    ushr-int/lit8 v9, v9, 0x1e

    and-int/2addr v14, v5

    and-int/2addr v2, v15

    xor-int/2addr v2, v14

    and-int v14, v12, v17

    xor-int/2addr v2, v14

    and-int v13, v16, v13

    xor-int/2addr v2, v13

    and-int/2addr v5, v12

    and-int/2addr v5, v9

    xor-int/2addr v2, v5

    xor-int v2, v2, v18

    xor-int/2addr v2, v4

    xor-int/2addr v2, v3

    xor-int/2addr v2, v8

    xor-int/2addr v2, v7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v10

    xor-int/2addr v1, v11

    and-int/2addr v1, v6

    return v1
.end method

.method private getOutputLFSR()I
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    ushr-int/lit8 v2, v1, 0x7

    const/4 v3, 0x1

    aget v4, v0, v3

    ushr-int/lit8 v4, v4, 0x6

    const/4 v5, 0x2

    aget v5, v0, v5

    ushr-int/lit8 v6, v5, 0x6

    ushr-int/lit8 v5, v5, 0x11

    const/4 v7, 0x3

    aget v0, v0, v7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v4

    xor-int/2addr v1, v6

    xor-int/2addr v1, v5

    xor-int/2addr v0, v1

    and-int/2addr v0, v3

    return v0
.end method

.method private getOutputNFSR()I
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    ushr-int/lit8 v3, v2, 0xb

    ushr-int/lit8 v4, v2, 0xd

    ushr-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0x12

    ushr-int/lit8 v7, v2, 0x16

    ushr-int/lit8 v8, v2, 0x18

    ushr-int/lit8 v9, v2, 0x19

    ushr-int/lit8 v10, v2, 0x1a

    const/4 v11, 0x1

    aget v12, v1, v11

    ushr-int/lit8 v13, v12, 0x8

    ushr-int/lit8 v14, v12, 0x10

    ushr-int/lit8 v15, v12, 0x18

    ushr-int/lit8 v16, v12, 0x1d

    const/16 v17, 0x2

    aget v17, v1, v17

    ushr-int/lit8 v18, v17, 0x1

    ushr-int/lit8 v19, v17, 0x4

    ushr-int/lit8 v20, v17, 0x6

    ushr-int/lit8 v21, v17, 0xe

    ushr-int/lit8 v22, v17, 0x12

    ushr-int/lit8 v23, v17, 0x14

    ushr-int/lit8 v24, v17, 0x18

    ushr-int/lit8 v25, v17, 0x1b

    ushr-int/lit8 v26, v17, 0x1c

    ushr-int/lit8 v27, v17, 0x1d

    ushr-int/lit8 v28, v17, 0x1f

    const/16 v29, 0x3

    aget v1, v1, v29

    xor-int/2addr v10, v2

    xor-int/2addr v10, v15

    xor-int v10, v10, v25

    xor-int/2addr v1, v10

    and-int v10, v2, v17

    ushr-int/lit8 v10, v10, 0x3

    xor-int/2addr v1, v10

    and-int/2addr v3, v4

    xor-int/2addr v1, v3

    and-int v3, v5, v6

    xor-int/2addr v1, v3

    and-int/2addr v2, v12

    ushr-int/lit8 v2, v2, 0x1b

    xor-int/2addr v1, v2

    and-int v2, v13, v14

    xor-int/2addr v1, v2

    and-int v2, v16, v18

    xor-int/2addr v1, v2

    and-int v2, v19, v23

    xor-int/2addr v1, v2

    and-int v2, v7, v8

    and-int/2addr v2, v9

    xor-int/2addr v1, v2

    and-int v2, v20, v21

    and-int v2, v2, v22

    xor-int/2addr v1, v2

    and-int v2, v24, v26

    and-int v2, v2, v27

    and-int v2, v2, v28

    xor-int/2addr v1, v2

    and-int/2addr v1, v11

    return v1
.end method

.method private initGrain([I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    aget v3, p1, v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getByteKeyStream()I

    move-result v4

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    aput v3, p1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private shift()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    xor-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)V

    return-void
.end method

.method private shift([II)V
    .locals 6

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    aget v3, p1, v2

    shl-int/lit8 v4, v3, 0x1f

    or-int/2addr v1, v4

    aput v1, p1, v0

    ushr-int/lit8 v0, v3, 0x1

    const/4 v1, 0x2

    aget v3, p1, v1

    shl-int/lit8 v4, v3, 0x1f

    or-int/2addr v0, v4

    aput v0, p1, v2

    ushr-int/lit8 v0, v3, 0x1

    const/4 v3, 0x3

    aget v4, p1, v3

    shl-int/lit8 v5, v4, 0x1f

    or-int/2addr v0, v5

    aput v0, p1, v1

    ushr-int/lit8 v0, v4, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v0

    aput p2, p1, v3

    return-void
.end method

.method private updateInternalState(I)V
    .locals 6

    neg-int p1, p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v4, v3, v1

    and-int/2addr v4, p1

    xor-int/2addr v2, v4

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v4, v0, v2

    aget v3, v3, v2

    and-int/2addr p1, v3

    xor-int/2addr p1, v4

    aput p1, v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getByteKeyStream()I

    move-result p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v3, v0, v1

    ushr-int/2addr v3, v2

    aget v4, v0, v2

    shl-int/lit8 v5, v4, 0x1f

    or-int/2addr v3, v5

    aput v3, v0, v1

    ushr-int/lit8 v1, v4, 0x1

    shl-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v1

    aput p1, v0, v2

    return-void
.end method


# virtual methods
.method public bridge synthetic doFinal([BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method protected finishAAD(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->finishAAD1(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V

    return-void
.end method

.method public bridge synthetic getAlgorithmName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIVBytesSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getIVBytesSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getKeyBytesSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getKeyBytesSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMac()[B
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getMac()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputSize(I)I
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getOutputSize(I)I

    move-result p1

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getTotalBytesForUpdate(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected init([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    const/4 p1, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->IV_SIZE:I

    invoke-static {p2, p1, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    const/16 p2, 0xc

    const/4 v0, -0x1

    aput-byte v0, p1, p2

    const/16 p2, 0xd

    aput-byte v0, p1, p2

    const/16 p2, 0xe

    aput-byte v0, p1, p2

    const/16 p2, 0xf

    const/16 v0, 0x7f

    aput-byte v0, p1, p2

    return-void
.end method

.method public bridge synthetic processAADByte(B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processAADByte(B)V

    return-void
.end method

.method public bridge synthetic processAADBytes([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processAADBytes([BII)V

    return-void
.end method

.method protected processBufferAAD([BI)V
    .locals 0

    return-void
.end method

.method protected processBufferDecrypt([BI[BI)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    add-int v3, p2, v2

    aget-byte v3, p1, v3

    move v4, v1

    move v5, v4

    :goto_1
    const/16 v6, 0x8

    if-ge v4, v6, :cond_0

    shr-int v6, v3, v4

    and-int/lit8 v6, v6, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getByteKeyStream()I

    move-result v7

    xor-int/2addr v6, v7

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    shr-int v6, v5, v4

    and-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->updateInternalState(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int v3, p4, v2

    aput-byte v5, p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected processBufferEncrypt([BI[BI)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    add-int v3, p2, v2

    aget-byte v3, p1, v3

    move v4, v1

    move v5, v4

    :goto_1
    const/16 v6, 0x8

    if-ge v4, v6, :cond_0

    shr-int v6, v3, v4

    and-int/lit8 v6, v6, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getByteKeyStream()I

    move-result v7

    xor-int/2addr v7, v6

    shl-int/2addr v7, v4

    or-int/2addr v5, v7

    int-to-byte v5, v5

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->updateInternalState(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int v3, p4, v2

    aput-byte v5, p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic processByte(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processByte(B[BI)I

    move-result p1

    return p1
.end method

.method public bridge synthetic processBytes([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method protected processFinalAAD()V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;->getLen()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    check-cast v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamAADOperator;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamAADOperator;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x5

    new-array v3, v2, [B

    const/16 v4, 0x80

    if-ge v0, v4, :cond_0

    int-to-byte v2, v0

    const/4 v4, 0x4

    aput-byte v2, v3, v4

    goto :goto_1

    :cond_0
    move v6, v0

    move v5, v2

    :goto_0
    add-int/lit8 v7, v5, -0x1

    int-to-byte v8, v6

    aput-byte v8, v3, v7

    ushr-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    sub-int/2addr v2, v7

    add-int/lit8 v5, v5, -0x2

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    move v4, v5

    :goto_1
    rsub-int/lit8 v2, v4, 0x5

    invoke-direct {p0, v3, v4, v2}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->absorbAadData([BII)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->absorbAadData([BII)V

    return-void

    :cond_1
    move v5, v7

    goto :goto_0
.end method

.method protected processFinalBlock([BI)V
    .locals 3

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    const/4 p2, 0x0

    aget v0, p1, p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v2, v1, p2

    xor-int/2addr v0, v2

    aput v0, p1, p2

    const/4 v0, 0x1

    aget v2, p1, v0

    aget v1, v1, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->mac:[B

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset()V

    return-void
.end method

.method protected reset(Z)V
    .locals 7

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset(Z)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clear([I)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clear([I)V

    move p1, v1

    :goto_0
    const/16 v0, 0x140

    if-ge p1, v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v4, v4, v1

    xor-int/2addr v3, v4

    xor-int/2addr v3, v0

    and-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v3

    xor-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_1
    const/16 v0, 0x8

    if-ge p1, v0, :cond_2

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v6, v6, v1

    xor-int/2addr v5, v6

    xor-int/2addr v5, v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    aget-byte v6, v6, p1

    shr-int/2addr v6, v2

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v5

    xor-int/2addr v3, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    add-int/lit8 v6, p1, 0x8

    aget-byte v5, v5, v6

    shr-int/2addr v5, v2

    xor-int/2addr v3, v5

    and-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->initGrain([I)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->initGrain([I)V

    return-void
.end method
