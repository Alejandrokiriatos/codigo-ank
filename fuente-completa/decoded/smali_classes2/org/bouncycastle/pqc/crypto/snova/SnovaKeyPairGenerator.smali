.class public Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field static final privateSeedLength:I = 0x20

.field static final publicSeedLength:I = 0x10

.field private static final seedLength:I = 0x30


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;

.field private initialized:Z

.field private params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 13

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->initialized:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x30

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getPublicKeyLength()I

    move-result v2

    new-array v4, v2, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getPrivateKeyLength()I

    move-result v2

    new-array v9, v2, [B

    const/4 v10, 0x0

    const/16 v3, 0x10

    invoke-static {v1, v10, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    new-instance v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-direct {v12, v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V

    array-length v5, v11

    invoke-static {v11, v10, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->engine:Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;

    invoke-virtual {v5, v12, v11, v3}, Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;->genMap1T12Map2(Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;[B[B)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->engine:Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;

    array-length v5, v11

    iget-object v6, v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->T12:[[[B

    iget-object v7, v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p21:[[[[B

    iget-object v8, v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f12:[[[[B

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;->genP22([BI[[[B[[[[B[[[[B)V

    array-length v3, v11

    invoke-static {v11, v10, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->isSkIsSeed()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getO()I

    move-result v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getLsq()I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getV()I

    move-result v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getAlpha()I

    move-result v7

    mul-int/2addr v7, v3

    mul-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x4

    mul-int v8, v6, v3

    mul-int v11, v8, v5

    add-int/2addr v7, v11

    mul-int v11, v8, v6

    mul-int/2addr v8, v3

    add-int/2addr v11, v8

    mul-int/2addr v3, v3

    mul-int/2addr v3, v6

    add-int/2addr v11, v3

    mul-int/2addr v11, v5

    add-int/2addr v7, v11

    new-array v3, v7, [B

    iget-object v5, v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->aAlpha:[[[B

    invoke-static {v5, v3, v10}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy3d([[[B[BI)I

    move-result v5

    iget-object v6, v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->bAlpha:[[[B

    invoke-static {v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy3d([[[B[BI)I

    move-result v5

    iget-object v6, v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha1:[[[B

    invoke-static {v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy3d([[[B[BI)I

    move-result v5

    iget-object v6, v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha2:[[[B

    invoke-static {v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy3d([[[B[BI)I

    move-result v5

    iget-object v6, v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->T12:[[[B

    invoke-static {v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy3d([[[B[BI)I

    move-result v5

    iget-object v6, v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f11:[[[[B

    invoke-static {v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy4d([[[[B[BI)I

    move-result v5

    iget-object v6, v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f12:[[[[B

    invoke-static {v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy4d([[[[B[BI)I

    move-result v5

    iget-object v6, v12, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f21:[[[[B

    invoke-static {v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy4d([[[[B[BI)I

    invoke-static {v3, v7, v9}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->encodeMergeInHalf([BI[B)V

    sub-int/2addr v2, v0

    invoke-static {v1, v10, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v9

    :goto_0
    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;[B)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;[B)V

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SNOVA key pair generator not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->initialized:Z

    new-instance p1, Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyPairGenerator;->engine:Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;

    return-void
.end method
