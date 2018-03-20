#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
//#import "Pushwoosh.framework/Versions/A/Headers/PushNotificationManager.h"

#include "pushwoosh_notification.h"

using namespace v8;

Nan::Persistent<Function> PushWooshElectron::constructor;

NAN_MODULE_INIT(PushWooshElectron::Init) {
  Local<FunctionTemplate> tpl = Nan::New<FunctionTemplate>(New);
  tpl->SetClassName(Nan::New("PushWooshElectron").ToLocalChecked());
  tpl->InstanceTemplate()->SetInternalFieldCount(0);

  Nan::SetMethod(tpl->InstanceTemplate(), "close", Close);

  constructor.Reset(Nan::GetFunction(tpl).ToLocalChecked());
  Nan::Set(target, Nan::New("PushWooshElectron").ToLocalChecked(), Nan::GetFunction(tpl).ToLocalChecked());
}

PushWooshElectron::PushWooshElectron(){}

PushWooshElectron::~PushWooshElectron() {}

NAN_METHOD(PushWooshElectron::New) {
  if (info.IsConstructCall()) {

    PushWooshElectron * pushElec = new PushWooshElectron();
	
	//NSUserNotificationCenter *center = [NSUserNotificationCenter defaultUserNotificationCenter];
	//center.delegate = pushElec;
	
	//[[PushNotificationManager pushManager] handlePushReceived:[[NSApplication sharedApplication] userInfo]];
	//[[PushNotificationManager pushManager] sendAppOpen];
	//[[PushNotificationManager pushManager] registerForPushNotifications];
	
    pushElec->Wrap(info.This());
    info.GetReturnValue().Set(info.This());
  } else {
    const int argc = 1;
    Local<Value> argv[argc] = {info[0]};
    Local<Function> cons = Nan::New(constructor);
    info.GetReturnValue().Set(cons->NewInstance(argc, argv));
  }
}

NAN_METHOD(PushWooshElectron::Close) {
  info.GetReturnValue().SetUndefined();
}
