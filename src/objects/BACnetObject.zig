const std = @import("std");
const bac = @import("../root.zig");
const prop = @import("./properties.zig");

const ReadableProperty = prop.ReadableProperty;
const WriteableProperty = prop.WriteableProperty;
const OptionalProperty = prop.OptionalProperty;
const ObjectIdentifierProperty = prop.ObjectIdentifierProperty;

/// Define a general BACnet Object Interface
const BACnetObject = struct {
    
    // Base Object Properties
    const Properties = struct { 
        objectIdentifier: ObjectIdentifierProperty, 
        objectName: ReadableProperty, 
        description: OptionalProperty, 
        profileName: OptionalProperty, 
        propertyList: ReadableProperty, 
        auditLevel: OptionalProperty, 
        auditableOperations: OptionalProperty, 
        tags: OptionalProperty, 
        profileLocation: OptionalProperty 
    };

    pub fn init(self: *BACnetObject, properties: BACnetObject.Properties, _: anytype) BACnetObject {
        _ = self;
        return BACnetObject{
            .Properties = properties
        };

    }
};
