.class public Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/HKDF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HKDFBase"
.end annotation


# instance fields
.field protected algName:Ljava/lang/String;

.field protected hkdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;->algName:Ljava/lang/String;

    new-instance p1, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;->hkdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;->getOutputLength()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;->hkdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/params/HKDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;->getIKM()[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;->getInfo()[B

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([B[B[B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    new-array p1, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;->hkdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;->algName:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid KeySpec: expected HKDFParameterSpec, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
