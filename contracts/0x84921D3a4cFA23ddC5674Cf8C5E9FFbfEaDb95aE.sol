contract main {




// =====================  Runtime code  =====================


#
#  - attachValue(bytes arg1)
#
address owner;
address nebulaAddress;
address routerAddress;
mapping of uint8 stor3;
mapping of uint8 stor4;

function uuidIsProcessed(bytes16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(128, 128, arg1)
    return bool(stor3[arg1])
}

function nebula() payable {
    return nebulaAddress
}

function isEVM(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor4[arg1[all]])
}

function owner() payable {
    return owner
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setNebula(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    nebulaAddress = arg1
    emit SetNebula(nebulaAddress, arg1);
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    routerAddress = arg1
    emit SetRouter(routerAddress, arg1);
}

function setIsEVM(string arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor4[arg1[all]] = uint8(arg2)
    emit SetIsEVM(Array(len=arg1.length, data=arg1[all]), arg2);
}

function deserializeAddress(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if arg2 > -21:
        revert with 0, 17
    if var35002 >= arg2 + 20:
        return address(var35003)
    if var37001 >= arg1.length:
        revert with 0, 50
    if var41002 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if var47001 > !var47002:
        revert with 0, 17
    if var53001 == -1:
        revert with 0, 17
    if arg2 > -21:
        revert with 0, 17
    if var65002 >= arg2 + 20:
        return address(var65003)
    # nil
}

function deserializeUint(bytes arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if arg2 > !arg3:
        revert with 0, 17
    if var34002 >= arg2 + arg3:
        return var34003
    if var36001 >= arg1.length:
        revert with 0, 50
    if var40002 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if var46001 > !var46002:
        revert with 0, 17
    if var52001 == -1:
        revert with 0, 17
    if arg2 > !arg3:
        revert with 0, 17
    if var64002 >= arg2 + arg3:
        return var64003
    # nil
}

function bytesToBytes32(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < 32:
        if idx > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if arg2 > !idx:
            revert with 0, 17
        if arg2 + idx >= arg1.length:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = Mask(-(8 * idx) + 8, 248, mem[arg2 + idx + 128]) >> 8 * idx or s
        continue 
    return 0
}

function bytesToBytes16(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < 16:
        if idx > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if arg2 > !idx:
            revert with 0, 17
        if arg2 + idx >= arg1.length:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = Mask(-(8 * idx) + 8, 248, mem[arg2 + idx + 128]) >> 8 * idx or s
        continue 
    return 0
}

function equal(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg1.length)) + arg2.length + 129] = 0
    return (sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) == sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256))
}



}
