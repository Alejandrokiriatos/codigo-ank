.class abstract Lcom/sshtools/common/publickey/authorized/StringOption;
.super Lcom/sshtools/common/publickey/authorized/Option;
.source "StringOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/common/publickey/authorized/Option<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/publickey/authorized/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getFormattedOption()Ljava/lang/String;
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/authorized/StringOption;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/common/publickey/authorized/StringOption;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
