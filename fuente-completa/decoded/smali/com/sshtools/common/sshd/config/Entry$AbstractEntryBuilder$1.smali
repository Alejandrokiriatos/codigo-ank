.class Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$1;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->addEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

.field final synthetic val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$1;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$1;->val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$1;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$1;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    iget v1, v1, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->pointer:I

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$1;->val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/sshd/config/Entry;->addEntry(ILcom/sshtools/common/sshd/config/SshdConfigFileEntry;)I

    move-result v0

    .line 557
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$1;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    iget v1, v1, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->pointer:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 558
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$1;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    iput v0, v1, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->pointer:I

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$1;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    return-object v0
.end method
