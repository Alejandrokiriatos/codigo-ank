.class Lcom/sshtools/common/sshd/config/Entry$2;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry;->find(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/Entry;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$2;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/Entry$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$2;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iget-object v0, v0, Lcom/sshtools/common/sshd/config/Entry;->keyEntries:Ljava/util/Map;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$2;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$2;->call()Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    move-result-object v0

    return-object v0
.end method
