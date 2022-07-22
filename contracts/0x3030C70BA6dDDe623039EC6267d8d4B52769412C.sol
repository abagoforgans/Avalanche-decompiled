contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ab22bbd(?)
#  - sub_40dbf962(?)
#  - sub_a7b8a537(?)
#
uint8 stor0;
uint8 stor0; offset 8
address owner;
address sub_2faff427Address;
address aaveLendingPoolAddress;
array of struct routes;

function sub_2faff427(?) payable {
    return sub_2faff427Address
}

function routes(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 < routes[arg1][arg2].field_0
    return routes[arg1][arg2][arg3].field_0, 
           routes[arg1][arg2][arg3].field_256,
           routes[arg1][arg2][arg3].field_512,
           routes[arg1][arg2][arg3].field_768,
           ('signextend', 15, ('signextend', 15, ('field', 1024, ('stor', ('array', ('mul', 6, ('param', 'arg3')), ('map', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'routes', 103)))))))),
           ('signextend', 15, ('signextend', 15, ('field', 1152, ('stor', ('array', ('mul', 6, ('param', 'arg3')), ('map', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'routes', 103)))))))),
           ('signextend', 15, ('signextend', 15, ('field', 1280, ('stor', ('array', ('mul', 6, ('param', 'arg3')), ('map', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'routes', 103))))))))
}

function owner() payable {
    return owner
}

function aaveLendingPool() payable {
    return aaveLendingPoolAddress
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

function sub_026b49a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2faff427Address = address(arg1)
}

function sub_4c0f83c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    aaveLendingPoolAddress = address(arg1)
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

function setApprovals(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0) >= 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        if not uint8(stor0.field_8):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        uint8(stor0.field_8) = 0
        emit 0x7f26b83f: 1
}

function sub_73aeea36(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (224 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routes[address(cd[4])][address(cd[36])].field_0 = 0
    idx = 0
    while 6 * routes[address(cd[4])][address(cd[36])].field_0 > idx:
        routes[address(cd[4])][address(cd[36])][idx].field_0 = 0
        routes[address(cd[4])][address(cd[36])][idx].field_256 = 0
        routes[address(cd[4])][address(cd[36])][idx].field_512 = 0
        routes[address(cd[4])][address(cd[36])][idx].field_768 = 0
        routes[address(cd[4])][address(cd[36])][idx].field_1024 = 0
        routes[address(cd[4])][address(cd[36])][idx].field_1280 = 0
        idx = idx + 6
        continue 
    idx = 0
    while idx < ('cd', 68).length:
        mem[32] = sha3(address(cd[4]), 103)
        routes[address(cd[4])][address(cd[36])].field_0++
        mem[0] = sha3(address(cd[36]), sha3(address(cd[4]), 103))
        require cd[((224 * idx) + cd[68] + 36)] == address(cd[((224 * idx) + cd[68] + 36)])
        routes[address(cd[4])][address(cd[36])][routes[address(cd[4])][address(cd[36])].field_0].field_0 = address(cd[((224 * idx) + cd[68] + 36)])
        routes[address(cd[4])][address(cd[36])][routes[address(cd[4])][address(cd[36])].field_0].field_256 = cd[((224 * idx) + cd[68] + 68)]
        require cd[((224 * idx) + cd[68] + 100)] == address(cd[((224 * idx) + cd[68] + 100)])
        routes[address(cd[4])][address(cd[36])][routes[address(cd[4])][address(cd[36])].field_0].field_512 = address(cd[((224 * idx) + cd[68] + 100)])
        require cd[((224 * idx) + cd[68] + 132)] == address(cd[((224 * idx) + cd[68] + 132)])
        routes[address(cd[4])][address(cd[36])][routes[address(cd[4])][address(cd[36])].field_0].field_768 = address(cd[((224 * idx) + cd[68] + 132)])
        require cd[((224 * idx) + cd[68] + 164)] == ('signextend', 15, ('cd', ('add', 164, ('mul', 224, ('var', 0)), ('cd', 68))))
        routes[address(cd[4])][address(cd[36])][routes[address(cd[4])][address(cd[36])].field_0].field_1024 = uint128(cd[((224 * idx) + cd[68] + 164)])
        require cd[((224 * idx) + cd[68] + 196)] == ('signextend', 15, ('cd', ('add', 196, ('mul', 224, ('var', 0)), ('cd', 68))))
        routes[address(cd[4])][address(cd[36])][routes[address(cd[4])][address(cd[36])].field_0].field_1152 = uint128(cd[((224 * idx) + cd[68] + 196)])
        require cd[((224 * idx) + cd[68] + 228)] == ('signextend', 15, ('cd', ('add', 228, ('mul', 224, ('var', 0)), ('cd', 68))))
        routes[address(cd[4])][address(cd[36])][routes[address(cd[4])][address(cd[36])].field_0].field_1280 = uint128(cd[((224 * idx) + cd[68] + 228)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    s = cd[68] + 36
    t = 224
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        mem[t + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[t + 64] = address(cd[(s + 64)])
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[t + 96] = address(cd[(s + 96)])
        require cd[(s + 128)] == ('signextend', 15, ('cd', ('add', 128, ('var', 1))))
        mem[t + 128] = ('signextend', 15, ('cd', ('add', 128, ('var', 1))))
        require cd[(s + 160)] == ('signextend', 15, ('cd', ('add', 160, ('var', 1))))
        mem[t + 160] = ('signextend', 15, ('cd', ('add', 160, ('var', 1))))
        require cd[(s + 192)] == ('signextend', 15, ('cd', ('add', 192, ('var', 1))))
        mem[t + 192] = ('signextend', 15, ('cd', ('add', 192, ('var', 1))))
        idx = idx + 1
        s = s + 224
        t = t + 224
        continue 
    emit 0x1aa5c4f5: address(cd[4]), address(cd[36]), Array(len=('cd', 68).length, data=mem[224 len 224 * ('cd', 68).length])
}



}
