.class public Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;
.super Ljava/lang/Object;
.source "SshdConfigFileCursor.java"


# instance fields
.field private currentEntryStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/sshtools/common/sshd/config/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->currentEntryStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public get()Lcom/sshtools/common/sshd/config/Entry;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->currentEntryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sshd/config/Entry;

    return-object v0
.end method

.method public remove()Lcom/sshtools/common/sshd/config/Entry;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->currentEntryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->currentEntryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sshd/config/Entry;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/sshtools/common/sshd/config/Entry;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->currentEntryStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
