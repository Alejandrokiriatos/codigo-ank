.class public final Lcom/sshtools/common/sftp/AbstractFileSystem;
.super Ljava/lang/Object;
.source "AbstractFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;
    }
.end annotation


# static fields
.field public static final AUTHORIZED_KEYS_STORE:Ljava/lang/String; = "authorized_keys"

.field public static final BLOCK_ADVISORY:I = 0x200

.field public static final BLOCK_DELETE:I = 0x100

.field public static final BLOCK_READ:I = 0x40

.field public static final BLOCK_WRITE:I = 0x80

.field public static final OPEN_APPEND:I = 0x4

.field public static final OPEN_CREATE:I = 0x8

.field public static final OPEN_EXCLUSIVE:I = 0x20

.field public static final OPEN_READ:I = 0x1

.field public static final OPEN_TEXT:I = 0x40

.field public static final OPEN_TRUNCATE:I = 0x10

.field public static final OPEN_WRITE:I = 0x2

.field public static final SCP:Ljava/lang/String; = "scp"

.field public static final SFTP:Ljava/lang/String; = "sftp"

.field public static final SHELL:Ljava/lang/String; = "shell"

.field static defaultPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final con:Lcom/sshtools/common/ssh/SshConnection;

.field protected fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "*>;"
        }
    .end annotation
.end field

.field multipartUploads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sftp/MultipartTransfer;",
            ">;"
        }
    .end annotation
.end field

.field protected openDirectories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;",
            ">;"
        }
    .end annotation
.end field

.field protected openFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sftp/OpenFile;",
            ">;"
        }
    .end annotation
.end field

.field final protocolInUse:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 109
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "./"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sshtools/common/sftp/AbstractFileSystem;->defaultPaths:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->multipartUploads:Ljava/util/Map;

    .line 117
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->getFileFactory()Lcom/sshtools/common/policy/FileFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sshtools/common/policy/FileFactory;->getFileFactory(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    .line 118
    iput-object p1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 119
    iput-object p2, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->protocolInUse:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 122
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Completed Abstract File System Initialization"

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private copyLength([BLcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;[BLcom/sshtools/common/util/UnsignedInteger64;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Lcom/sshtools/common/sftp/InvalidHandleException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 783
    invoke-virtual {p3}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const v0, 0xfff5

    .line 786
    new-array v7, v0, [B

    .line 790
    :cond_0
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-static {v1, p2}, Lcom/sshtools/common/util/UnsignedInteger64;->add(Lcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;)Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v6

    int-to-long v4, v0

    invoke-virtual {p3}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v9, v4

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/sshtools/common/sftp/AbstractFileSystem;->readFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)I

    move-result v9

    const/4 v1, -0x1

    if-le v9, v1, :cond_1

    .line 792
    new-instance v4, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v4, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    move-object/from16 v10, p5

    invoke-static {v4, v10}, Lcom/sshtools/common/util/UnsignedInteger64;->add(Lcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;)Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p4

    invoke-virtual/range {v4 .. v9}, Lcom/sshtools/common/sftp/AbstractFileSystem;->writeFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)V

    int-to-long v4, v9

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    move-object/from16 v10, p5

    :goto_0
    if-le v9, v1, :cond_2

    .line 795
    invoke-virtual {p3}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_2
    return-void

    .line 784
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "copyLength requires a positive length value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private copyUntilEOF([BLcom/sshtools/common/util/UnsignedInteger64;[BLcom/sshtools/common/util/UnsignedInteger64;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/InvalidHandleException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const v5, 0xfff5

    .line 768
    new-array v3, v5, [B

    const-wide/16 v0, 0x0

    move-wide v12, v0

    .line 772
    :cond_0
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v0, v12, v13}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    move-object/from16 v14, p2

    invoke-static {v0, v14}, Lcom/sshtools/common/util/UnsignedInteger64;->add(Lcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;)Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->readFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)I

    move-result v11

    const/4 v0, -0x1

    if-le v11, v0, :cond_1

    .line 774
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v1, v12, v13}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    move-object/from16 v2, p4

    invoke-static {v1, v2}, Lcom/sshtools/common/util/UnsignedInteger64;->add(Lcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;)Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v8

    const/4 v10, 0x0

    move-object v6, p0

    move-object/from16 v7, p3

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Lcom/sshtools/common/sftp/AbstractFileSystem;->writeFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)V

    int-to-long v6, v11

    add-long/2addr v12, v6

    goto :goto_0

    :cond_1
    move-object/from16 v2, p4

    :goto_0
    if-gt v11, v0, :cond_0

    return-void
