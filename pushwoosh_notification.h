#ifndef NATIVE_EXTENSION_GRAB_H
#define NATIVE_EXTENSION_GRAB_H

#include <nan.h>

using namespace v8;

class PushWooshElectron : public Nan::ObjectWrap {
  public:
    static NAN_MODULE_INIT(Init);

  private:
    explicit PushWooshElectron();
    ~PushWooshElectron();

    static NAN_METHOD(New);
    static NAN_METHOD(Close);

    static Nan::Persistent<Function> constructor;
};

#endif
