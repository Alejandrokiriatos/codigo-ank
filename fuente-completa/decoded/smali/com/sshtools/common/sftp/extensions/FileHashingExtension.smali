.class public abstract Lcom/sshtools/common/sftp/extensions/FileHashingExtension;
.super Lcom/sshtools/common/sftp/extensions/AbstractDigestExtension;
.source "FileHashingExtension.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/sshtools/common/sftp/extensions/AbstractDigestExtension;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private selectAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 103
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 105
    sget-object v3, Lcom/sshtools/common/sftp/extensions/FileHashingExtension;->ALGOS:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    invoke-static {v3}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected abstract getFileHandle(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/sftp/SftpSubsystem;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public processMessage(Lcom/sshtools/common/util/ByteArrayReader;ILcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 9

    .line 49
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/sshtools/common/sftp/extensions/FileHashingExtension;->getFileHandle(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/sftp/SftpSubsystem;)[B

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v4

    .line 52
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v6

    .line 53
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int p1, v1

    .line 55
    invoke-direct {p0, v0}, Lcom/sshtools/common/sftp/extensions/FileHashingExtension;->selectAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    move-object v1, p0

    move-object v8, p3

    .line 58
    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lcom/sshtools/common/sftp/extensions/FileHashingExtension;->doHash(Ljava/lang/String;[BJJLcom/sshtools/common/sftp/SftpSubsystem;)[B

    move-result-object p1

    .line 59
    filled-new-array {p1}, [[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, v2, p1, v8}, Lcom/sshtools/common/sftp/extensions/FileHashingExtension;->sendReply(ILjava/lang/String;Ljava/util/List;Lcom/sshtools/common/sftp/SftpSubsystem;)V

    return-void

    :cond_0
    move-object v1, p0

    move-object v8, p3

    .line 61
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    int-to-long v6, p1

    .line 64
    :try_start_2
    invoke-virtual/range {v1 .. v8}, Lcom/sshtools/common/sftp/extensions/FileHashingExtension;->doHash(Ljava/lang/String;[BJJLcom/sshtools/common/sftp/SftpSubsystem;)[B

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-long/2addr v4, v6

    goto :goto_0

    .line 70
    :catch_0
    :try_start_3
    invoke-virtual {p0, p2, v2, p3, v8}, Lcom/sshtools/common/sftp/extensions/FileHashingExtension;->sendReply(ILjava/lang/String;Ljava/util/List;Lcom/sshtools/common/sftp/SftpSubsystem;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, p0

    move-object v8, p3

    :goto_1
    move-object p1, v0

    const/4 p3, 0x0

    .line 74
    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "Failed to process EXT_MD5_HASH_HANDLE"

    invoke-static {v0, p1, p3}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p3, 0x4

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p2, p3, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    return-void
.end method

.method protected sendReply(ILjava/lang/String;Ljava/util/List;Lcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/sshtools/common/sftp/SftpSubsystem;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/sshtools/common/ssh/Packet;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/Packet;-><init>()V

    const/16 v1, 0xc9

    .line 87
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 88
    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 89
    invoke-virtual {v0, p2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 90
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 91
    invoke-virtual {v0, p2}, Lcom/sshtools/common/ssh/Packet;->write([B)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p4, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/Packet;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/Packet;->close()V

    .line 98
    throw p1
.end method
