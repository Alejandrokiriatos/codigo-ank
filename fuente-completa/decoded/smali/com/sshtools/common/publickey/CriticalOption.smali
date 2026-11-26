.class public Lcom/sshtools/common/publickey/CriticalOption;
.super Lcom/sshtools/common/publickey/EncodedExtension;
.source "CriticalOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/publickey/CriticalOption$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_COMMAND:Ljava/lang/String; = "force-command"

.field public static final SOURCE_ADDRESS:Ljava/lang/String; = "source-address"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sshtools/common/publickey/EncodedExtension;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/CriticalOption;->setName(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p3}, Lcom/sshtools/common/publickey/CriticalOption;->setKnown(Z)V

    .line 47
    :try_start_0
    new-instance p1, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {p1}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sshtools/common/publickey/CriticalOption;->setStoredValue([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p2

    .line 47
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

    .line 51
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;[BZ)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/sshtools/common/publickey/EncodedExtension;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/CriticalOption;->setName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p3}, Lcom/sshtools/common/publickey/CriticalOption;->setKnown(Z)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/sshtools/common/publickey/CriticalOption;->setStoredValue([B)V

    return-void
.end method

.method public static createKnownOption(Ljava/lang/String;[B)Lcom/sshtools/common/publickey/CriticalOption;
    .locals 2

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "source-address"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "force-command"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/sshtools/common/publickey/CriticalOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sshtools/common/publickey/CriticalOption;-><init>(Ljava/lang/String;[BZ)V

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lcom/sshtools/common/publickey/CriticalOption;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sshtools/common/publickey/CriticalOption;-><init>(Ljava/lang/String;[BZ)V

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 3

    .line 58
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-virtual {p0}, Lcom/sshtools/common/publickey/CriticalOption;->getStoredValue()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 58
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

    .line 62
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
