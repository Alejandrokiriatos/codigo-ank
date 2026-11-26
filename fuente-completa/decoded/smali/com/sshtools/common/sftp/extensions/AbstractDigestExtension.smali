.class public abstract Lcom/sshtools/common/sftp/extensions/AbstractDigestExtension;
.super Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;
.source "AbstractDigestExtension.java"


# static fields
.field static final ALGOS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/AbstractDigestExtension;->ALGOS:Ljava/util/Map;

    .line 48
    const-string v1, "md5"

    const-string v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "sha1"

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "sha256"

    const-string v2, "SHA-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "sha384"

    const-string v2, "SHA-384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "sha512"

    const-string v2, "SHA-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected doHash(Ljava/lang/String;Ljava/lang/String;JJLcom/sshtools/common/sftp/SftpSubsystem;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/InvalidHandleException;
        }
    .end annotation

    .line 61
    invoke-virtual/range {p7 .. p7}, Lcom/sshtools/common/sftp/SftpSubsystem;->getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v1

    .line 62
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFile(Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;Ljava/util/Optional;Lcom/sshtools/common/sftp/SftpFileAttributes;)[B

    move-result-object v6

    move-object v4, p0

    move-object v5, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    .line 64
    :try_start_0
    invoke-virtual/range {v4 .. v11}, Lcom/sshtools/common/sftp/extensions/AbstractDigestExtension;->doHash(Ljava/lang/String;[BJJLcom/sshtools/common/sftp/SftpSubsystem;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v1, v6}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V

    .line 67
    invoke-virtual {v1, v6}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 66
    invoke-virtual {v1, v6}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V

    .line 67
    invoke-virtual {v1, v6}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 68
    throw p1
.end method

.method protected doHash(Ljava/lang/String;[BJJLcom/sshtools/common/sftp/SftpSubsystem;)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/EOFException;,
            Lcom/sshtools/common/sftp/InvalidHandleException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const v0, 0x8000

    .line 74
    new-array v4, v0, [B

    .line 75
    invoke-virtual/range {p7 .. p7}, Lcom/sshtools/common/sftp/SftpSubsystem;->getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v2

    sget-object v3, Lcom/sshtools/common/sftp/extensions/AbstractDigestExtension;->ALGOS:Ljava/util/Map;

    move-object/from16 v5, p1

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/sshtools/common/ssh/components/Digest;

    const-wide/16 v8, 0x0

    move-wide/from16 v10, p3

    move-wide v12, v8

    .line 81
    :cond_0
    new-instance v3, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v3, v10, v11}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    cmp-long v14, p5, v8

    if-nez v14, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    sub-long v5, p5, v12

    long-to-int v2, v5

    .line 84
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v6, v2

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v2, p2

    .line 81
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/sftp/AbstractFileSystem;->readFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v2, 0x0

    .line 86
    invoke-interface {v7, v4, v2, v3}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([BII)V

    int-to-long v5, v3

    add-long/2addr v12, v5

    add-long/2addr v10, v5

    goto :goto_1

    :cond_2
    cmp-long v2, v12, v8

    if-eqz v2, :cond_4

    :goto_1
    const/4 v2, -0x1

    if-le v3, v2, :cond_3

    if-eqz v14, :cond_0

    cmp-long v2, v12, p5

    if-ltz v2, :cond_0

    .line 95
    :cond_3
    invoke-interface {v7}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object v0

    return-object v0

    .line 91
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public processExtendedMessage(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 0

    return-void
.end method

.method public supportsExtendedMessage(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
