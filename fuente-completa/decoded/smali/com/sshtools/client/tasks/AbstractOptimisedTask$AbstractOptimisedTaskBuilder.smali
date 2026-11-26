.class public abstract Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
.super Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;
.source "AbstractOptimisedTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/AbstractOptimisedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractOptimisedTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder<",
        "TB;TT;T",
        "LOCALFILE;",
        ">;T:",
        "Lcom/sshtools/client/tasks/AbstractOptimisedTask<",
        "**>;",
        "LOCALFILE:Ljava/lang/Object;",
        ">",
        "Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder<",
        "TB;TT;>;"
    }
.end annotation


# instance fields
.field private blocksize:I

.field private buffersize:I

.field private chunkProgress:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "T",
            "LOCALFILE;",
            "Lcom/sshtools/client/tasks/FileTransferProgress;",
            ">;"
        }
    .end annotation
.end field

.field private chunks:I

.field private digest:Lcom/sshtools/client/sftp/RemoteHash;

.field private ignoreIntegrity:Z

.field private outstandingRequests:I

.field private primarySftpClient:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/sftp/SftpClient;",
            ">;"
        }
    .end annotation
.end field

.field private progressMessages:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/AbstractOptimisedTask$ProgressMessages;",
            ">;"
        }
    .end annotation
.end field

.field private verboseOutput:Z

.field private verifyIntegrity:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetblocksize(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->blocksize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbuffersize(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->buffersize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchunkProgress(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Ljava/util/function/Function;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->chunkProgress:Ljava/util/function/Function;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchunks(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->chunks:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdigest(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Lcom/sshtools/client/sftp/RemoteHash;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->digest:Lcom/sshtools/client/sftp/RemoteHash;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreIntegrity(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->ignoreIntegrity:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoutstandingRequests(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->outstandingRequests:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprimarySftpClient(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->primarySftpClient:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressMessages(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->progressMessages:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetverboseOutput(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->verboseOutput:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetverifyIntegrity(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->verifyIntegrity:Z

    return p0
.end method

.method protected constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;-><init>()V

    const/4 v0, 0x3

    .line 103
    iput v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->chunks:I

    const v0, 0x8000

    .line 104
    iput v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->blocksize:I

    const v0, 0xfa000

    .line 105
    iput v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->buffersize:I

    const/16 v0, 0x40

    .line 106
    iput v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->outstandingRequests:I

    .line 108
    sget-object v0, Lcom/sshtools/client/sftp/RemoteHash;->md5:Lcom/sshtools/client/sftp/RemoteHash;

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->digest:Lcom/sshtools/client/sftp/RemoteHash;

    .line 110
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->primarySftpClient:Ljava/util/Optional;

    .line 111
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->progressMessages:Ljava/util/Optional;

    .line 112
    new-instance v0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->chunkProgress:Ljava/util/function/Function;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->verboseOutput:Z

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Object;)Lcom/sshtools/client/tasks/FileTransferProgress;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final withAsyncRequests(I)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 280
    iput p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->outstandingRequests:I

    return-object p0
.end method

.method public final withBlocksize(I)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 265
    iput p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->blocksize:I

    return-object p0
.end method

.method public final withBufferSize(I)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 184
    iput p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->buffersize:I

    return-object p0
.end method

.method public final withChunkProgress(Ljava/util/function/Function;)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "T",
            "LOCALFILE;",
            "Lcom/sshtools/client/tasks/FileTransferProgress;",
            ">;)TB;"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->chunkProgress:Ljava/util/function/Function;

    return-object p0
.end method

.method public final withChunks(I)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 173
    iput p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->chunks:I

    return-object p0
.end method

.method public final withDigest(Lcom/sshtools/client/sftp/RemoteHash;)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/sftp/RemoteHash;",
            ")TB;"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->digest:Lcom/sshtools/client/sftp/RemoteHash;

    return-object p0
.end method

.method public final withIgnoreIntegrity()Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->ignoreIntegrity:Z

    return-object p0
.end method

.method public final withIgnoreIntegrity(Z)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 234
    iput-boolean p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->ignoreIntegrity:Z

    return-object p0
.end method

.method public final withIntegrityVerification(Z)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 211
    iput-boolean p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->verifyIntegrity:Z

    return-object p0
.end method

.method public final withPrimarySftpClient(Lcom/sshtools/client/sftp/SftpClient;)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/sftp/SftpClient;",
            ")TB;"
        }
    .end annotation

    .line 161
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->primarySftpClient:Ljava/util/Optional;

    return-object p0
.end method

.method public final withProgressMessages(Lcom/sshtools/client/tasks/AbstractOptimisedTask$ProgressMessages;)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractOptimisedTask$ProgressMessages;",
            ")TB;"
        }
    .end annotation

    .line 129
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->progressMessages:Ljava/util/Optional;

    return-object p0
.end method

.method public final withVerboseOutput()Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 289
    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->withVerboseOutput(Z)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withVerboseOutput(Z)Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 298
    iput-boolean p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->verboseOutput:Z

    return-object p0
.end method

.method public final withVerifyIntegrity()Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->verifyIntegrity:Z

    return-object p0
.end method
