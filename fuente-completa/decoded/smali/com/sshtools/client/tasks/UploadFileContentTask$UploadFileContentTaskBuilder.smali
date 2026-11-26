.class public final Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;
.super Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;
.source "UploadFileContentTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/UploadFileContentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadFileContentTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder<",
        "Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;",
        "Lcom/sshtools/client/tasks/UploadFileContentTask;",
        ">;"
    }
.end annotation


# instance fields
.field private content:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/charset/Charset;",
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
.method static bridge synthetic -$$Nest$fgetcontent(Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->content:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetencoding(Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->encoding:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremote(Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->remote:Ljava/util/Optional;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;-><init>()V

    .line 50
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->remote:Ljava/util/Optional;

    .line 51
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->content:Ljava/util/Optional;

    .line 52
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->encoding:Ljava/util/Optional;

    return-void
.end method

.method public static create()Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;
    .locals 1

    .line 63
    new-instance v0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$withRemotePath$0(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    const/4 v0, 0x0

    .line 99
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sshtools/client/tasks/AbstractConnectionTask;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->build()Lcom/sshtools/client/tasks/UploadFileContentTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sshtools/client/tasks/UploadFileContentTask;
    .locals 2

    .line 150
    new-instance v0, Lcom/sshtools/client/tasks/UploadFileContentTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/client/tasks/UploadFileContentTask;-><init>(Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;Lcom/sshtools/client/tasks/UploadFileContentTask-IA;)V

    return-object v0
.end method

.method public withContent(Ljava/lang/Object;)Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;
    .locals 0

    .line 144
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->content:Ljava/util/Optional;

    return-object p0
.end method

.method public withEncoding(Ljava/lang/String;)Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;
    .locals 0

    if-nez p1, :cond_0

    .line 74
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->encoding:Ljava/util/Optional;

    return-object p0

    .line 77
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->withEncoding(Ljava/nio/charset/Charset;)Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withEncoding(Ljava/nio/charset/Charset;)Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;
    .locals 0

    .line 87
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->encoding:Ljava/util/Optional;

    return-object p0
.end method

.method public withRemote(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;
    .locals 0

    .line 110
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->withRemote(Ljava/util/Optional;)Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemote(Ljava/util/Optional;)Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->remote:Ljava/util/Optional;

    return-object p0
.end method

.method public withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;
    .locals 0

    .line 133
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->withRemotePath(Ljava/util/Optional;)Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemotePath(Ljava/util/Optional;)Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->withRemote(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;

    move-result-object p1

    return-object p1
.end method
