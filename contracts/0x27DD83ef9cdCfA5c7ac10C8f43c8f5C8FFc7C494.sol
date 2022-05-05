contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of struct stor2;
mapping of uint256 nameToId;
mapping of uint256 balance;
mapping of address sub_99c2c2f9;
mapping of uint256 stor99;

function sub_99c2c2f9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_99c2c2f9[arg1]
}

function Owner() payable {
    return owner
}

function balance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balance[arg1]
}

function nameToId(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return nameToId[arg1[all]]
}

function _fallback() payable {
    revert
}

function sub_dd3fd0f4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    return sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
}

function sub_1b395b12(?) payable {
    require calldata.size - 4 >= 32
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
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 3
    mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function withdraw(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == sub_99c2c2f9[arg1]
    if block.timestamp < stor2[arg1].field_1536:
        revert with 0, 'too early'
    require sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256) == stor2[arg1].field_256
    stor2[arg1].field_768 = 0
    require ext_code.size(address(stor2[arg1].field_1792))
    call address(stor2[arg1].field_1792).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor2[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e772020f(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token not Approved!'
    stor2[stor1].field_1280 = arg4
    stor2[stor1].field_256 = arg3
    if block.timestamp > -arg4 - 1:
        revert with 'NH{q', 17
    stor2[stor1].field_1536 = block.timestamp + arg4
    address(stor2[stor1].field_0) = msg.sender
    if bool(stor2[stor1].field_512):
        if bool(stor2[stor1].field_512) == uint255(stor2[stor1].field_513) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor2[stor1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[stor1].field_512 = 0
            idx = 0
            while uint255(stor2[stor1].field_513) + 31 / 32 > idx:
                stor2[stor1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2[stor1].field_512) == stor2[stor1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor2[stor1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[stor1].field_512 = 0
            idx = 0
            while stor2[stor1].field_513 % 128 + 31 / 32 > idx:
                stor2[stor1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor2[stor1].field_768 = arg5
    address(stor2[stor1].field_1792) = address(arg1)
    stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 3)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256] = stor1
    sub_99c2c2f9[stor1] = msg.sender
    if stor1 == -1:
        revert with 'NH{q', 17
    stor1++
    if stor1 < 1:
        revert with 'NH{q', 17
    return (stor1 - 1)
}

function vaults(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2[arg1].field_512):
        if bool(stor2[arg1].field_512) == uint255(stor2[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if bool(stor2[arg1].field_512):
            if bool(stor2[arg1].field_512) == uint255(stor2[arg1].field_513) < 32:
                revert with 'NH{q', 34
            if uint255(stor2[arg1].field_513):
                if 31 >= uint255(stor2[arg1].field_513):
                    mem[128] = 256 * Mask(248, 0, stor2[arg1].field_520)
                else:
                    mem[128] = stor2[arg1][2].field_0
                    idx = 128
                    s = 0
                    while uint255(stor2[arg1].field_513) + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor2[arg1].field_512) == stor2[arg1].field_513 % 128 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_513 % 128:
                if 31 >= stor2[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor2[arg1].field_520)
                else:
                    mem[128] = stor2[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor2[arg1].field_0), 
               stor2[arg1].field_256,
               Array(len=2 * Mask(256, -1, uint255(stor2[arg1].field_513)), data=mem[128 len ceil32(uint255(stor2[arg1].field_513))]),
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               stor2[arg1].field_1536,
               address(stor2[arg1].field_1792)
    if bool(stor2[arg1].field_512) == stor2[arg1].field_513 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor2[arg1].field_512):
        if bool(stor2[arg1].field_512) == uint255(stor2[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if uint255(stor2[arg1].field_513):
            if 31 >= uint255(stor2[arg1].field_513):
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_520)
            else:
                mem[128] = stor2[arg1][2].field_0
                idx = 128
                s = 0
                while uint255(stor2[arg1].field_513) + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor2[arg1].field_512) == stor2[arg1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_513 % 128:
            if 31 >= stor2[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_520)
            else:
                mem[128] = stor2[arg1][2].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor2[arg1].field_0), 
           stor2[arg1].field_256,
           Array(len=stor2[arg1].field_512 % 128, data=mem[128 len ceil32(stor2[arg1].field_513 % 128)]),
           stor2[arg1].field_768,
           stor2[arg1].field_1024,
           stor2[arg1].field_1280,
           stor2[arg1].field_1536,
           address(stor2[arg1].field_1792)
}

function sub_f82d4429(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2[arg1].field_512):
        if bool(stor2[arg1].field_512) == uint255(stor2[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if bool(stor2[arg1].field_512):
            if bool(stor2[arg1].field_512) == uint255(stor2[arg1].field_513) < 32:
                revert with 'NH{q', 34
            if uint255(stor2[arg1].field_513):
                if 31 >= uint255(stor2[arg1].field_513):
                    mem[640] = 256 * Mask(248, 0, stor2[arg1].field_520)
                else:
                    mem[640] = stor2[arg1][2].field_0
                    idx = 640
                    s = 0
                    while uint255(stor2[arg1].field_513) + 608 > idx:
                        mem[idx + 32] = stor2[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor2[arg1].field_512) == stor2[arg1].field_513 % 128 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_513 % 128:
                if 31 >= stor2[arg1].field_513 % 128:
                    mem[640] = 256 * Mask(248, 0, stor2[arg1].field_520)
                else:
                    mem[640] = stor2[arg1][2].field_0
                    idx = 640
                    s = 0
                    while stor2[arg1].field_513 % 128 + 608 > idx:
                        mem[idx + 32] = stor2[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, address(stor2[arg1].field_0), 
               stor2[arg1].field_256,
               256,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               stor2[arg1].field_1536,
               address(stor2[arg1].field_1792),
               2 * Mask(256, -1, uint255(stor2[arg1].field_513)),
               mem[640 len ceil32(uint255(stor2[arg1].field_513))]
    if bool(stor2[arg1].field_512) == stor2[arg1].field_513 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor2[arg1].field_512):
        if bool(stor2[arg1].field_512) == uint255(stor2[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if uint255(stor2[arg1].field_513):
            if 31 >= uint255(stor2[arg1].field_513):
                mem[640] = 256 * Mask(248, 0, stor2[arg1].field_520)
            else:
                mem[640] = stor2[arg1][2].field_0
                idx = 640
                s = 0
                while uint255(stor2[arg1].field_513) + 608 > idx:
                    mem[idx + 32] = stor2[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor2[arg1].field_512) == stor2[arg1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_513 % 128:
            if 31 >= stor2[arg1].field_513 % 128:
                mem[640] = 256 * Mask(248, 0, stor2[arg1].field_520)
            else:
                mem[640] = stor2[arg1][2].field_0
                idx = 640
                s = 0
                while stor2[arg1].field_513 % 128 + 608 > idx:
                    mem[idx + 32] = stor2[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, address(stor2[arg1].field_0), 
           stor2[arg1].field_256,
           256,
           stor2[arg1].field_768,
           stor2[arg1].field_1024,
           stor2[arg1].field_1280,
           stor2[arg1].field_1536,
           address(stor2[arg1].field_1792),
           stor2[arg1].field_512 % 128,
           mem[640 len ceil32(stor2[arg1].field_513 % 128)]
}



}
