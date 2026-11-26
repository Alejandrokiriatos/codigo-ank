.class public abstract Lcom/sshtools/common/logger/AbstractLoggingContext;
.super Ljava/lang/Object;
.source "AbstractLoggingContext.java"

# interfaces
.implements Lcom/sshtools/common/logger/LoggerContext;


# instance fields
.field level:Lcom/sshtools/common/logger/Log$Level;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->INFO:Lcom/sshtools/common/logger/Log$Level;

    iput-object v0, p0, Lcom/sshtools/common/logger/AbstractLoggingContext;->level:Lcom/sshtools/common/logger/Log$Level;

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/logger/Log$Level;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->INFO:Lcom/sshtools/common/logger/Log$Level;

    .line 36
    iput-object p1, p0, Lcom/sshtools/common/logger/AbstractLoggingContext;->level:Lcom/sshtools/common/logger/Log$Level;

    return-void
.end method


# virtual methods
.method public getLevel()Lcom/sshtools/common/logger/Log$Level;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sshtools/common/logger/AbstractLoggingContext;->level:Lcom/sshtools/common/logger/Log$Level;

    return-object v0
.end method

.method public isLogging(Lcom/sshtools/common/logger/Log$Level;)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sshtools/common/logger/AbstractLoggingContext;->level:Lcom/sshtools/common/logger/Log$Level;

    invoke-virtual {v0}, Lcom/sshtools/common/logger/Log$Level;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/sshtools/common/logger/Log$Level;->ordinal()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
