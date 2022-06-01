contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of address stor99;
mapping of address sub_f9583efb;

function owner() payable {
    return owner
}

function sub_f9583efb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_f9583efb[arg1[all]]
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

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
}

function sub_031580f0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len 2705] = code.data[9174 len 2705]
    mem[ceil32(ceil32(arg1.length)) + 2802] = address(arg2)
    create contract with 0 wei
                    code: code.data[9174 len 2705], address(arg2)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(arg1.length)) + 97] = address(create.new_address)
    mem[ceil32(ceil32(arg1.length)) + 129] = 64
    mem[ceil32(ceil32(arg1.length)) + 161] = arg1.length
    mem[ceil32(ceil32(arg1.length)) + 193 len ceil32(arg1.length)] = arg1[all], 0
    emit 0x539e97ca: address(create.new_address), 64, arg1.length, arg1[all], 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], 0
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 101
    stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 101)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], 0) << (8 * ceil32(arg1.length)) - 256] = address(create.new_address)
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 101
    mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_2c0e4198(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 101
    require stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 101
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg1.length) <= arg1.length:
            _95 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 4420 len arg2.length] = arg2[all]
            mem[ceil32(ceil32(arg1.length)) + arg2.length + 4420] = 0
            create contract with 0 wei
                            code: code.data[4947 len 4227], stor[_95], 64, arg2.length, arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 4420 len ceil32(arg2.length) - arg2.length]
        else:
            _101 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 4420 len arg2.length] = arg2[all]
            mem[ceil32(ceil32(arg1.length)) + arg2.length + 4420] = 0
            create contract with 0 wei
                            code: code.data[4947 len 4227], stor[_101], 64, arg2.length, arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 4420 len ceil32(arg2.length) - arg2.length]
    else:
        if ceil32(arg1.length) <= arg1.length:
            _98 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 4420 len arg2.length] = arg2[all]
            mem[ceil32(ceil32(arg1.length)) + arg2.length + 4420] = 0
            create contract with 0 wei
                            code: code.data[4947 len 4227], stor[_98], 64, arg2.length, arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 4420 len ceil32(arg2.length) - arg2.length]
        else:
            _104 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 4420 len arg2.length] = arg2[all]
            mem[ceil32(ceil32(arg1.length)) + arg2.length + 4420] = 0
            create contract with 0 wei
                            code: code.data[4947 len 4227], stor[_104], 64, arg2.length, arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 4420 len ceil32(arg2.length) - arg2.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deployed(address(create.new_address));
    return address(create.new_address)
}



}
