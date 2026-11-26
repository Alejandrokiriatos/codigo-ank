.class Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile$ErrorEntry;
.super Lcom/sshtools/common/util/Entry;
.source "AuthorizedKeyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/common/util/Entry<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;


# direct methods
.method constructor <init>(Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;Ljava/lang/String;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile$ErrorEntry;->this$0:Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;

    .line 372
    invoke-direct {p0, p2}, Lcom/sshtools/common/util/Entry;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getFormattedEntry()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile$ErrorEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
