contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_4c6da269(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require 4 <= ('cd', 4).length
    require ('cd', 4).length <= ('cd', 4).length
    require ('cd', 4).length - 4 >= 128
    require ('cd', 4)[0] == ('signextend', 15, ('cd', ('add', 40, ('cd', 4))))
    require ('cd', 4)[1] == ('signextend', 15, ('cd', ('add', 72, ('cd', 4))))
    require ('cd', 4)[2] == ('cd', 4)[2]
    require ('cd', 4)[3] == ('cd', 4)[3]
    if ('cd', 4).length >= 4:
        return 32, 132, 
               Mask(32, 224, ('cd', 4)[0]) >> 224, ('signextend', 15, ('cd', ('add', 40, ('cd', 4)))), ('signextend', 15, ('cd', ('add', 72, ('cd', 4)))), cd[36], ('cd', 4)[3], 0 >> 800,
               0
    return 32, 132, 
           Mask(32, 224, Mask(32, 224, ('cd', 4)[0]) and 0xffffffff00000000000000000000000000000000000000000000000000000000 << 8 * -('cd', 4).length + 4) >> 224, ('signextend', 15, ('cd', ('add', 40, ('cd', 4)))), ('signextend', 15, ('cd', ('add', 72, ('cd', 4)))), cd[36], ('cd', 4)[3], 0 >> 800,
           0
}

function sub_358f0e1c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 64
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[0] + 4)]
    require 4 <= cd[(cd[4] + ('cd', 4)[0] + 4)]
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= cd[(cd[4] + ('cd', 4)[0] + 4)]
    require cd[(cd[4] + ('cd', 4)[0] + 4)] - 4 >= 128
    require cd[(cd[4] + ('cd', 4)[0] + 40)] == ('signextend', 15, ('cd', ('add', 40, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
    require cd[(cd[4] + ('cd', 4)[0] + 72)] == ('signextend', 15, ('cd', ('add', 72, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
    require cd[(cd[4] + ('cd', 4)[0] + 104)] == cd[(cd[4] + ('cd', 4)[0] + 104)]
    require cd[(cd[4] + ('cd', 4)[0] + 136)] == cd[(cd[4] + ('cd', 4)[0] + 136)]
    require ('cd', 4).length == address(('cd', 4).length)
    staticcall address(('cd', 4).length).0x5951dd54 with:
            gas gas_remaining wei
           args uint128(cd[(cd[4] + ('cd', 4)[0] + 40)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ('cd', 4).length == address(('cd', 4).length)
    staticcall address(('cd', 4).length).0x5951dd54 with:
            gas gas_remaining wei
           args uint128(cd[(cd[4] + ('cd', 4)[0] + 72)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return cd[(cd[4] + ('cd', 4)[0] + 104)], address(ext_call.return_data[0]), address(ext_call.return_data[0])
}



}
