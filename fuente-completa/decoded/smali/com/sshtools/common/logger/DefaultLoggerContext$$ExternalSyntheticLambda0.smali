.class public final synthetic Lcom/sshtools/common/logger/DefaultLoggerContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sshtools/common/logger/FileWatchingCallback;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/common/logger/DefaultLoggerContext;

.field public final synthetic f$1:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/common/logger/DefaultLoggerContext;Ljava/nio/file/Path;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/logger/DefaultLoggerContext$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/common/logger/DefaultLoggerContext;

    iput-object p2, p0, Lcom/sshtools/common/logger/DefaultLoggerContext$$ExternalSyntheticLambda0;->f$1:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final changed(Ljava/nio/file/Path;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/common/logger/DefaultLoggerContext;

    iget-object v1, p0, Lcom/sshtools/common/logger/DefaultLoggerContext$$ExternalSyntheticLambda0;->f$1:Ljava/nio/file/Path;

    invoke-virtual {v0, v1, p1}, Lcom/sshtools/common/logger/DefaultLoggerContext;->lambda$new$0$com-sshtools-common-logger-DefaultLoggerContext(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    return-void
.end method
