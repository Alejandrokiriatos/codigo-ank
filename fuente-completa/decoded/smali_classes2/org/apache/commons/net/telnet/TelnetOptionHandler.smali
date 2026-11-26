.class public abstract Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.super Ljava/lang/Object;
.source "TelnetOptionHandler.java"


# instance fields
.field private acceptLocal:Z

.field private acceptRemote:Z

.field private doFlag:Z

.field private initialLocal:Z

.field private initialRemote:Z

.field private optionCode:I

.field private willFlag:Z


# direct methods
.method public constructor <init>(IZZZZ)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    .line 74
    iput-boolean p2, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    .line 75
    iput-boolean p3, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    .line 76
    iput-boolean p4, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    .line 77
    iput-boolean p5, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAcceptLocal()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    return v0
.end method

.method public getAcceptRemote()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    return v0
.end method

.method getDo()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    return v0
.end method

.method public getInitLocal()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    return v0
.end method

.method public getInitRemote()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    return v0
.end method

.method public getOptionCode()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    return v0
.end method

.method getWill()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    return v0
.end method

.method public setAcceptLocal(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    return-void
.end method

.method public setAcceptRemote(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    return-void
.end method

.method setDo(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    return-void
.end method

.method public setInitLocal(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    return-void
.end method

.method public setInitRemote(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    return-void
.end method

.method setWill(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    return-void
.end method

.method public startSubnegotiationLocal()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationRemote()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
