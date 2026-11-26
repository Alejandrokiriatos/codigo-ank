.class Lorg/apache/cordova/CoreAndroid$5;
.super Ljava/lang/Object;
.source "CoreAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CoreAndroid;->overrideBackbutton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/CoreAndroid;

.field final synthetic val$shouldOverride:Z


# direct methods
.method constructor <init>(Lorg/apache/cordova/CoreAndroid;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    iput-boolean p2, p0, Lorg/apache/cordova/CoreAndroid$5;->val$shouldOverride:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 265
    iget-boolean v0, p0, Lorg/apache/cordova/CoreAndroid$5;->val$shouldOverride:Z

    if-eqz v0, :cond_1

    .line 266
    const-string v0, "App"

    const-string v1, "WARNING: Back Button Default Behavior will be overridden.  The backbutton event will be fired!"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    invoke-static {v0}, Lorg/apache/cordova/CoreAndroid;->-$$Nest$fgetbackButtonHandlerLock(Lorg/apache/cordova/CoreAndroid;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    invoke-static {v1}, Lorg/apache/cordova/CoreAndroid;->-$$Nest$fgetbackCallback(Lorg/apache/cordova/CoreAndroid;)Landroidx/activity/OnBackPressedCallback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    new-instance v2, Lorg/apache/cordova/CoreAndroid$5$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/CoreAndroid$5$1;-><init>(Lorg/apache/cordova/CoreAndroid$5;Z)V

    invoke-static {v1, v2}, Lorg/apache/cordova/CoreAndroid;->-$$Nest$fputbackCallback(Lorg/apache/cordova/CoreAndroid;Landroidx/activity/OnBackPressedCallback;)V

    .line 275
    iget-object v1, p0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    iget-object v1, v1, Lorg/apache/cordova/CoreAndroid;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    .line 276
    invoke-interface {v1}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    invoke-static {v3}, Lorg/apache/cordova/CoreAndroid;->-$$Nest$fgetbackCallback(Lorg/apache/cordova/CoreAndroid;)Landroidx/activity/OnBackPressedCallback;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 278
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 280
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    invoke-static {v0}, Lorg/apache/cordova/CoreAndroid;->-$$Nest$fgetbackButtonHandlerLock(Lorg/apache/cordova/CoreAndroid;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 281
    :try_start_1
    iget-object v1, p0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    invoke-static {v1}, Lorg/apache/cordova/CoreAndroid;->-$$Nest$fgetbackCallback(Lorg/apache/cordova/CoreAndroid;)Landroidx/activity/OnBackPressedCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    invoke-static {v1}, Lorg/apache/cordova/CoreAndroid;->-$$Nest$fgetbackCallback(Lorg/apache/cordova/CoreAndroid;)Landroidx/activity/OnBackPressedCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 283
    iget-object v1, p0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/cordova/CoreAndroid;->-$$Nest$fputbackCallback(Lorg/apache/cordova/CoreAndroid;Landroidx/activity/OnBackPressedCallback;)V

    .line 285
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    iget-object v0, v0, Lorg/apache/cordova/CoreAndroid;->webView:Lorg/apache/cordova/CordovaWebView;

    const/4 v1, 0x4

    iget-boolean v2, p0, Lorg/apache/cordova/CoreAndroid$5;->val$shouldOverride:Z

    invoke-interface {v0, v1, v2}, Lorg/apache/cordova/CordovaWebView;->setButtonPlumbedToJs(IZ)V

    return-void

    :catchall_1
    move-exception v1

    .line 285
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
