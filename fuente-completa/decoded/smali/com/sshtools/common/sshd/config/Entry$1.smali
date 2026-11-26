.class Lcom/sshtools/common/sshd/config/Entry$1;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry;->getKeyEntries()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/Entry;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$1;->this$0:Lcom/sshtools/common/sshd/config/Entry;

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

    .line 64
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$1;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$1;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iget-object v0, v0, Lcom/sshtools/common/sshd/config/Entry;->keyEntries:Ljava/util/Map;

    return-object v0
.end method
