.class Lcom/sshtools/common/sshd/config/SshdConfigFile$3;
.super Ljava/lang/Object;
.source "SshdConfigFile.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/SshdConfigFile;->removeMatchEntry(Lcom/sshtools/common/sshd/config/MatchEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/SshdConfigFile;

.field final synthetic val$entry:Lcom/sshtools/common/sshd/config/MatchEntry;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;Lcom/sshtools/common/sshd/config/MatchEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$3;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$3;->val$entry:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigFile$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$3;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-static {v0}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->-$$Nest$fgetmatchEntries(Lcom/sshtools/common/sshd/config/SshdConfigFile;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$3;->val$entry:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method
