.class public Lcom/sshtools/common/ssh/components/jce/AbstractDigest;
.super Ljava/lang/Object;
.source "AbstractDigest.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/Digest;


# instance fields
.field digest:Ljava/security/MessageDigest;

.field jceAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->digest:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->digest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBigInteger(Ljava/math/BigInteger;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 56
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->putInt(I)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->putBytes([B)V

    return-void
.end method

.method public putByte(B)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public putBytes([B)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->digest:Ljava/security/MessageDigest;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method public putBytes([BII)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method public putInt(I)V
    .locals 0

    .line 73
    invoke-static {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->encodeInt(I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->putBytes([B)V

    return-void
.end method

.method public putString(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->putInt(I)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->putBytes([B)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method
