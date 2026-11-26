.class Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/InputAEADDecryptor;


# instance fields
.field private final contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final dataCipher:Ljavax/crypto/Cipher;

.field private inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor;->contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor;->dataCipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method private static checkForAEAD()Z
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor$1;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAADStream()Ljava/io/OutputStream;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor;->checkForAEAD()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceAADStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor;->dataCipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/JceAADStream;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor;->contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor;->inputStream:Ljava/io/InputStream;

    new-instance v0, Lorg/bouncycastle/jcajce/io/CipherInputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor;->dataCipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/io/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public getMAC()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor;->inputStream:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/cms/InputStreamWithMAC;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/cms/InputStreamWithMAC;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/InputStreamWithMAC;->getMAC()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
