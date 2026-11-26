.class public final Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;
.super Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;
.source "UploadInputStreamTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/UploadInputStreamTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadInputStreamTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder<",
        "Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;",
        "Lcom/sshtools/client/tasks/UploadInputStreamTask;",
        ">;"
    }
.end annotation


# instance fields
.field private input:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private length:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private remote:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetinput(Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->input:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlength(Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->length:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremote(Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->remote:Ljava/util/Optional;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;-><init>()V

    .line 50
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->remote:Ljava/util/Optional;

    .line 51
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->input:Ljava/util/Optional;

    .line 52
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->length:Ljava/util/Optional;

    return-void
.end method

.method public static create()Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;
    .locals 1

    .line 63
    new-instance v0, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$withRemotePath$0(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    const/4 v0, 0x0

    .line 75
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sshtools/client/tasks/AbstractConnectionTask;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->build()Lcom/sshtools/client/tasks/UploadInputStreamTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sshtools/client/tasks/UploadInputStreamTask;
    .locals 2

    .line 140
    new-instance v0, Lcom/sshtools/client/tasks/UploadInputStreamTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/client/tasks/UploadInputStreamTask;-><init>(Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;Lcom/sshtools/client/tasks/UploadInputStreamTask-IA;)V

    return-object v0
.end method

.method public withInputStream(Ljava/io/InputStream;)Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;
    .locals 0

    .line 120
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->input:Ljava/util/Optional;

    return-object p0
.end method

.method public withLength(J)Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;
    .locals 0

    .line 134
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->length:Ljava/util/Optional;

    return-object p0
.end method

.method public withRemote(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;
    .locals 0

    .line 86
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->withRemote(Ljava/util/Optional;)Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemote(Ljava/util/Optional;)Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->remote:Ljava/util/Optional;

    return-object p0
.end method

.method public withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;
    .locals 0

    .line 109
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->withRemotePath(Ljava/util/Optional;)Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemotePath(Ljava/util/Optional;)Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->withRemote(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;

    move-result-object p1

    return-object p1
.end method
