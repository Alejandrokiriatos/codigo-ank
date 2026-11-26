.class public Lcom/sshtools/common/publickey/authorized/FromOption;
.super Lcom/sshtools/common/publickey/authorized/StringCollectionOption;
.source "FromOption.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    const-string v0, "from"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/publickey/authorized/StringCollectionOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    const-string v0, "from"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/publickey/authorized/StringCollectionOption;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getFormattedOption()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/sshtools/common/publickey/authorized/StringCollectionOption;->getFormattedOption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
