.class public final Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
.super Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;
.source "ShellTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/ShellTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShellTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder<",
        "Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;",
        "Lcom/sshtools/client/SessionChannelNG;",
        "Lcom/sshtools/client/tasks/ShellTask;",
        ">;"
    }
.end annotation


# instance fields
.field private autoConsume:Z

.field private cols:I

.field private modes:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/synergy/ssh/TerminalModes;",
            ">;"
        }
    .end annotation
.end field

.field private onBeforeOpen:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onBeforeTask:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onClose:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onTask:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private rows:I

.field private termType:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private withPty:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetautoConsume(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->autoConsume:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcols(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->cols:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmodes(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->modes:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonBeforeOpen(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onBeforeOpen:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonBeforeTask(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onBeforeTask:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonClose(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onClose:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonTask(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onTask:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrows(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->rows:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettermType(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->termType:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwithPty(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->withPty:Z

    return p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;-><init>()V

    .line 72
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onClose:Ljava/util/Optional;

    .line 73
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onBeforeOpen:Ljava/util/Optional;

    .line 74
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onBeforeTask:Ljava/util/Optional;

    .line 75
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onTask:Ljava/util/Optional;

    .line 76
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->termType:Ljava/util/Optional;

    const/16 v0, 0x50

    .line 77
    iput v0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->cols:I

    const/16 v0, 0x18

    .line 78
    iput v0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->rows:I

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->withPty:Z

    .line 80
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->modes:Ljava/util/Optional;

    return-void
.end method

.method public static create()Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 1

    .line 114
    new-instance v0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sshtools/client/tasks/AbstractConnectionTask;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->build()Lcom/sshtools/client/tasks/ShellTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sshtools/client/tasks/ShellTask;
    .locals 2

    .line 233
    new-instance v0, Lcom/sshtools/client/tasks/ShellTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/client/tasks/ShellTask;-><init>(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;Lcom/sshtools/client/tasks/ShellTask-IA;)V

    return-object v0
.end method

.method public final onBeforeOpen(Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 0

    .line 185
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onBeforeOpen:Ljava/util/Optional;

    return-object p0
.end method

.method public final onBeforeTask(Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 0

    .line 212
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onBeforeTask:Ljava/util/Optional;

    return-object p0
.end method

.method public final onClose(Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 199
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onClose:Ljava/util/Optional;

    return-object p0
.end method

.method public final onTask(Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 0

    .line 227
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->onTask:Ljava/util/Optional;

    return-object p0
.end method

.method public withAutoConsume()Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->withAutoConsume(Z)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withAutoConsume(Z)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->autoConsume:Z

    return-object p0
.end method

.method public final withColumns(I)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 0

    .line 148
    iput p1, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->cols:I

    return-object p0
.end method

.method public final withModes(Lcom/sshtools/synergy/ssh/TerminalModes;)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 0

    .line 172
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->modes:Ljava/util/Optional;

    return-object p0
.end method

.method public withPty(Z)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->withPty:Z

    return-object p0
.end method

.method public final withRows(I)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 0

    .line 160
    iput p1, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->rows:I

    return-object p0
.end method

.method public final withTermType(Ljava/lang/String;)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 0

    .line 125
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->withTermType(Ljava/util/Optional;)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final withTermType(Ljava/util/Optional;)Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->termType:Ljava/util/Optional;

    return-object p0
.end method

.method public withoutPty()Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->withPty:Z

    return-object p0
.end method
