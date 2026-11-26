.class public Lcom/sshtools/common/publickey/StringCertificateExtension;
.super Lcom/sshtools/common/publickey/CertificateExtension;
.source "StringCertificateExtension.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sshtools/common/publickey/CertificateExtension;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/StringCertificateExtension;->setName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p3}, Lcom/sshtools/common/publickey/StringCertificateExtension;->setKnown(Z)V

    .line 35
    :try_start_0
    new-instance p1, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {p1}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sshtools/common/publickey/StringCertificateExtension;->setStoredValue([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p2

    .line 35
    :try_start_3
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method constructor <init>(Ljava/lang/String;[BZ)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/sshtools/common/publickey/CertificateExtension;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/StringCertificateExtension;->setName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/sshtools/common/publickey/StringCertificateExtension;->setStoredValue([B)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 3

    .line 50
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-virtual {p0}, Lcom/sshtools/common/publickey/StringCertificateExtension;->getStoredValue()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 50
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
