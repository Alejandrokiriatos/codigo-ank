.class public Lcom/sshtools/common/sftp/SftpSubsystem;
.super Lcom/sshtools/common/ssh/Subsystem;
.source "SftpSubsystem.java"

# interfaces
.implements Lcom/sshtools/common/sftp/SftpSpecification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/sftp/SftpSubsystem$InitOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$LStatOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$FStatOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$RemoveDirectoryOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$SetFStatOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedMessageOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$UnsupportedOperation;,
        Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
    }
.end annotation


# static fields
.field static final MAX_VERSION:I = 0x4

.field public static final SFTP_QUEUE:Ljava/lang/Integer;

.field public static final SUBSYSTEM_NAME:Ljava/lang/String; = "sftp"


# instance fields
.field private CHARSET_ENCODING:Ljava/lang/String;

.field private con:Lcom/sshtools/common/ssh/SshConnection;

.field private filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;

.field private nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

.field private nfsClosed:Z

.field private openFileHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sftp/TransferEvent;",
            ">;"
        }
    .end annotation
.end field

.field private openFilesByContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sshtools/common/ssh/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private openFolderHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sftp/TransferEvent;",
            ">;"
        }
    .end annotation
.end field

.field version:I

.field private wrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/sftp/SftpOperationWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->CHARSET_ENCODING:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilePolicy(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/policy/FileSystemPolicy;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopenFileHandles(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFileHandles:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopenFilesByContext(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFilesByContext:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopenFolderHandles(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFolderHandles:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwrappers(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->wrappers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputnfs(Lcom/sshtools/common/sftp/SftpSubsystem;Lcom/sshtools/common/sftp/AbstractFileSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-string v0, "Subsystem.queue"

    invoke-static {v0}, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->generateUniqueQueue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 102
    const-string v0, "sftp"

    invoke-direct {p0, v0}, Lcom/sshtools/common/ssh/Subsystem;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->wrappers:Ljava/util/List;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->nfsClosed:Z

    .line 95
    new-instance v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-direct {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFileHandles:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFolderHandles:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFilesByContext:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->context:Lcom/sshtools/common/ssh/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->context:Lcom/sshtools/common/ssh/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->context:Lcom/sshtools/common/ssh/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->context:Lcom/sshtools/common/ssh/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    return-object p0
.end method

.method private cleanupOpenFiles()V
    .locals 5

    .line 2472
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFileHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2474
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    const-string v2, "The connection has closed"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    .line 2476
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2477
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/sftp/TransferEvent;

    .line 2478
    iput-boolean v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    .line 2480
    :try_start_0
    invoke-virtual {p0, v2, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireCloseFileEvent(Lcom/sshtools/common/sftp/TransferEvent;Ljava/lang/Exception;)V
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2483
    :catch_0
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFilesByContext:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-object v2, v2, Lcom/sshtools/common/sftp/TransferEvent;->key:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2486
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFileHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2488
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFolderHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2490
    :catch_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/sftp/TransferEvent;

    .line 2492
    iput-boolean v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    .line 2494
    :try_start_1
    invoke-virtual {p0, v2, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireCloseFileEvent(Lcom/sshtools/common/sftp/TransferEvent;Ljava/lang/Exception;)V
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2498
    :cond_1
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFolderHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private formatLongnameInContext(Lcom/sshtools/common/sftp/SftpFile;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 2185
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem;->formatLongnameInContext(Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatLongnameInContext(Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    .line 2203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2204
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toPermissionsString()Ljava/lang/String;

    move-result-object v1

    .line 2205
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/sshtools/common/util/Utils;->pad(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2206
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v1

    const-string v2, " 1 "

    if-eqz v1, :cond_0

    .line 2207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2209
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2211
    :goto_0
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->uidOr()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sshtools/common/sftp/SftpSubsystem$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sshtools/common/sftp/SftpSubsystem$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const-string v2, "       0"

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2212
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2213
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->gidOr()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/sshtools/common/sftp/SftpSubsystem$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/sshtools/common/sftp/SftpSubsystem$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2216
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/util/UnsignedInteger64;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0xb

    invoke-static {v2}, Lcom/sshtools/common/util/Utils;->pad(I)Ljava/lang/String;

    move-result-object v2

    .line 2217
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/util/UnsignedInteger64;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2220
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getModTimeStringInContext(Ljava/nio/file/attribute/FileTime;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    rsub-int/lit8 p3, p3, 0xc

    invoke-static {p3}, Lcom/sshtools/common/util/Utils;->pad(I)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2223
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2225
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getModTimeStringInContext(Ljava/nio/file/attribute/FileTime;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    .line 2231
    const-string p1, ""

    return-object p1

    .line 2235
    :cond_0
    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    .line 2236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide v4, 0x39ef8b000L

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 2239
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v2

    const-class v3, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v2, v3}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v2}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSFTPLongnameDateFormat()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    .line 2241
    :cond_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v2

    const-class v3, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v2, v3}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v2}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSFTPLongnameDateFormatWithTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2244
    :goto_0
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$formatLongnameInContext$0(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 2211
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/sshtools/common/util/Utils;->pad(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$formatLongnameInContext$1(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 2213
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/sshtools/common/util/Utils;->pad(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onInitialize([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Negotiated SFTP version "

    const/4 v1, 0x1

    .line 2375
    :try_start_0
    invoke-static {p1, v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt([BI)J

    move-result-wide v1

    long-to-int v1, v1

    .line 2376
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->context:Lcom/sshtools/common/ssh/Context;

    const-class v3, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v2, v3}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v2}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSFTPVersion()I

    move-result v2

    .line 2377
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I

    .line 2378
    new-instance v3, Lcom/sshtools/common/ssh/Packet;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/sshtools/common/ssh/Packet;-><init>(I)V

    const/4 v4, 0x2

    .line 2379
    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 2380
    iget v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I

    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 2382
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2383
    iget v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " [server="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " client="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2386
    :cond_0
    iget v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x3

    const-string v2, "line.separator"

    if-le v0, v1, :cond_1

    .line 2387
    :try_start_1
    const-string v0, "newline"

    invoke-virtual {v3, v0}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 2388
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 2390
    :cond_1
    const-string v0, "newline@vandyke.com"

    invoke-virtual {v3, v0}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 2391
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 2394
    :goto_0
    const-string v0, "vendor-id"

    invoke-virtual {v3, v0}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 2396
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2397
    :try_start_2
    const-string v1, "JADAPTIVE Limited"

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 2398
    const-string v1, "Maverick Synergy"

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 2399
    invoke-static {}, Lcom/sshtools/common/util/Version;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 2400
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 2401
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2402
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 2404
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->context:Lcom/sshtools/common/ssh/Context;

    const-class v1, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSFTPExtensionFactories()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/sftp/SftpExtensionFactory;

    .line 2405
    invoke-interface {v1}, Lcom/sshtools/common/sftp/SftpExtensionFactory;->getExtensions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/sftp/SftpExtension;

    .line 2406
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2407
    const-string v4, "SFTP supports extension {}"

    invoke-interface {v2}, Lcom/sshtools/common/sftp/SftpExtension;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2409
    :cond_4
    invoke-interface {v2}, Lcom/sshtools/common/sftp/SftpExtension;->isDeclaredInVersion()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2410
    invoke-interface {v2}, Lcom/sshtools/common/sftp/SftpExtension;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 2411
    invoke-interface {v2}, Lcom/sshtools/common/sftp/SftpExtension;->getDefaultData()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    goto :goto_1

    .line 2415
    :cond_5
    invoke-virtual {p0, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2417
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->onFreeMessage([B)V

    return-void

    :catchall_0
    move-exception v1

    .line 2396
    :try_start_4
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 2417
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->onFreeMessage([B)V

    .line 2418
    throw v0
.end method


# virtual methods
.method public addTransferEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/TransferEvent;)V
    .locals 2

    .line 2522
    invoke-virtual {p2}, Lcom/sshtools/common/sftp/TransferEvent;->isDir()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2523
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFolderHandles:Ljava/util/Map;

    iget-object v0, p2, Lcom/sshtools/common/sftp/TransferEvent;->key:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2525
    :cond_0
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFileHandles:Ljava/util/Map;

    iget-object v0, p2, Lcom/sshtools/common/sftp/TransferEvent;->key:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    :goto_0
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFilesByContext:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2528
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFilesByContext:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    :cond_1
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFilesByContext:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p2, p2, Lcom/sshtools/common/sftp/TransferEvent;->key:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2531
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2532
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFilesByContext:Ljava/util/Map;

    .line 2533
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2532
    const-string p2, "There are now {} file(s) open in the current context"

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public addWrapper(Lcom/sshtools/common/sftp/SftpOperationWrapper;)V
    .locals 1

    .line 2510
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->wrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 2367
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2368
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getDefaultPath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected cleanupSubsystem()V
    .locals 7

    .line 146
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->nfsClosed:Z

    if-nez v0, :cond_4

    .line 148
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 149
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cleaning up SFTP subsystem"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFileHandles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sshtools/common/sftp/TransferEvent;

    .line 157
    iget-object v5, v5, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFolderHandles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sshtools/common/sftp/TransferEvent;

    .line 160
    iget-object v5, v5, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_2
    new-instance v4, Lcom/sshtools/common/events/Event;

    const v5, -0xffff9e

    const/4 v6, 0x1

    invoke-direct {v4, p0, v5, v6}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v5, "OPEN_FILE_HANDLES"

    .line 166
    invoke-virtual {v4, v5, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    const-string v4, "OPEN_DIR_HANDLES"

    .line 167
    invoke-virtual {v2, v4, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 168
    const-string v4, "CONNECTION"

    invoke-virtual {v2, v4, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    .line 163
    invoke-virtual {p0, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 172
    invoke-direct {p0}, Lcom/sshtools/common/sftp/SftpSubsystem;->cleanupOpenFiles()V

    .line 174
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    if-eqz v2, :cond_3

    .line 175
    invoke-virtual {v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFilesystem()V

    .line 178
    :cond_3
    iput-boolean v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->nfsClosed:Z

    .line 179
    new-instance v2, Lcom/sshtools/common/events/Event;

    const v3, -0xffffaf

    invoke-direct {v2, p0, v3, v6}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v3, "OP_STARTED"

    .line 182
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "OP_FINISHED"

    invoke-virtual {v0, v2, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 184
    invoke-virtual {v0, v4, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 179
    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    :cond_4
    return-void
.end method

.method protected fireCloseFileEvent(Lcom/sshtools/common/sftp/TransferEvent;Ljava/lang/Exception;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    if-eqz v2, :cond_a

    .line 1613
    iget-boolean v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 1614
    iput-boolean v4, v2, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    .line 1619
    :cond_0
    iget-boolean v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v3

    const-class v5, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v3, v5}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v3}, Lcom/sshtools/common/policy/FileSystemPolicy;->isSFTPCloseFileBeforeFailedTransferEvents()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1621
    :try_start_0
    iget-object v3, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v5, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-virtual {v3, v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_0
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1625
    iget-object v3, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v5, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-virtual {v3, v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v2, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 1626
    throw v0

    .line 1625
    :catch_0
    iget-object v3, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v5, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-virtual {v3, v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_0

    :catch_1
    iget-object v3, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v5, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-virtual {v3, v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1630
    :goto_0
    iget-boolean v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->isDir:Z

    const-string v5, "BYTES_TRANSFERED"

    const-string v6, "OP_FINISHED"

    const-string v7, "OP_STARTED"

    const-string v8, "HANDLE"

    const-string v9, "FILE_NAME"

    const-string v10, "CONNECTION"

    if-eqz v3, :cond_2

    .line 1632
    new-instance v3, Lcom/sshtools/common/events/Event;

    const v11, -0xffffa4

    invoke-direct {v3, v1, v11, v0}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1635
    invoke-virtual {v3, v10, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-wide v10, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    .line 1640
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1638
    invoke-virtual {v0, v5, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1641
    invoke-virtual {v0, v9, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    .line 1644
    invoke-virtual {v0, v8, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->started:Ljava/util/Date;

    .line 1647
    invoke-virtual {v0, v7, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1650
    invoke-virtual {v0, v6, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1632
    invoke-virtual {v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    goto/16 :goto_2

    .line 1654
    :cond_2
    iget-wide v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    const-wide/16 v13, 0x0

    cmp-long v3, v11, v13

    if-lez v3, :cond_3

    iget-wide v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    cmp-long v3, v11, v13

    if-gtz v3, :cond_3

    .line 1655
    new-instance v3, Lcom/sshtools/common/events/Event;

    const v11, -0xffffa9

    invoke-direct {v3, v1, v11, v0}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1659
    invoke-virtual {v3, v10, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-wide v10, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    .line 1664
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1662
    invoke-virtual {v0, v5, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1665
    invoke-virtual {v0, v9, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    .line 1668
    invoke-virtual {v0, v8, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->started:Ljava/util/Date;

    .line 1671
    invoke-virtual {v0, v7, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1674
    invoke-virtual {v0, v6, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1655
    invoke-virtual {v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    goto/16 :goto_2

    .line 1677
    :cond_3
    iget-wide v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    cmp-long v3, v11, v13

    const v11, -0xffffa8

    move-wide v15, v13

    if-lez v3, :cond_4

    iget-wide v13, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    cmp-long v3, v13, v15

    if-gtz v3, :cond_4

    .line 1679
    new-instance v3, Lcom/sshtools/common/events/Event;

    invoke-direct {v3, v1, v11, v0}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1683
    invoke-virtual {v3, v10, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-wide v10, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    .line 1688
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1686
    invoke-virtual {v0, v5, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    .line 1689
    invoke-virtual {v0, v8, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1692
    invoke-virtual {v0, v9, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->started:Ljava/util/Date;

    .line 1695
    invoke-virtual {v0, v7, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1698
    invoke-virtual {v0, v6, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1679
    invoke-virtual {v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    goto/16 :goto_2

    .line 1702
    :cond_4
    iget-wide v12, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    cmp-long v3, v12, v15

    const-string v12, "BYTES_WRITTEN"

    const-string v13, "BYTES_READ"

    const-wide/16 v17, 0x4

    const-wide/16 v19, 0x2

    const-wide/16 v21, 0x1

    move-object v14, v12

    if-gtz v3, :cond_8

    iget-wide v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    cmp-long v11, v11, v15

    if-gtz v11, :cond_8

    iget-object v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 1704
    invoke-virtual {v11}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v11

    and-long v11, v11, v21

    cmp-long v11, v11, v21

    if-eqz v11, :cond_8

    iget-object v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 1705
    invoke-virtual {v11}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v11

    and-long v11, v11, v19

    cmp-long v11, v11, v19

    if-eqz v11, :cond_5

    iget-object v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 1706
    invoke-virtual {v11}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v11

    and-long v11, v11, v17

    cmp-long v11, v11, v17

    if-nez v11, :cond_8

    .line 1708
    :cond_5
    iget-object v3, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->context:Lcom/sshtools/common/ssh/Context;

    const-class v5, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v3, v5}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v3}, Lcom/sshtools/common/policy/FileSystemPolicy;->isAllowZeroLengthFileUpload()Z

    move-result v3

    const v5, -0xffffa7

    if-nez v3, :cond_7

    iget-boolean v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->exists:Z

    if-eqz v3, :cond_6

    goto :goto_1

    .line 1739
    :cond_6
    :try_start_1
    iget-object v3, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v4, v2, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->removeFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1743
    :catch_2
    new-instance v3, Lcom/sshtools/common/events/Event;

    invoke-direct {v3, v1, v5, v0}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1747
    invoke-virtual {v3, v10, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-wide v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    .line 1752
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1750
    invoke-virtual {v0, v13, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-wide v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    .line 1755
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1753
    invoke-virtual {v0, v14, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    .line 1756
    invoke-virtual {v0, v8, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1759
    invoke-virtual {v0, v9, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v2, v2, Lcom/sshtools/common/sftp/TransferEvent;->started:Ljava/util/Date;

    .line 1762
    invoke-virtual {v0, v7, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1765
    invoke-virtual {v0, v6, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1743
    invoke-virtual {v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 1769
    new-instance v0, Lcom/sshtools/common/sftp/SftpStatusEventException;

    const/4 v2, 0x4

    const-string v3, "Zero length file is not allowed"

    invoke-direct {v0, v2, v3}, Lcom/sshtools/common/sftp/SftpStatusEventException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1710
    :cond_7
    :goto_1
    new-instance v3, Lcom/sshtools/common/events/Event;

    invoke-direct {v3, v1, v5, v0}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1714
    invoke-virtual {v3, v10, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-wide v10, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    .line 1719
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1717
    invoke-virtual {v0, v13, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-wide v10, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    .line 1722
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1720
    invoke-virtual {v0, v14, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    .line 1723
    invoke-virtual {v0, v8, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1726
    invoke-virtual {v0, v9, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->started:Ljava/util/Date;

    .line 1729
    invoke-virtual {v0, v7, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1732
    invoke-virtual {v0, v6, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1710
    invoke-virtual {v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    goto/16 :goto_2

    .line 1774
    :cond_8
    iget-wide v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    cmp-long v11, v11, v15

    if-gtz v11, :cond_9

    iget-wide v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    cmp-long v11, v11, v15

    if-gtz v11, :cond_9

    iget-object v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 1776
    invoke-virtual {v11}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v11

    and-long v11, v11, v21

    cmp-long v11, v11, v21

    if-nez v11, :cond_9

    iget-object v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 1777
    invoke-virtual {v11}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v11

    and-long v11, v11, v19

    cmp-long v11, v11, v19

    if-eqz v11, :cond_9

    iget-object v11, v2, Lcom/sshtools/common/sftp/TransferEvent;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 1778
    invoke-virtual {v11}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v11

    and-long v11, v11, v17

    cmp-long v11, v11, v17

    if-eqz v11, :cond_9

    .line 1780
    new-instance v11, Lcom/sshtools/common/events/Event;

    const v3, -0xffffa8

    invoke-direct {v11, v1, v3, v0}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1784
    invoke-virtual {v11, v10, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-wide v10, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    .line 1789
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1787
    invoke-virtual {v0, v5, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1790
    invoke-virtual {v0, v9, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    .line 1793
    invoke-virtual {v0, v8, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->started:Ljava/util/Date;

    .line 1796
    invoke-virtual {v0, v7, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1799
    invoke-virtual {v0, v6, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1780
    invoke-virtual {v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    goto :goto_2

    .line 1806
    :cond_9
    new-instance v3, Lcom/sshtools/common/events/Event;

    const v5, -0xffffa6

    invoke-direct {v3, v1, v5, v0}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1809
    invoke-virtual {v3, v10, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-wide v10, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    .line 1814
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1812
    invoke-virtual {v0, v13, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-wide v10, v2, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    .line 1817
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1815
    invoke-virtual {v0, v14, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1818
    invoke-virtual {v0, v9, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    .line 1821
    invoke-virtual {v0, v8, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->started:Ljava/util/Date;

    .line 1824
    invoke-virtual {v0, v7, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1827
    invoke-virtual {v0, v6, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1806
    invoke-virtual {v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 1832
    :goto_2
    iget-boolean v0, v2, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    if-eqz v0, :cond_a

    if-nez v4, :cond_a

    iget-boolean v0, v2, Lcom/sshtools/common/sftp/TransferEvent;->forceClose:Z

    if-eqz v0, :cond_a

    .line 1834
    :try_start_2
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v3, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-virtual {v0, v3}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_2
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1838
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v2, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_3

    :catchall_1
    move-exception v0

    iget-object v3, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v2, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 1839
    throw v0

    .line 1838
    :catch_3
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v2, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_3

    :catch_4
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v2, v2, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    :cond_a
    :goto_3
    return-void
.end method

.method protected fireCloseFileEvent([BLjava/lang/Exception;)V
    .locals 1

    .line 1591
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 1592
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFileHandles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1593
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFileHandles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/TransferEvent;

    .line 1594
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireCloseFileEvent(Lcom/sshtools/common/sftp/TransferEvent;Ljava/lang/Exception;)V

    .line 1595
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFileHandles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFilesByContext:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1598
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1599
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFilesByContext:Ljava/util/Map;

    .line 1600
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1599
    const-string p2, "There are now {} file(s) open in the current context"

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1602
    :cond_0
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFolderHandles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1603
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFolderHandles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/TransferEvent;

    .line 1604
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireCloseFileEvent(Lcom/sshtools/common/sftp/TransferEvent;Ljava/lang/Exception;)V

    .line 1605
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->openFolderHandles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public fireEvent(Lcom/sshtools/common/events/Event;)V
    .locals 1

    .line 2422
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    if-eqz v0, :cond_0

    .line 2423
    invoke-virtual {v0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->populateEvent(Lcom/sshtools/common/events/Event;)V

    .line 2425
    :cond_0
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method protected fireMakeDirectoryEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V
    .locals 2

    .line 2348
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v1, -0xffffae

    invoke-direct {v0, p0, v1, p3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    const-string p3, "CONNECTION"

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 2351
    invoke-virtual {v0, p3, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p3

    const-string v0, "FILE_NAME"

    .line 2354
    invoke-virtual {p3, v0, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p3, "OP_STARTED"

    .line 2357
    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 2360
    const-string p3, "OP_FINISHED"

    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 2348
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method protected fireOpenDirectoryEvent(Ljava/lang/String;Ljava/util/Date;[BLjava/lang/Exception;)V
    .locals 2

    .line 2095
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v1, -0xffff99

    invoke-direct {v0, p0, v1, p4}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    const-string p4, "CONNECTION"

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 2097
    invoke-virtual {v0, p4, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p4

    const-wide/16 v0, 0x0

    .line 2102
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2100
    const-string v1, "BYTES_TRANSFERED"

    invoke-virtual {p4, v1, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p4

    const-string v0, "HANDLE"

    .line 2103
    invoke-virtual {p4, v0, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p3

    const-string p4, "FILE_NAME"

    .line 2106
    invoke-virtual {p3, p4, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p3, "OP_STARTED"

    .line 2109
    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 2112
    const-string p3, "OP_FINISHED"

    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 2095
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method protected fireOpenFileEvent(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/Date;[BLjava/lang/Exception;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 1044
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    cmp-long v5, v5, v7

    const-string v6, "OP_FINISHED"

    const-string v9, "OP_STARTED"

    const-string v10, "FILE_NAME"

    const-string v11, "HANDLE"

    const-string v12, "CONNECTION"

    const-wide/16 v13, 0x4

    const-wide/16 v15, 0x2

    if-eqz v5, :cond_1

    .line 1045
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v17

    and-long v17, v17, v15

    cmp-long v5, v17, v15

    if-eqz v5, :cond_0

    .line 1046
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v17

    and-long v17, v17, v13

    cmp-long v5, v17, v13

    if-nez v5, :cond_1

    .line 1048
    :cond_0
    new-instance v5, Lcom/sshtools/common/events/Event;

    const v7, -0xffffa2

    invoke-direct {v5, v0, v7, v4}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v4, v0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1052
    invoke-virtual {v5, v12, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v4

    const-string v5, "NEW_ATTR"

    move-object/from16 v7, p2

    .line 1055
    invoke-virtual {v4, v5, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v4

    .line 1058
    invoke-virtual {v4, v11, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    .line 1061
    invoke-virtual {v3, v10, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1064
    invoke-virtual {v1, v9, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1067
    invoke-virtual {v1, v6, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1048
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void

    .line 1072
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v17

    and-long v17, v17, v7

    cmp-long v5, v17, v7

    if-nez v5, :cond_2

    .line 1073
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v7

    and-long/2addr v7, v15

    cmp-long v5, v7, v15

    if-eqz v5, :cond_2

    .line 1074
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v7

    and-long/2addr v7, v13

    cmp-long v5, v7, v13

    if-eqz v5, :cond_2

    .line 1076
    new-instance v5, Lcom/sshtools/common/events/Event;

    const v7, -0xffffa3

    invoke-direct {v5, v0, v7, v4}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v4, v0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1080
    invoke-virtual {v5, v12, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v4

    .line 1083
    invoke-virtual {v4, v10, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1086
    invoke-virtual {v1, v11, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1089
    invoke-virtual {v1, v9, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1092
    invoke-virtual {v1, v6, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1076
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void

    .line 1098
    :cond_2
    new-instance v5, Lcom/sshtools/common/events/Event;

    const v7, -0xffffa1

    invoke-direct {v5, v0, v7, v4}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v4, v0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1101
    invoke-virtual {v5, v12, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v4

    .line 1104
    invoke-virtual {v4, v11, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    .line 1107
    invoke-virtual {v3, v10, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1110
    invoke-virtual {v1, v9, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1113
    invoke-virtual {v1, v6, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1098
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method protected fireOpenInitEvent(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1121
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    cmp-long v4, v4, v6

    const-string v5, "OP_FINISHED"

    const-string v8, "OP_STARTED"

    const-string v9, "FILE_NAME"

    const-string v10, "CONNECTION"

    const-wide/16 v11, 0x4

    const-wide/16 v13, 0x2

    if-eqz v4, :cond_1

    .line 1122
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v15

    and-long/2addr v15, v13

    cmp-long v4, v15, v13

    if-eqz v4, :cond_0

    .line 1123
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v15

    and-long/2addr v15, v11

    cmp-long v4, v15, v11

    if-nez v4, :cond_1

    .line 1125
    :cond_0
    new-instance v4, Lcom/sshtools/common/events/Event;

    const v6, -0xffff9c

    invoke-direct {v4, v0, v6, v3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v3, v0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1129
    invoke-virtual {v4, v10, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v4, "NEW_ATTR"

    move-object/from16 v6, p2

    .line 1132
    invoke-virtual {v3, v4, v6}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    .line 1135
    invoke-virtual {v3, v9, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1138
    invoke-virtual {v1, v8, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1141
    invoke-virtual {v1, v5, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1125
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void

    .line 1146
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v15

    and-long/2addr v15, v6

    cmp-long v4, v15, v6

    if-nez v4, :cond_2

    .line 1147
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v6

    and-long/2addr v6, v13

    cmp-long v4, v6, v13

    if-eqz v4, :cond_2

    .line 1148
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v6

    and-long/2addr v6, v11

    cmp-long v4, v6, v11

    if-eqz v4, :cond_2

    .line 1150
    new-instance v4, Lcom/sshtools/common/events/Event;

    const v6, -0xffff9d

    invoke-direct {v4, v0, v6, v3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v3, v0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1154
    invoke-virtual {v4, v10, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    .line 1157
    invoke-virtual {v3, v9, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1160
    invoke-virtual {v1, v8, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1163
    invoke-virtual {v1, v5, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1150
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void

    .line 1169
    :cond_2
    new-instance v4, Lcom/sshtools/common/events/Event;

    const v6, -0xffff9b

    invoke-direct {v4, v0, v6, v3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v3, v0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1172
    invoke-virtual {v4, v10, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    .line 1175
    invoke-virtual {v3, v9, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1178
    invoke-virtual {v1, v8, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1181
    invoke-virtual {v1, v5, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1169
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method protected fireRemoveFileEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V
    .locals 2

    .line 929
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v1, -0xffffab

    invoke-direct {v0, p0, v1, p3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    const-string p3, "CONNECTION"

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 931
    invoke-virtual {v0, p3, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p3

    const-string v0, "FILE_NAME"

    .line 934
    invoke-virtual {p3, v0, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p3, "OP_STARTED"

    .line 937
    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 940
    const-string p3, "OP_FINISHED"

    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 929
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method protected fireRenameFileEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V
    .locals 2

    .line 857
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v1, -0xffffac

    invoke-direct {v0, p0, v1, p4}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    const-string p4, "CONNECTION"

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 859
    invoke-virtual {v0, p4, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p4

    const-string v0, "FILE_NAME"

    .line 862
    invoke-virtual {p4, v0, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p4, "FILE_NEW_NAME"

    .line 865
    invoke-virtual {p1, p4, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p2, "OP_STARTED"

    .line 868
    invoke-virtual {p1, p2, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 871
    const-string p3, "OP_FINISHED"

    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 857
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method protected fireRmDirEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V
    .locals 2

    .line 788
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v1, -0xffffad

    invoke-direct {v0, p0, v1, p3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    const-string p3, "CONNECTION"

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 791
    invoke-virtual {v0, p3, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p3

    const-string v0, "FILE_NAME"

    .line 794
    invoke-virtual {p3, v0, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p3, "OP_STARTED"

    .line 797
    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 800
    const-string p3, "OP_FINISHED"

    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 788
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method protected fireSetStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V
    .locals 2

    .line 513
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v1, -0xffffa5

    invoke-direct {v0, p0, v1, p5}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    const-string p5, "CONNECTION"

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 516
    invoke-virtual {v0, p5, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p5

    const-string v0, "FILE_NAME"

    .line 519
    invoke-virtual {p5, v0, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p5, "OLD_ATTR"

    .line 522
    invoke-virtual {p1, p5, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p2, "NEW_ATTR"

    .line 525
    invoke-virtual {p1, p2, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p2, "OP_STARTED"

    .line 528
    invoke-virtual {p1, p2, p4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 531
    const-string p3, "OP_FINISHED"

    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 513
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method protected fireStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V
    .locals 2

    .line 539
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v1, -0xffff9a

    invoke-direct {v0, p0, v1, p4}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    const-string p4, "CONNECTION"

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 542
    invoke-virtual {v0, p4, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p4

    const-string v0, "FILE_NAME"

    .line 545
    invoke-virtual {p4, v0, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p4, "ATTR"

    .line 548
    invoke-virtual {p1, p4, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p2, "OP_STARTED"

    .line 551
    invoke-virtual {p1, p2, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 554
    const-string p3, "OP_FINISHED"

    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 539
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method protected fireSymlinkEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V
    .locals 2

    .line 717
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v1, -0xffffaa

    invoke-direct {v0, p0, v1, p4}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    const-string p4, "CONNECTION"

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 720
    invoke-virtual {v0, p4, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p4

    const-string v0, "FILE_NAME"

    .line 723
    invoke-virtual {p4, v0, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p4, "FILE_TARGET"

    .line 726
    invoke-virtual {p1, p4, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p2, "OP_STARTED"

    .line 729
    invoke-virtual {p1, p2, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 732
    const-string p3, "OP_FINISHED"

    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 717
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method public getCharsetEncoding()Ljava/lang/String;
    .locals 1

    .line 2518
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->CHARSET_ENCODING:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;
    .locals 1

    .line 2502
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 2538
    iget v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I

    return v0
.end method

.method public init(Lcom/sshtools/common/ssh/SessionChannel;Lcom/sshtools/common/ssh/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 108
    invoke-super {p0, p1, p2}, Lcom/sshtools/common/ssh/Subsystem;->init(Lcom/sshtools/common/ssh/SessionChannel;Lcom/sshtools/common/ssh/Context;)V

    .line 110
    const-class v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {p2, v0}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/common/policy/FileSystemPolicy;

    iput-object p2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;

    .line 111
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 115
    :try_start_0
    const-string p2, "1234567890"

    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSFTPCharsetEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 116
    iget-object p2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {p2}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSFTPCharsetEncoding()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->CHARSET_ENCODING:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 119
    iget-object p2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {p2}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSFTPCharsetEncoding()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is not a supported character set encoding. Defaulting to ISO-8859-1"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    const-string p2, "ISO-8859-1"

    iput-object p2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->CHARSET_ENCODING:Ljava/lang/String;

    .line 125
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {p2}, Lcom/sshtools/common/policy/FileSystemPolicy;->getFileFactory()Lcom/sshtools/common/policy/FileFactory;

    move-result-object p2

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sshtools/common/policy/FileFactory;->getFileFactory(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object p2

    .line 127
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->getFileFactory()Lcom/sshtools/common/policy/FileFactory;

    move-result-object v0

    instance-of v0, v0, Lcom/sshtools/common/sftp/SftpOperationWrapper;

    if-eqz v0, :cond_1

    .line 128
    check-cast p2, Lcom/sshtools/common/sftp/SftpOperationWrapper;

    invoke-virtual {p0, p2}, Lcom/sshtools/common/sftp/SftpSubsystem;->addWrapper(Lcom/sshtools/common/sftp/SftpOperationWrapper;)V

    .line 131
    :cond_1
    sget-object p2, Lcom/sshtools/common/sftp/SftpSubsystem;->SUBSYSTEM_INCOMING:Ljava/lang/Integer;

    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystem$InitOperation;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sftp/SftpSubsystem$InitOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;)V

    invoke-virtual {p0, p2, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    .line 134
    new-instance p2, Lcom/sshtools/common/sftp/SftpSubsystem$1;

    invoke-direct {p2, p0}, Lcom/sshtools/common/sftp/SftpSubsystem$1;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;)V

    invoke-interface {p1, p2}, Lcom/sshtools/common/ssh/SessionChannel;->addEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 140
    new-instance p2, Lcom/sshtools/common/permissions/PermissionDeniedException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected onMessageReceived([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_16

    packed-switch v1, :pswitch_data_0

    .line 379
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v1

    const-class v2, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v1, v2}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v1}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSFTPExtensionFactories()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/sftp/SftpExtensionFactory;

    .line 380
    invoke-interface {v2}, Lcom/sshtools/common/sftp/SftpExtensionFactory;->getExtensions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/sftp/SftpExtension;

    .line 381
    aget-byte v4, p1, v0

    invoke-interface {v3, v4}, Lcom/sshtools/common/sftp/SftpExtension;->supportsExtendedMessage(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    sget-object v2, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v4, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedMessageOperation;

    invoke-direct {v4, p0, p1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedMessageOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[BLcom/sshtools/common/sftp/SftpExtension;)V

    invoke-virtual {p0, v2, v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    goto :goto_0

    .line 388
    :cond_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    aget-byte v1, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processing Unsupported Message id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    :cond_3
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$UnsupportedOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$UnsupportedOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 365
    :pswitch_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 366
    const-string v1, "Processing SSH_FXP_SYMLINK"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_4
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 358
    :pswitch_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 359
    const-string v1, "Processing SSH_FXP_READLINK"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_5
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 330
    :pswitch_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 331
    const-string v1, "Processing SSH_FXP_RENAME"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    :cond_6
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 302
    :pswitch_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 303
    const-string v1, "Processing SSH_FXP_STAT"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :cond_7
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 253
    :pswitch_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 254
    const-string v1, "Processing SSH_FXP_REALPATH"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_8
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 337
    :pswitch_5
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 338
    const-string v1, "Processing SSH_FXP_RMDIR"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    :cond_9
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveDirectoryOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveDirectoryOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 246
    :pswitch_6
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 247
    const-string v1, "Processing SSH_FXP_MKDIR"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :cond_a
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 323
    :pswitch_7
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 324
    const-string v1, "Processing SSH_FXP_REMOVE"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_b
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 288
    :pswitch_8
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 289
    const-string v1, "Processing SSH_FXP_READDIR"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :cond_c
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 260
    :pswitch_9
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 261
    const-string v1, "Processing SSH_FXP_OPENDIR"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_d
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 351
    :pswitch_a
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 352
    const-string v1, "Processing SSH_FXP_FSETSTAT"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :cond_e
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$SetFStatOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$SetFStatOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 344
    :pswitch_b
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 345
    const-string v1, "Processing SSH_FXP_SETSTAT"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_f
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 309
    :pswitch_c
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 310
    const-string v1, "Processing SSH_FXP_FSTAT"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_10
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$FStatOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$FStatOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 295
    :pswitch_d
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 296
    const-string v1, "Processing SSH_FXP_LSTAT"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_11
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$LStatOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$LStatOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 281
    :pswitch_e
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 282
    const-string v1, "Processing SSH_FXP_WRITE"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_12
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 274
    :pswitch_f
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 275
    const-string v1, "Processing SSH_FXP_READ"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :cond_13
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 316
    :pswitch_10
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 317
    const-string v1, "Processing SSH_FXP_CLOSE"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :cond_14
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 267
    :pswitch_11
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 268
    const-string v1, "Processing SSH_FXP_OPEN"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :cond_15
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 372
    :cond_16
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 373
    const-string v1, "Processing SSH_FXP_EXTENDED"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    :cond_17
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystem;->SFTP_QUEUE:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedOperation;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 239
    :cond_18
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 240
    const-string v1, "Processing SSH_FXP_INIT"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :cond_19
    invoke-direct {p0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->onInitialize([B)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSubsystemFree()V
    .locals 0

    return-void
.end method

.method public removeWrapper(Lcom/sshtools/common/sftp/SftpOperationWrapper;)V
    .locals 1

    .line 2514
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->wrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendAttributesMessage(ILcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1983
    iget v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I

    invoke-virtual {p2, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toByteArray(I)[B

    move-result-object p2

    .line 1984
    new-instance v0, Lcom/sshtools/common/ssh/Packet;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Lcom/sshtools/common/ssh/Packet;-><init>(I)V

    const/16 v1, 0x69

    .line 1985
    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1986
    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 1987
    invoke-virtual {v0, p2}, Lcom/sshtools/common/ssh/Packet;->write([B)V

    .line 1989
    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    return-void
.end method

.method public sendFilenameMessage(I[Lcom/sshtools/common/sftp/SftpFile;ZZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2252
    new-instance v0, Lcom/sshtools/common/ssh/Packet;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/sshtools/common/ssh/Packet;-><init>(I)V

    const/16 v1, 0x68

    .line 2253
    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 2254
    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 2255
    array-length p1, p2

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    const/4 p1, 0x0

    .line 2257
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_3

    if-eqz p4, :cond_0

    .line 2259
    aget-object v1, p2, p1

    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2260
    :cond_0
    aget-object v1, p2, p1

    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->CHARSET_ENCODING:Ljava/lang/String;

    .line 2258
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    iget v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    if-eqz p3, :cond_1

    .line 2262
    aget-object v1, p2, p1

    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2263
    :cond_1
    aget-object v1, p2, p1

    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v2}, Lcom/sshtools/common/ssh/SshConnection;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->formatLongnameInContext(Lcom/sshtools/common/sftp/SftpFile;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->CHARSET_ENCODING:Ljava/lang/String;

    .line 2262
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    :cond_2
    aget-object v1, p2, p1

    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v1

    iget v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I

    invoke-virtual {v1, v2}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toByteArray(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->write([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2269
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 2271
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/Packet;->size()I

    move-result p1

    return p1
.end method

.method public sendHandleMessage(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1188
    new-instance v0, Lcom/sshtools/common/ssh/Packet;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x9

    invoke-direct {v0, v1}, Lcom/sshtools/common/ssh/Packet;-><init>(I)V

    const/16 v1, 0x66

    .line 1189
    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1190
    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 1191
    invoke-virtual {v0, p2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 1193
    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    return-void
.end method

.method public sendStatusMessage(IILjava/lang/String;)V
    .locals 2

    .line 2118
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending SSH_FXP_STATUS: : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2122
    :cond_0
    :try_start_0
    new-instance v0, Lcom/sshtools/common/ssh/Packet;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/sshtools/common/ssh/Packet;-><init>(I)V

    const/16 v1, 0x65

    .line 2123
    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 2124
    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 2125
    invoke-virtual {v0, p2}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 2127
    iget p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I

    const/4 p2, 0x2

    if-le p1, p2, :cond_1

    .line 2128
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, p3, p1}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 2132
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2134
    :catch_0
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannel;->close()V

    return-void
.end method

.method public submitTask(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
