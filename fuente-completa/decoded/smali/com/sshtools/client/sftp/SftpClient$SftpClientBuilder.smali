.class public final Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
.super Ljava/lang/Object;
.source "SftpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/sftp/SftpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SftpClientBuilder"
.end annotation


# instance fields
.field private asyncRequests:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blockSize:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bufferSize:I

.field private charset:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ">;"
        }
    .end annotation
.end field

.field private customRoots:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileFactory:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "*>;>;"
        }
    .end annotation
.end field

.field private localHome:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private localHomeSandbox:Z

.field private localPath:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private remotePath:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetasyncRequests(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->asyncRequests:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblockSize(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->blockSize:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbufferSize(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->bufferSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcharset(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->charset:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnection(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->connection:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcustomRoots(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->customRoots:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfileFactory(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->fileFactory:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalHome(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->localHome:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalHomeSandbox(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->localHomeSandbox:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalPath(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->localPath:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremotePath(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->remotePath:Ljava/util/Optional;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->connection:Ljava/util/Optional;

    .line 93
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->fileFactory:Ljava/util/Optional;

    .line 94
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->blockSize:Ljava/util/Optional;

    .line 95
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->asyncRequests:Ljava/util/Optional;

    const v0, 0xfa000

    .line 96
    iput v0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->bufferSize:I

    .line 97
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->localHome:Ljava/util/Optional;

    .line 99
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->customRoots:Ljava/util/Set;

    .line 100
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->localPath:Ljava/util/Optional;

    .line 101
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->remotePath:Ljava/util/Optional;

    .line 102
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->charset:Ljava/util/Optional;

    return-void
.end method

.method public static create()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 1

    .line 110
    new-instance v0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    invoke-direct {v0}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sshtools/client/sftp/SftpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    new-instance v0, Lcom/sshtools/client/sftp/SftpClient;

    invoke-direct {v0, p0}, Lcom/sshtools/client/sftp/SftpClient;-><init>(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)V

    return-object v0
.end method

.method public withAsyncRequests(I)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 287
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->asyncRequests:Ljava/util/Optional;

    return-object p0
.end method

.method public withBlockSize(I)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 258
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->blockSize:Ljava/util/Optional;

    return-object p0
.end method

.method public withBufferSize(I)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 0

    .line 276
    iput p1, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->bufferSize:I

    return-object p0
.end method

.method public withCharset(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 0

    .line 128
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->charset:Ljava/util/Optional;

    return-object p0
.end method

.method public withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 0

    .line 154
    invoke-virtual {p1}, Lcom/sshtools/client/SshClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withConnection(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withConnection(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 1

    .line 139
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->isDisconnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->connection:Ljava/util/Optional;

    return-object p0

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not connected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs withCustomRoots([Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->customRoots:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public withFileFactory(Lcom/sshtools/common/files/AbstractFileFactory;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "*>;)",
            "Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;"
        }
    .end annotation

    .line 164
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->fileFactory:Ljava/util/Optional;

    return-object p0
.end method

.method public withLocalHome(Ljava/io/File;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 0

    .line 247
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withLocalHome(Ljava/nio/file/Path;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withLocalHome(Ljava/nio/file/Path;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 0

    .line 231
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->localHome:Ljava/util/Optional;

    return-object p0
.end method

.method public withLocalHomeSandbox(Z)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->localHomeSandbox:Z

    return-object p0
.end method

.method public withLocalPath(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 0

    .line 215
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->localPath:Ljava/util/Optional;

    return-object p0
.end method

.method public withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 0

    .line 202
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->remotePath:Ljava/util/Optional;

    return-object p0
.end method

.method public withWithoutLocalHomeSandbox()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withLocalHomeSandbox(Z)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    return-object v0
.end method