.end method

.method private createHandle()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshIOException;
        }
    .end annotation

    .line 264
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeFile(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/InvalidHandleException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;

    if-eqz v0, :cond_0

    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sftp/OpenFile;

    if-eqz v0, :cond_1

    .line 472
    invoke-interface {v0}, Lcom/sshtools/common/sftp/OpenFile;->close()V

    return-void

    .line 469
    :cond_1
    new-instance v0, Lcom/sshtools/common/sftp/InvalidHandleException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is an invalid handle"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeFile([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/InvalidHandleException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile(Ljava/lang/String;)V

    return-void
.end method

.method public closeFilesystem()V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 152
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    const-string v3, "Error closing file"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 156
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 163
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    const-string v3, "Error closing directory"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 167
    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public copyData([BLcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;[BLcom/sshtools/common/util/UnsignedInteger64;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/sftp/InvalidHandleException;
        }
    .end annotation

    .line 759
    invoke-virtual {p3}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 760
    invoke-direct/range {p0 .. p5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->copyLength([BLcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;[BLcom/sshtools/common/util/UnsignedInteger64;)V

    move-object p1, p0

    return-void

    :cond_0
    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 762
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->copyUntilEOF([BLcom/sshtools/common/util/UnsignedInteger64;[BLcom/sshtools/common/util/UnsignedInteger64;)V

    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/FileNotFoundException;,
            Ljava/nio/file/FileAlreadyExistsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {v1, p2}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 549
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 553
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/util/FileUtils;->checkEndsWithSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 557
    :cond_0
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 558
    :cond_1
    new-instance p1, Ljava/nio/file/FileAlreadyExistsException;

    invoke-direct {p1, p2}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 561
    :cond_2
    :goto_0
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isWritable()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 562
    :cond_3
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "User does not have permission to write "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 565
    :cond_4
    :goto_1
    invoke-interface {v1, v0}, Lcom/sshtools/common/files/AbstractFile;->copyFrom(Lcom/sshtools/common/files/AbstractFile;)V

    return-void

    .line 550
    :cond_5
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " does not exist"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/UnsupportedFileOperationException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p2, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sshtools/common/files/AbstractFile;->linkFrom(Ljava/lang/String;)V

    return-void
.end method

.method public createSymbolicLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/UnsupportedFileOperationException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p2, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sshtools/common/files/AbstractFile;->symlinkFrom(Ljava/lang/String;)V

    return-void
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 642
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileExists(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public fileExists(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 649
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result p1

    return p1

    .line 651
    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->existsNoFollowLinks()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public freeHandle([B)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object p1

    .line 450
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getConnection()Lcom/sshtools/common/ssh/SshConnection;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    return-object v0
.end method

.method public getDefaultPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFileFactory;->getDefaultPath()Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileAttributes(Ljava/lang/String;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public getFileAttributes(Ljava/lang/String;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 226
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Getting file attributes for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 230
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1

    .line 232
    :cond_1
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getAttributesNoFollowLinks()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public getFileAttributes([B)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/InvalidHandleException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/OpenFile;

    .line 211
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting file attributes for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1

    .line 216
    :cond_1
    new-instance p1, Lcom/sshtools/common/sftp/InvalidHandleException;

    const-string v0, "The handle is invalid 1"

    invoke-direct {p1, v0}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "*>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    return-object v0
.end method

.method public getFileForHandle([B)Lcom/sshtools/common/files/AbstractFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/InvalidHandleException;
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/OpenFile;

    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    return-object p1

    .line 668
    :cond_0
    new-instance p1, Lcom/sshtools/common/sftp/InvalidHandleException;

    const-string v0, "Invalid handle passed to getFileForHandle"

    invoke-direct {p1, v0}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPathForHandle([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/InvalidHandleException;
        }
    .end annotation

    .line 741
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object p1

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/OpenFile;

    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->getFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 750
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Permission denied in getPathForHandle!"

    invoke-static {v1, p1, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 752
    :cond_1
    new-instance p1, Lcom/sshtools/common/sftp/InvalidHandleException;

    const-string v0, "Invalid handle"

    invoke-direct {p1, v0}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    .line 662
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVolume(Ljava/lang/String;)Lcom/sshtools/common/files/FileVolume;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    .line 478
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getVolume()Lcom/sshtools/common/files/FileVolume;

    move-result-object p1

    return-object p1

    .line 481
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not exist"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleToString([B)Ljava/lang/String;
    .locals 2

    .line 277
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 279
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your system appears not to support UTF-8!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isMultipartTransferSupported(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    .line 802
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->supportsMultipartTransfers()Z

    move-result p1

    return p1
.end method

.method public makeDirectory(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Creating directory "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 181
    invoke-static {p1}, Lcom/sshtools/common/util/FileUtils;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v2, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, v0, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v2

    .line 184
    invoke-interface {v2}, Lcom/sshtools/common/files/AbstractFile;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v3, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v0, v3}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->isMkdirParentMustExist()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "The parent folder does not exist!"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    .line 194
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->createFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    invoke-interface {p1, p2}, Lcom/sshtools/common/files/AbstractFile;->setAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    .line 197
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result p1

    return p1

    :cond_3
    return v1

    .line 185
    :cond_4
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "The user does not have permission to write/create in "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_5
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    const-string p2, "Unable to create root file"

    invoke-direct {p1, p2}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openDirectory(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectory(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileFilter;)[B

    move-result-object p1

    return-object p1
.end method

.method public openDirectory(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileFilter;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opening directory for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->createHandle()[B

    move-result-object p1

    .line 253
    iget-object v1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;

    invoke-direct {v3, p0, v0, p2}, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;-><init>(Lcom/sshtools/common/sftp/AbstractFileSystem;Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/common/sftp/SftpFileFilter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 257
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not a directory"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 259
    :cond_2
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 247
    :cond_3
    new-instance p2, Lcom/sshtools/common/permissions/PermissionDeniedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The user does not have permission to read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public openFile(Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;Ljava/util/Optional;Lcom/sshtools/common/sftp/SftpFileAttributes;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;",
            "Lcom/sshtools/common/sftp/SftpFileAttributes;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 334
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Opening file for "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :cond_0
    iget-object p4, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, p4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    .line 338
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->createHandle()[B

    move-result-object p4

    .line 344
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-virtual {p0, p4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, p3, p4}, Lcom/sshtools/common/files/AbstractFile;->open(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/util/Optional;[B)Lcom/sshtools/common/sftp/OpenFile;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4

    .line 339
    :cond_1
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    const-string p2, "File cannot be opened as it is a Directory"

    invoke-direct {p1, p2}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openPart(Ljava/lang/String;Lcom/sshtools/common/sftp/Multipart;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 816
    invoke-static {p1}, Lcom/sshtools/common/sftp/MultipartTransferRegistry;->getTransfer(Ljava/lang/String;)Lcom/sshtools/common/sftp/MultipartTransfer;

    move-result-object v0

    .line 818
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 823
    invoke-interface {v0, p2}, Lcom/sshtools/common/sftp/MultipartTransfer;->openPart(Lcom/sshtools/common/sftp/Multipart;)Lcom/sshtools/common/sftp/OpenFile;

    move-result-object p1

    .line 825
    iget-object p2, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getHandle()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getHandle()[B

    move-result-object p1

    return-object p1

    .line 819
    :cond_0
    new-instance p2, Lcom/sshtools/common/permissions/PermissionDeniedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected multipart request for uuid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public populateEvent(Lcom/sshtools/common/events/Event;)V
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    .line 714
    :cond_0
    const-string v0, "FILE_FACTORY"

    iget-object v1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-virtual {p1, v0, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    .line 715
    const-string v0, "CONNECTION"

    iget-object v1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p1, v0, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    .line 716
    const-string v0, "HANDLE"

    invoke-virtual {p1, v0}, Lcom/sshtools/common/events/Event;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    .line 718
    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object v0

    .line 719
    iget-object v1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/sftp/OpenFile;

    if-eqz v1, :cond_1

    .line 721
    invoke-interface {v1, p1}, Lcom/sshtools/common/sftp/OpenFile;->processEvent(Lcom/sshtools/common/events/Event;)V

    goto :goto_0

    .line 723
    :cond_1
    iget-object v1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;

    if-eqz v0, :cond_2

    .line 725
    iget-object v1, v0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->f:Lcom/sshtools/common/files/AbstractFile;

    if-eqz v1, :cond_2

    .line 726
    const-string v1, "ABSTRACT_FILE"

    iget-object v0, v0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->f:Lcom/sshtools/common/files/AbstractFile;

    invoke-virtual {p1, v1, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    .line 732
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFileFactory;->populateEvent(Lcom/sshtools/common/events/Event;)Lcom/sshtools/common/events/Event;

    return-void
.end method

.method public readDirectory([B)[Lcom/sshtools/common/sftp/SftpFile;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/InvalidHandleException;,
            Ljava/io/EOFException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object p1

    .line 289
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 290
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;

    .line 292
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->getFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read directory for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->getPosition()I

    move-result v0

    .line 296
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->getChildren()[Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 298
    iget-object v2, p1, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->children:[Lcom/sshtools/common/files/AbstractFile;

    if-eqz v2, :cond_5

    .line 302
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 303
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_3

    array-length v3, v1

    if-ge v0, v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    .line 304
    aget-object v0, v1, v0

    .line 305
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->getFilter()Lcom/sshtools/common/sftp/SftpFileFilter;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->getFilter()Lcom/sshtools/common/sftp/SftpFileFilter;

    move-result-object v4

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sshtools/common/sftp/SftpFileFilter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    :cond_1
    :try_start_0
    new-instance v4, Lcom/sshtools/common/sftp/SftpFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sshtools/common/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    .line 308
    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    .line 310
    :goto_1
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "Could not access attributes of file {}"

    invoke-static {v5, v4, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    move v0, v3

    goto :goto_0

    .line 315
    :cond_3
    iput v0, p1, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->readpos:I

    .line 317
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 318
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sshtools/common/sftp/SftpFile;

    .line 319
    invoke-virtual {v2, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1

    .line 322
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "There are no more files"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Permission denined."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :cond_6
    new-instance p1, Lcom/sshtools/common/sftp/InvalidHandleException;

    const-string v0, "Handle is not an open directory"

    invoke-direct {p1, v0}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/InvalidHandleException;,
            Ljava/io/EOFException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 352
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 355
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/OpenFile;

    .line 357
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getAccessFlags()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 358
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getAccessFlags()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 360
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->isTextMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/sshtools/common/sftp/OpenFile;->seek(J)V

    .line 364
    :cond_0
    invoke-interface {p1, p3, p4, p5}, Lcom/sshtools/common/sftp/OpenFile;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    :cond_1
    return v1

    .line 371
    :cond_2
    new-instance p1, Lcom/sshtools/common/sftp/InvalidHandleException;

    const-string p2, "The file was not opened for writing"

    invoke-direct {p1, p2}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_3
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFlags()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    .line 376
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->isTextMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 377
    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/sshtools/common/sftp/OpenFile;->seek(J)V

    .line 380
    :cond_4
    invoke-interface {p1, p3, p4, p5}, Lcom/sshtools/common/sftp/OpenFile;->read([BII)I

    move-result p1

    if-ltz p1, :cond_5

    return p1

    :cond_5
    return v1

    .line 387
    :cond_6
    new-instance p1, Lcom/sshtools/common/sftp/InvalidHandleException;

    const-string p2, "The file handle was not opened for reading"

    invoke-direct {p1, p2}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_7
    new-instance p1, Lcom/sshtools/common/sftp/InvalidHandleException;

    const-string p2, "The handle is invalid 2"

    invoke-direct {p1, p2}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readSymbolicLink(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/UnsupportedFileOperationException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->readSymbolicLink()Ljava/lang/String;

    move-result-object p1

    .line 622
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    .line 623
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 624
    new-instance v1, Lcom/sshtools/common/sftp/SftpFile;

    invoke-direct {v1, p1, v0}, Lcom/sshtools/common/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 627
    :catch_0
    new-instance p1, Lcom/sshtools/common/sftp/UnsupportedFileOperationException;

    const-string v0, "Symbolic links are not supported by the Virtual File System"

    invoke-direct {p1, v0}, Lcom/sshtools/common/sftp/UnsupportedFileOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeDirectory(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    .line 576
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 580
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 581
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 583
    invoke-interface {v0, v1}, Lcom/sshtools/common/files/AbstractFile;->delete(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to remove directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not an empty directory"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not exist"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a directory"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_4
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    const-string v0, "User does not have the permission to write."

    invoke-direct {p1, v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "Failed to delete "

    .line 487
    iget-object v1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 489
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 493
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->existsNoFollowLinks()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    :try_start_0
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 496
    invoke-interface {v1, v2}, Lcom/sshtools/common/files/AbstractFile;->delete(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 497
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_1
    new-instance v0, Lcom/sshtools/common/sftp/FileIsDirectoryException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is a directory, use remove directory command to remove"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sshtools/common/sftp/FileIsDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :catch_0
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    const-string v0, "Permission denied"

    invoke-direct {p1, v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not exist"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_3
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    const-string v0, "User does not have the permission to delete."

    invoke-direct {p1, v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {v1, p2}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 516
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 520
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 524
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 525
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 526
    invoke-interface {v0, v1}, Lcom/sshtools/common/files/AbstractFile;->moveTo(Lcom/sshtools/common/files/AbstractFile;)V

    return-void

    .line 528
    :cond_0
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result p1

    const-string v2, " already exists"

    if-eqz p1, :cond_2

    const-string p1, "maverick.enableRenameIntoDir"

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 529
    iget-object p1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/util/FileUtils;->checkEndsWithSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    .line 530
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 533
    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->moveTo(Lcom/sshtools/common/files/AbstractFile;)V

    return-void

    .line 531
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 535
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 539
    :cond_3
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 521
    :cond_4
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User does not have permission to write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 517
    :cond_5
    new-instance p2, Lcom/sshtools/common/permissions/PermissionDeniedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User does not have permission to change "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object p2, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-static {p2}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 138
    sget-object p2, Lcom/sshtools/common/sftp/AbstractFileSystem;->defaultPaths:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 139
    iget-object p1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFileFactory;->getDefaultPath()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    return-object p1

    .line 141
    :cond_0
    iget-object p2, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {p2, p1}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    return-object p1

    .line 136
    :cond_1
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    const-string p2, "The user does not have access to a file system."

    invoke-direct {p1, p2}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFileAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->resolveFile(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    .line 601
    invoke-interface {p1, p2}, Lcom/sshtools/common/files/AbstractFile;->setAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method

.method public setFileAttributes([BLcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/InvalidHandleException;
        }
    .end annotation

    .line 607
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object p1

    .line 608
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/OpenFile;

    .line 610
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sshtools/common/files/AbstractFile;->setAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;

    .line 613
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->getFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sshtools/common/files/AbstractFile;->setAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void

    .line 615
    :cond_1
    new-instance p2, Lcom/sshtools/common/sftp/InvalidHandleException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public startMultipartUpload(Lcom/sshtools/common/files/AbstractFile;)Lcom/sshtools/common/sftp/MultipartTransfer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    invoke-interface {p1, p1}, Lcom/sshtools/common/files/AbstractFile;->startMultipartUpload(Lcom/sshtools/common/files/AbstractFile;)Lcom/sshtools/common/sftp/MultipartTransfer;

    move-result-object p1

    .line 809
    invoke-static {p1}, Lcom/sshtools/common/sftp/MultipartTransferRegistry;->registerTransfer(Lcom/sshtools/common/sftp/MultipartTransfer;)V

    return-object p1
.end method

.method public stringToHandle(Ljava/lang/String;)[B
    .locals 1

    .line 269
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 271
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your system appears not to support UTF-8!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/InvalidHandleException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 395
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object p1

    .line 397
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 398
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/OpenFile;

    .line 400
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getAccessFlags()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "The file was not opened for writing"

    if-eqz v0, :cond_3

    .line 401
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getAccessFlags()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result v0

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    .line 405
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p2

    invoke-interface {p2}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/sshtools/common/sftp/OpenFile;->seek(J)V

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 408
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->isTextMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/sshtools/common/sftp/OpenFile;->seek(J)V

    .line 414
    :cond_1
    :goto_0
    invoke-interface {p1, p3, p4, p5}, Lcom/sshtools/common/sftp/OpenFile;->write([BII)V

    return-void

    .line 411
    :cond_2
    new-instance p1, Lcom/sshtools/common/sftp/InvalidHandleException;

    invoke-direct {p1, v1}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_3
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFlags()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    .line 418
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFlags()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 421
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p2

    invoke-interface {p2}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/sshtools/common/sftp/OpenFile;->seek(J)V

    goto :goto_1

    .line 422
    :cond_4
    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->isTextMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/sshtools/common/sftp/OpenFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 424
    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/sshtools/common/sftp/OpenFile;->seek(J)V

    .line 427
    :cond_5
    :goto_1
    invoke-interface {p1, p3, p4, p5}, Lcom/sshtools/common/sftp/OpenFile;->write([BII)V

    return-void

    .line 429
    :cond_6
    new-instance p1, Lcom/sshtools/common/sftp/InvalidHandleException;

    invoke-direct {p1, v1}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_7
    new-instance p1, Lcom/sshtools/common/sftp/InvalidHandleException;

    const-string p2, "The handle is invalid 3"

    invoke-direct {p1, p2}, Lcom/sshtools/common/sftp/InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
