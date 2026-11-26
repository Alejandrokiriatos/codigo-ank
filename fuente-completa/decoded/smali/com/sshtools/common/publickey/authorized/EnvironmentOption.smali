.class public Lcom/sshtools/common/publickey/authorized/EnvironmentOption;
.super Lcom/sshtools/common/publickey/authorized/StringOption;
.source "EnvironmentOption.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    const-string v0, "environment"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/publickey/authorized/StringOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "environment"

    invoke-direct {p0, p2, p1}, Lcom/sshtools/common/publickey/authorized/StringOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEnvironmentName()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->splitName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironmentValue()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->splitValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFormattedOption()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/sshtools/common/publickey/authorized/StringOption;->getFormattedOption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
