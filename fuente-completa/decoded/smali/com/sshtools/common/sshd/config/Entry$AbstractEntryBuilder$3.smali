.class Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$3;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->resetPointer()Ljava/lang/Object;
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


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$3;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
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

    .line 639
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$3;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->pointer:I

    .line 640
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$3;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    return-object v0
.end method
