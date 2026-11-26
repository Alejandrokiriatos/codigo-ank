.class public interface abstract Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorListener;
.super Ljava/lang/Object;
.source "IOStreamConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/util/IOStreamConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOStreamConnectorListener"
.end annotation


# virtual methods
.method public abstract connectorClosed(Lcom/sshtools/common/util/IOStreamConnector;)V
.end method

.method public abstract connectorTimeout(Lcom/sshtools/common/util/IOStreamConnector;)V
.end method

.method public abstract dataTransfered([BI)V
.end method
