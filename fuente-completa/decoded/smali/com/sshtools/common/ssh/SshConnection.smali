.class public interface abstract Lcom/sshtools/common/ssh/SshConnection;
.super Ljava/lang/Object;
.source "SshConnection.java"

# interfaces
.implements Lcom/sshtools/common/events/EventTrigger;


# virtual methods
.method public abstract addEventListener(Lcom/sshtools/common/events/EventListener;)V
.end method

.method public abstract addTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)Lcom/sshtools/common/ssh/ConnectionAwareTask;
.end method

.method public abstract addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
.end method

.method public abstract containsProperty(Ljava/lang/String;)Z
.end method

.method public abstract disconnect()V
.end method

.method public abstract disconnect(ILjava/lang/String;)V
.end method

.method public abstract disconnect(Ljava/lang/String;)V
.end method

.method public abstract executeTask(Ljava/lang/Runnable;)V
.end method

.method public abstract getAuthenticatedFuture()Lcom/sshtools/common/ssh/AbstractRequestFuture;
.end method

.method public abstract getCipherInUseCS()Ljava/lang/String;
.end method

.method public abstract getCipherInUseSC()Ljava/lang/String;
.end method

.method public abstract getCompressionInUseCS()Ljava/lang/String;
.end method

.method public abstract getCompressionInUseSC()Ljava/lang/String;
.end method

.method public abstract getConnectionManager()Lcom/sshtools/common/ssh/SshConnectionManager;
.end method

.method public abstract getContext()Lcom/sshtools/common/ssh/Context;
.end method

.method public abstract getDisconnectFuture()Lcom/sshtools/common/ssh/AbstractRequestFuture;
.end method

.method public abstract getHostKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
.end method

.method public abstract getHostKeyInUse()Ljava/lang/String;
.end method

.method public abstract getKeyExchangeInUse()Ljava/lang/String;
.end method

.method public abstract getLocalAddress()Ljava/net/InetAddress;
.end method

.method public abstract getLocalPort()I
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getMacInUseCS()Ljava/lang/String;
.end method

.method public abstract getMacInUseSC()Ljava/lang/String;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getRemoteCiphersCS()[Ljava/lang/String;
.end method

.method public abstract getRemoteCiphersSC()[Ljava/lang/String;
.end method

.method public abstract getRemoteCompressionsCS()[Ljava/lang/String;
.end method

.method public abstract getRemoteCompressionsSC()[Ljava/lang/String;
.end method

.method public abstract getRemoteIPAddress()Ljava/lang/String;
.end method

.method public abstract getRemoteIdentification()Ljava/lang/String;
.end method

.method public abstract getRemoteKeyExchanges()[Ljava/lang/String;
.end method

.method public abstract getRemoteMacsCS()[Ljava/lang/String;
.end method

.method public abstract getRemoteMacsSC()[Ljava/lang/String;
.end method

.method public abstract getRemotePort()I
.end method

.method public abstract getRemotePublicKeys()[Ljava/lang/String;
.end method

.method public abstract getServerVersion()Ljava/lang/String;
.end method

.method public abstract getSessionCount()I
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getTotalBytesIn()J
.end method

.method public abstract getTotalBytesOut()J
.end method

.method public abstract getUUID()Ljava/lang/String;
.end method

.method public abstract getUsername()Ljava/lang/String;
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isDisconnecting()Z
.end method

.method public abstract openChannel(Lcom/sshtools/common/ssh/Channel;)V
.end method

.method public abstract removeEventListener(Lcom/sshtools/common/events/EventListener;)V
.end method

.method public abstract removeProperty(Ljava/lang/String;)V
.end method

.method public abstract sendGlobalRequest(Lcom/sshtools/common/ssh/GlobalRequest;)V
.end method

.method public abstract sendGlobalRequest(Lcom/sshtools/common/ssh/GlobalRequest;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendGlobalRequestAndWait(Lcom/sshtools/common/ssh/GlobalRequest;J)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setUsername(Ljava/lang/String;)V
.end method

.method public abstract startLogging()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startLogging(Lcom/sshtools/common/logger/Log$Level;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
