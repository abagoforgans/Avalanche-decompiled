contract main {




// =====================  Runtime code  =====================


#
#  - sub_63c3a887(?)
#
const MAX_OWNER_COUNT = 50


array of struct owners;
array of uint256 stor1;
mapping of uint8 stor2;
uint256 numConfirmationsRequired;
mapping of uint8 stor4;
array of struct sub_3de5d0de;
array of struct stor6;
array of struct stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of struct stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986691;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_3de5d0de(?) {
    require calldata.size - 4 >= 32
    return sub_3de5d0de[arg1].field_0
}

function getDeployer() {
    return address(stor1.length)
}

function sub_ba2a1fdd(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    return bool(stor4[arg1][arg2][arg3])
}

function numConfirmationsRequired() {
    return numConfirmationsRequired
}

function renounceOwnership() {
    if address(stor1.length) != msg.sender:
        revert with 0, 'Caller is not the deployer'
    address(stor1.length) = 0
    emit OwnershipTransferred(address(stor1.length), 0);
}

function sub_5ffc41cc(?) {
    require calldata.size - 4 >= 64
    if address(stor1.length) != msg.sender:
        revert with 0, 'Caller is not the deployer'
    if arg1 >= stor6.length:
        revert with 0, 50
    stor6[arg1].field_768 = arg2
    emit DailyLimitChange(arg1, arg2);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor1.length) != msg.sender:
        revert with 0, 'Caller is not the deployer'
    if not arg1:
        revert with 0, 'Invalid new owner'
    address(stor1.length) = arg1
    emit OwnershipTransferred(address(stor1.length), arg1);
}

function calcMaxWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6.length:
        revert with 0, 50
    if 24 * 3600 > !stor6[arg1].field_1024:
        revert with 0, 17
    if block.timestamp > stor6[arg1].field_1024 + (24 * 3600):
        return stor6[arg1].field_768
    if stor6[arg1].field_768 >= stor6[arg1].field_1280:
        return (stor6[arg1].field_768 - stor6[arg1].field_1280)
    else:
        return 0
}

function changeRequirement(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor1.length) != msg.sender:
        revert with 0, 'Caller is not the deployer'
    if owners.length > 50:
        revert with 0, 'Invalid requirement'
    if arg1 > owners.length:
        revert with 0, 'Invalid requirement'
    if not arg1:
        revert with 0, 'Invalid requirement'
    if not owners.length:
        revert with 0, 'Invalid requirement'
    numConfirmationsRequired = arg1
    emit RequirementChange(arg1);
}

function getBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6.length:
        revert with 0, 50
    if 0 == arg1:
        return eth.balance(this.address)
    require ext_code.size(address(stor6[arg1].field_0))
    staticcall address(stor6[arg1].field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f84eef0b(?) {
    require calldata.size - 4 >= 64
    if not stor2[msg.sender]:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Unauthorized caller'
    if arg2 >= sub_3de5d0de[arg1].field_0:
        revert with 0, 'Transaction does not exist'
    if arg2 >= sub_3de5d0de[arg1].field_0:
        revert with 0, 50
    if uint8(sub_3de5d0de[arg1][arg2].field_768):
        revert with 0, 'Transaction already executed'
    if arg2 >= sub_3de5d0de[arg1].field_0:
        revert with 0, 50
    if not stor4[arg1][arg2][msg.sender]:
        revert with 0, 'Transaction not confirmed'
    if sub_3de5d0de[arg1][arg2].field_1024 < 1:
        revert with 0, 17
    sub_3de5d0de[arg1][arg2].field_1024--
    stor4[arg1][arg2][msg.sender] = 0
    emit 0x7f6706c8: msg.sender, arg1, arg2
}

function sub_cfcb565d(?) {
    require calldata.size - 4 >= 64
    if not stor2[msg.sender]:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Unauthorized caller'
    if arg2 >= sub_3de5d0de[arg1].field_0:
        revert with 0, 'Transaction does not exist'
    if arg2 >= sub_3de5d0de[arg1].field_0:
        revert with 0, 50
    if uint8(sub_3de5d0de[arg1][arg2].field_768):
        revert with 0, 'Transaction already executed'
    if stor4[arg1][arg2][msg.sender]:
        revert with 0, 'Transaction already confirmed'
    if arg2 >= sub_3de5d0de[arg1].field_0:
        revert with 0, 50
    if sub_3de5d0de[arg1][arg2].field_1024 > -2:
        revert with 0, 17
    sub_3de5d0de[arg1][arg2].field_1024++
    stor4[arg1][arg2][msg.sender] = 1
    emit 0xb87db7d4: msg.sender, arg1, arg2
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor1.length) != msg.sender:
        revert with 0, 'Caller is not the deployer'
    if stor2[address(arg1)]:
        revert with 0, 'Owner exists'
    if not arg1:
        revert with 0, 'Address is nulled'
    if 1 > !owners.length:
        revert with 0, 17
    if owners.length + 1 > 50:
        revert with 0, 'Invalid requirement'
    if numConfirmationsRequired > owners.length + 1:
        revert with 0, 'Invalid requirement'
    if not numConfirmationsRequired:
        revert with 0, 'Invalid requirement'
    if not owners.length + 1:
        revert with 0, 'Invalid requirement'
    stor2[address(arg1)] = 1
    owners.length++
    address(owners[owners.length].field_0) = arg1
    emit OwnerAddition(arg1);
}

function getOwners() {
    mem[64] = (32 * owners.length) + 128
    mem[96] = owners.length
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        idx = 0
        s = (32 * owners.length) + 192
        t = 128
        while idx < owners.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = 32
    mem[(32 * owners.length) + 160] = owners.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < owners.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * owners.length) + -mem[64] + 192
}

function sub_dbe637c6(?) {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor2[msg.sender]:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Unauthorized caller'
    sub_3de5d0de[arg1].field_0++
    address(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_0) = address(arg2)
    sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_256 = arg3
    if bool(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512):
        if bool(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512) == uint255(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg4.length:
            stor[sha3((5 * sub_3de5d0de[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512 = 0
            idx = 0
            while (uint255(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((5 * sub_3de5d0de[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512) == sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_513 % 128 < 32:
            revert with 0, 34
        if arg4.length:
            stor[sha3((5 * sub_3de5d0de[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512 = 0
            idx = 0
            while sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_513 % 128 + 31 / 32 > idx:
                stor[idx + sha3((5 * sub_3de5d0de[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    uint8(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_768) = 0
    sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_1024 = 0
    emit 0x4f521161: msg.sender, address(arg2), arg3, 128, arg4.length, arg4[all], 0, arg1, sub_3de5d0de[arg1].field_0
}

function removeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor1.length) != msg.sender:
        revert with 0, 'Caller is not the deployer'
    if not stor2[address(arg1)]:
        revert with 0, 'Owner is not exists'
    if address(stor1.length) == arg1:
        revert with 0, 'Can't remove deployer'
    stor2[address(arg1)] = 0
    if owners.length < 1:
        revert with 0, 17
    if var29002 >= owners.length - 1:
        if not owners.length:
            revert with 0, 49
        address(owners[owners.length].field_0) = 0
        owners.length--
        if numConfirmationsRequired > owners.length:
            if address(stor1.length) != msg.sender:
                revert with 0, 'Caller is not the deployer'
            if owners.length > 50:
                revert with 0, 'Invalid requirement'
            if owners.length > owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            numConfirmationsRequired = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    if var31001 >= owners.length:
        revert with 0, 50
    if address(owners[var33001].field_0) == arg1:
        if owners.length < 1:
            revert with 0, 17
        if owners.length - 1 >= owners.length:
            revert with 0, 50
        if var33004 >= owners.length:
            revert with 0, 50
        address(owners[var33004].field_0) = address(owners[owners.length].field_0)
        if not owners.length:
            revert with 0, 49
        address(owners[owners.length].field_0) = 0
        owners.length--
        if numConfirmationsRequired > owners.length:
            if address(stor1.length) != msg.sender:
                revert with 0, 'Caller is not the deployer'
            if owners.length > 50:
                revert with 0, 'Invalid requirement'
            if owners.length > owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            numConfirmationsRequired = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    if var37001 == -1:
        revert with 0, 17
    if owners.length < 1:
        revert with 0, 17
    if var49002 >= owners.length - 1:
        if not owners.length:
            revert with 0, 49
        address(owners[owners.length].field_0) = 0
        owners.length--
        if numConfirmationsRequired > owners.length:
            if address(stor1.length) != msg.sender:
                revert with 0, 'Caller is not the deployer'
            if owners.length > 50:
                revert with 0, 'Invalid requirement'
            if owners.length > owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            numConfirmationsRequired = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    if var51001 >= owners.length:
        revert with 0, 50
    if address(owners[var53001].field_0) != arg1:
        if var57001 == -1:
            revert with 0, 17
        # nil
    else:
        if owners.length < 1:
            revert with 0, 17
        if owners.length - 1 >= owners.length:
            revert with 0, 50
        if var53004 >= owners.length:
            revert with 0, 50
        address(owners[var53004].field_0) = address(owners[owners.length].field_0)
        if not owners.length:
            revert with 0, 49
        address(owners[owners.length].field_0) = 0
        owners.length--
        if numConfirmationsRequired > owners.length:
            if address(stor1.length) != msg.sender:
                revert with 0, 'Caller is not the deployer'
            if owners.length > 50:
                revert with 0, 'Invalid requirement'
            if owners.length > owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            numConfirmationsRequired = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
}

function sub_4eaf9db6(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_3de5d0de[arg1].field_0
    if bool(sub_3de5d0de[arg1][arg2].field_512):
        if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(sub_3de5d0de[arg1][arg2].field_512):
            if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512):
                if 31 >= uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5:
                    mem[128] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
                revert with 0, 34
            if sub_3de5d0de[arg1][arg2].field_513 % 128:
                if 31 >= sub_3de5d0de[arg1][arg2].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                    idx = 128
                    s = 0
                    while sub_3de5d0de[arg1][arg2].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(sub_3de5d0de[arg1][arg2].field_0), 
               sub_3de5d0de[arg1][arg2].field_256,
               Array(len=2 * Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512), data=mem[128 len ceil32(uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5)]),
               bool(uint8(sub_3de5d0de[arg1][arg2].field_768)),
               sub_3de5d0de[arg1][arg2].field_1024
    if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
        revert with 0, 34
    if bool(sub_3de5d0de[arg1][arg2].field_512):
        if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512):
            if 31 >= uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5:
                mem[128] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
            else:
                mem[128] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                idx = 128
                s = 0
                while (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
            revert with 0, 34
        if sub_3de5d0de[arg1][arg2].field_513 % 128:
            if 31 >= sub_3de5d0de[arg1][arg2].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
            else:
                mem[128] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                idx = 128
                s = 0
                while sub_3de5d0de[arg1][arg2].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(sub_3de5d0de[arg1][arg2].field_0), 
           sub_3de5d0de[arg1][arg2].field_256,
           Array(len=sub_3de5d0de[arg1][arg2].field_512 % 128, data=mem[128 len ceil32(sub_3de5d0de[arg1][arg2].field_513 % 128)]),
           bool(uint8(sub_3de5d0de[arg1][arg2].field_768)),
           sub_3de5d0de[arg1][arg2].field_1024
}

function sub_7303f6ce(?) {
    require calldata.size - 4 >= 64
    if arg2 >= sub_3de5d0de[arg1].field_0:
        revert with 0, 50
    if bool(sub_3de5d0de[arg1][arg2].field_512):
        if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(sub_3de5d0de[arg1][arg2].field_512):
            if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512):
                if 31 >= uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5:
                    mem[128] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
                revert with 0, 34
            if sub_3de5d0de[arg1][arg2].field_513 % 128:
                if 31 >= sub_3de5d0de[arg1][arg2].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                    idx = 128
                    s = 0
                    while sub_3de5d0de[arg1][arg2].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(sub_3de5d0de[arg1][arg2].field_0), 
               sub_3de5d0de[arg1][arg2].field_256,
               Array(len=2 * Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512), data=mem[128 len ceil32(uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5)]),
               bool(uint8(sub_3de5d0de[arg1][arg2].field_768)),
               sub_3de5d0de[arg1][arg2].field_1024
    if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
        revert with 0, 34
    if bool(sub_3de5d0de[arg1][arg2].field_512):
        if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512):
            if 31 >= uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5:
                mem[128] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
            else:
                mem[128] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                idx = 128
                s = 0
                while (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
            revert with 0, 34
        if sub_3de5d0de[arg1][arg2].field_513 % 128:
            if 31 >= sub_3de5d0de[arg1][arg2].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
            else:
                mem[128] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                idx = 128
                s = 0
                while sub_3de5d0de[arg1][arg2].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(sub_3de5d0de[arg1][arg2].field_0), 
           sub_3de5d0de[arg1][arg2].field_256,
           Array(len=sub_3de5d0de[arg1][arg2].field_512 % 128, data=mem[128 len ceil32(sub_3de5d0de[arg1][arg2].field_513 % 128)]),
           bool(uint8(sub_3de5d0de[arg1][arg2].field_768)),
           sub_3de5d0de[arg1][arg2].field_1024
}

function sub_ba881096(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if address(stor1.length) != msg.sender:
        revert with 0, 'Caller is not the deployer'
    if arg1 >= stor6.length:
        revert with 0, 50
    address(stor6[arg1].field_0) = address(arg2)
    if bool(stor6[arg1].field_256):
        if bool(stor6[arg1].field_256) == uint255(stor6[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor6[arg1].field_256 = 0
            idx = 0
            while (uint255(stor6[arg1].field_256) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor6[arg1].field_256) == stor6[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor6[arg1].field_256 = 0
            idx = 0
            while stor6[arg1].field_257 % 128 + 31 / 32 > idx:
                stor[idx + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor6[arg1].field_512):
        if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg4.length:
            stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor6[arg1].field_512 = 0
            idx = 0
            while (uint255(stor6[arg1].field_512) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if arg4.length:
            stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor6[arg1].field_512 = 0
            idx = 0
            while stor6[arg1].field_513 % 128 + 31 / 32 > idx:
                stor[idx + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    stor6[arg1].field_768 = arg5
    if ceil32(arg3.length) <= arg3.length:
        emit 0x27ea2f8d: address(arg2), Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], 0) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 128, stor6.length
    else:
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 226] = arg4.length
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 258 len ceil32(arg4.length)] = arg4[all], 0
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 258] = 0
        emit 0x27ea2f8d: address(arg2), Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 258 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 128, stor6.length
}

function executeTransaction(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor2[msg.sender]:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Unauthorized caller'
    if arg2 >= sub_3de5d0de[arg1].field_0:
        revert with 0, 'Transaction does not exist'
    if arg2 >= sub_3de5d0de[arg1].field_0:
        revert with 0, 50
    if uint8(sub_3de5d0de[arg1][arg2].field_768):
        revert with 0, 'Transaction already executed'
    if arg1 >= stor6.length:
        revert with 0, 50
    if arg2 >= sub_3de5d0de[arg1].field_0:
        revert with 0, 50
    if sub_3de5d0de[arg1][arg2].field_1024 < numConfirmationsRequired:
        revert with 0, 'Cannot execute transaction'
    if arg1 >= stor6.length:
        revert with 0, 50
    if 24 * 3600 > !stor6[arg1].field_1024:
        revert with 0, 17
    if block.timestamp > stor6[arg1].field_1024 + (24 * 3600):
        stor6[arg1].field_1024 = block.timestamp
        stor6[arg1].field_1280 = 0
    if stor6[arg1].field_1280 > !sub_3de5d0de[arg1][arg2].field_256:
        revert with 0, 17
    if stor6[arg1].field_1280 + sub_3de5d0de[arg1][arg2].field_256 > stor6[arg1].field_768:
        revert with 0, 'Maximum daily limit'
    if stor6[arg1].field_1280 > !sub_3de5d0de[arg1][arg2].field_256:
        revert with 0, 17
    if stor6[arg1].field_1280 + sub_3de5d0de[arg1][arg2].field_256 < stor6[arg1].field_1280:
        revert with 0, 'Maximum daily limit'
    uint8(sub_3de5d0de[arg1][arg2].field_768) = 1
    if stor6[arg1].field_1280 > !sub_3de5d0de[arg1][arg2].field_256:
        revert with 0, 17
    stor6[arg1].field_1280 += sub_3de5d0de[arg1][arg2].field_256
    if arg1:
        require ext_code.size(address(stor6[arg1].field_0))
        call address(stor6[arg1].field_0).0xa9059cbb with:
             gas gas_remaining wei
            args address(sub_3de5d0de[arg1][arg2].field_0), sub_3de5d0de[arg1][arg2].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            uint8(sub_3de5d0de[arg1][arg2].field_768) = 0
            if stor6[arg1].field_1280 < sub_3de5d0de[arg1][arg2].field_256:
                revert with 0, 17
            stor6[arg1].field_1280 -= sub_3de5d0de[arg1][arg2].field_256
            if not ext_call.return_data[0]:
                revert with 0, 'Failed or insufficent funds'
    else:
        if bool(sub_3de5d0de[arg1][arg2].field_512):
            if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
                revert with 0, 34
            if not bool(sub_3de5d0de[arg1][arg2].field_512):
                mem[96] = Mask(248, 8, sub_3de5d0de[arg1][arg2].field_512)
                call address(sub_3de5d0de[arg1][arg2].field_0) with:
                   funct uint32(sub_3de5d0de[arg1][arg2].field_736)
                   value sub_3de5d0de[arg1][arg2].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) - 4]
            else:
                if bool(sub_3de5d0de[arg1][arg2].field_512) != 1:
                    call address(sub_3de5d0de[arg1][arg2].field_0).mem[96 len 4] with:
                       value sub_3de5d0de[arg1][arg2].field_256 wei
                         gas gas_remaining wei
                        args mem[100 len -100]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5:
                        mem[idx + 96] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call address(sub_3de5d0de[arg1][arg2].field_0).mem[96 len 4] with:
                       value sub_3de5d0de[arg1][arg2].field_256 wei
                         gas gas_remaining wei
                        args mem[100 len (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) - 4]
        else:
            if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
                revert with 0, 34
            if not bool(sub_3de5d0de[arg1][arg2].field_512):
                mem[96] = Mask(248, 8, sub_3de5d0de[arg1][arg2].field_512)
                call address(sub_3de5d0de[arg1][arg2].field_0) with:
                   funct uint32(sub_3de5d0de[arg1][arg2].field_736)
                   value sub_3de5d0de[arg1][arg2].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len sub_3de5d0de[arg1][arg2].field_513 % 128 - 4]
            else:
                if bool(sub_3de5d0de[arg1][arg2].field_512) != 1:
                    call address(sub_3de5d0de[arg1][arg2].field_0).mem[96 len 4] with:
                       value sub_3de5d0de[arg1][arg2].field_256 wei
                         gas gas_remaining wei
                        args mem[100 len -100]
                else:
                    idx = 0
                    s = 0
                    while idx < sub_3de5d0de[arg1][arg2].field_513 % 128:
                        mem[idx + 96] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call address(sub_3de5d0de[arg1][arg2].field_0).mem[96 len 4] with:
                       value sub_3de5d0de[arg1][arg2].field_256 wei
                         gas gas_remaining wei
                        args mem[100 len sub_3de5d0de[arg1][arg2].field_513 % 128 - 4]
        if not ext_call.success:
            uint8(sub_3de5d0de[arg1][arg2].field_768) = 0
            if stor6[arg1].field_1280 < sub_3de5d0de[arg1][arg2].field_256:
                revert with 0, 17
            stor6[arg1].field_1280 -= sub_3de5d0de[arg1][arg2].field_256
            if not ext_call.success:
                revert with 0, 'Failed or insufficent funds'
    emit 0x64f016df: msg.sender, arg1, arg2
}

function getTransactions(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 5
    mem[64] = (32 * sub_3de5d0de[arg1].field_0) + 128
    mem[96] = sub_3de5d0de[arg1].field_0
    s = 128
    idx = 0
    while idx < sub_3de5d0de[arg1].field_0:
        mem[0] = sha3(arg1, 5)
        _25 = mem[64]
        mem[64] = mem[64] + 160
        mem[_25] = address(sub_3de5d0de[arg1][idx].field_0)
        mem[_25 + 32] = sub_3de5d0de[arg1][idx].field_256
        if bool(sub_3de5d0de[arg1][idx].field_512):
            if bool(sub_3de5d0de[arg1][idx].field_512) == uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5 < 32:
                revert with 0, 34
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5) + 32
            mem[_32] = uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5
            if bool(sub_3de5d0de[arg1][idx].field_512):
                if bool(sub_3de5d0de[arg1][idx].field_512) == uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, sub_3de5d0de[arg1][idx].field_512):
                    if 31 >= uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5:
                        mem[_32 + 32] = 256 * Mask(248, 0, sub_3de5d0de[arg1][idx].field_520)
                    else:
                        mem[0] = sha3(sha3(arg1, 5)) + (5 * idx) + 2
                        mem[_32 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + (5 * idx) + 2)].field_0
                        t = _32 + 32
                        u = sha3(mem[0])
                        while _32 + (uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_25 + 64] = _32
                mem[_25 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
                mem[_25 + 128] = sub_3de5d0de[arg1][idx].field_1024
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            if bool(sub_3de5d0de[arg1][idx].field_512) == sub_3de5d0de[arg1][idx].field_513 % 128 < 32:
                revert with 0, 34
            if not sub_3de5d0de[arg1][idx].field_513 % 128:
                mem[_25 + 64] = _32
                mem[_25 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
                mem[_25 + 128] = sub_3de5d0de[arg1][idx].field_1024
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= sub_3de5d0de[arg1][idx].field_513 % 128:
                mem[_32 + 32] = 256 * Mask(248, 0, sub_3de5d0de[arg1][idx].field_520)
                mem[_25 + 64] = _32
                mem[_25 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
                mem[_25 + 128] = sub_3de5d0de[arg1][idx].field_1024
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(arg1, 5)) + (5 * idx) + 2
            mem[_32 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + (5 * idx) + 2)].field_0
            t = _32 + 32
            u = sha3(mem[0])
            while _32 + sub_3de5d0de[arg1][u].field_513 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_25 + 64] = _32
            mem[_25 + 96] = bool(uint8(sub_3de5d0de[arg1][u].field_768))
            mem[_25 + 128] = sub_3de5d0de[arg1][u].field_1024
            mem[t] = _25
            t = t + 32
            u = u + 1
            continue 
        if bool(sub_3de5d0de[arg1][idx].field_512) == sub_3de5d0de[arg1][idx].field_513 % 128 < 32:
            revert with 0, 34
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(sub_3de5d0de[arg1][idx].field_513 % 128) + 32
        mem[_35] = sub_3de5d0de[arg1][idx].field_513 % 128
        if bool(sub_3de5d0de[arg1][idx].field_512):
            if bool(sub_3de5d0de[arg1][idx].field_512) == uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, sub_3de5d0de[arg1][idx].field_512):
                mem[_25 + 64] = _35
                mem[_25 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
                mem[_25 + 128] = sub_3de5d0de[arg1][idx].field_1024
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5:
                mem[_35 + 32] = 256 * Mask(248, 0, sub_3de5d0de[arg1][idx].field_520)
                mem[_25 + 64] = _35
                mem[_25 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
                mem[_25 + 128] = sub_3de5d0de[arg1][idx].field_1024
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(arg1, 5)) + (5 * idx) + 2
            mem[_35 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + (5 * idx) + 2)].field_0
            t = _35 + 32
            u = sha3(mem[0])
            while _35 + (uint255(sub_3de5d0de[arg1][u].field_512) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_25 + 64] = _35
            mem[_25 + 96] = bool(uint8(sub_3de5d0de[arg1][u].field_768))
            mem[_25 + 128] = sub_3de5d0de[arg1][u].field_1024
            mem[t] = _25
            t = t + 32
            u = u + 1
            continue 
        if bool(sub_3de5d0de[arg1][idx].field_512) == sub_3de5d0de[arg1][idx].field_513 % 128 < 32:
            revert with 0, 34
        if sub_3de5d0de[arg1][idx].field_513 % 128:
            if 31 >= sub_3de5d0de[arg1][idx].field_513 % 128:
                mem[_35 + 32] = 256 * Mask(248, 0, sub_3de5d0de[arg1][idx].field_520)
            else:
                mem[0] = sha3(sha3(arg1, 5)) + (5 * idx) + 2
                mem[_35 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + (5 * idx) + 2)].field_0
                t = _35 + 32
                u = sha3(mem[0])
                while _35 + sub_3de5d0de[arg1][idx].field_513 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_25 + 64] = _35
        mem[_25 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
        mem[_25 + 128] = sub_3de5d0de[arg1][idx].field_1024
        mem[s] = _25
        s = s + 32
        idx = idx + 1
        continue 
    _26 = mem[64]
    mem[mem[64]] = 32
    _27 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _27:
        mem[u] = t + -_26 - 64
        _45 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_45 + 32]
        _48 = mem[_45 + 64]
        mem[t + 64] = 160
        _50 = mem[_48]
        mem[t + 160] = mem[_48]
        v = 0
        while v < _50:
            mem[v + t + 192] = mem[_48 + v + 32]
            v = v + 32
            continue 
        if ceil32(_50) > _50:
            mem[t + _50 + 192] = 0
        mem[t + 96] = bool(mem[_45 + 96])
        mem[t + 128] = mem[_45 + 128]
        idx = idx + 1
        s = s + 32
        t = ceil32(_50) + t + 192
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function wallets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor6.length
    if bool(stor6[arg1].field_256):
        if bool(stor6[arg1].field_256) == uint255(stor6[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6[arg1].field_256):
            if bool(stor6[arg1].field_256) == uint255(stor6[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_256):
                if 31 >= uint255(stor6[arg1].field_256) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor6[arg1].field_264)
                else:
                    mem[128] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor6[arg1].field_256) == stor6[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor6[arg1].field_257 % 128:
                if 31 >= stor6[arg1].field_257 % 128:
                    mem[128] = 256 * Mask(248, 0, stor6[arg1].field_264)
                else:
                    mem[128] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor6[arg1].field_512):
            if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if bool(stor6[arg1].field_512):
                if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor6[arg1].field_512):
                    if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                        mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_256) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 384] = uint255(stor6[arg1].field_512) * 0.5
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                    if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                        mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 416] = 0
                else:
                    if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                        mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160] = 256 * Mask(248, 0, stor6[arg1].field_520)
                    else:
                        mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                        idx = ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor6[arg1].field_256) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                        mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_256) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 384] = uint255(stor6[arg1].field_512) * 0.5
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                    if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                        mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 416] = 0
            else:
                if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                    revert with 0, 34
                if not stor6[arg1].field_513 % 128:
                    if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                        mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_256) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 384] = uint255(stor6[arg1].field_512) * 0.5
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                    if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                        mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 416] = 0
                else:
                    if 31 >= stor6[arg1].field_513 % 128:
                        mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160] = 256 * Mask(248, 0, stor6[arg1].field_520)
                    else:
                        mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                        idx = ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor6[arg1].field_256) * 0.5) + stor6[arg1].field_513 % 128 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                        mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_256) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 384] = uint255(stor6[arg1].field_512) * 0.5
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                    if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                        mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 416] = 0
            return address(stor6[arg1].field_0), 
                   Array(len=2 * Mask(256, -1, stor6[arg1].field_256), data=mem[128 len ceil32(uint255(stor6[arg1].field_256) * 0.5)], 2 * Mask(256, -1, stor6[arg1].field_512), mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]),
                   ceil32(uint255(stor6[arg1].field_256) * 0.5) + 224,
                   stor6[arg1].field_768,
                   stor6[arg1].field_1024,
                   stor6[arg1].field_1280
        if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if bool(stor6[arg1].field_512):
            if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor6[arg1].field_512):
                if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(stor6[arg1].field_513 % 128) + (uint255(stor6[arg1].field_256) * 0.5) + 384] = 0
                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 384] = stor6[arg1].field_513 % 128
                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 416 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160 len ceil32(stor6[arg1].field_513 % 128)]
                if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 416] = 0
            else:
                if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160] = 256 * Mask(248, 0, stor6[arg1].field_520)
                else:
                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                    idx = ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor6[arg1].field_256) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(stor6[arg1].field_513 % 128) + (uint255(stor6[arg1].field_256) * 0.5) + 384] = 0
                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 384] = stor6[arg1].field_513 % 128
                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 416 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160 len ceil32(stor6[arg1].field_513 % 128)]
                if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 416] = 0
        else:
            if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if not stor6[arg1].field_513 % 128:
                if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(stor6[arg1].field_513 % 128) + (uint255(stor6[arg1].field_256) * 0.5) + 384] = 0
                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 384] = stor6[arg1].field_513 % 128
                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 416 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160 len ceil32(stor6[arg1].field_513 % 128)]
                if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 416] = 0
            else:
                if 31 >= stor6[arg1].field_513 % 128:
                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160] = 256 * Mask(248, 0, stor6[arg1].field_520)
                else:
                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                    idx = ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor6[arg1].field_256) * 0.5) + stor6[arg1].field_513 % 128 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(stor6[arg1].field_513 % 128) + (uint255(stor6[arg1].field_256) * 0.5) + 384] = 0
                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 384] = stor6[arg1].field_513 % 128
                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 416 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160 len ceil32(stor6[arg1].field_513 % 128)]
                if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 416] = 0
        return address(stor6[arg1].field_0), 
               Array(len=2 * Mask(256, -1, stor6[arg1].field_256), data=mem[128 len ceil32(uint255(stor6[arg1].field_256) * 0.5)], stor6[arg1].field_512 % 128, mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 160 len ceil32(stor6[arg1].field_513 % 128)]),
               ceil32(uint255(stor6[arg1].field_256) * 0.5) + 224,
               stor6[arg1].field_768,
               stor6[arg1].field_1024,
               stor6[arg1].field_1280
    if bool(stor6[arg1].field_256) == stor6[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor6[arg1].field_256):
        if bool(stor6[arg1].field_256) == uint255(stor6[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_256):
            if 31 >= uint255(stor6[arg1].field_256) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_264)
            else:
                mem[128] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor6[arg1].field_256) == stor6[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor6[arg1].field_257 % 128:
            if 31 >= stor6[arg1].field_257 % 128:
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_264)
            else:
                mem[128] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor6[arg1].field_512):
        if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6[arg1].field_512):
            if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor6[arg1].field_512):
                if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                    mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + stor6[arg1].field_257 % 128 + 384] = 0
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 384] = uint255(stor6[arg1].field_512) * 0.5
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(stor6[arg1].field_257 % 128) + 160 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                    mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 416] = 0
            else:
                if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                    mem[ceil32(stor6[arg1].field_257 % 128) + 160] = 256 * Mask(248, 0, stor6[arg1].field_520)
                else:
                    mem[ceil32(stor6[arg1].field_257 % 128) + 160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                    idx = ceil32(stor6[arg1].field_257 % 128) + 160
                    s = 0
                    while ceil32(stor6[arg1].field_257 % 128) + (uint255(stor6[arg1].field_512) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                    mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + stor6[arg1].field_257 % 128 + 384] = 0
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 384] = uint255(stor6[arg1].field_512) * 0.5
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(stor6[arg1].field_257 % 128) + 160 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                    mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 416] = 0
        else:
            if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if not stor6[arg1].field_513 % 128:
                if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                    mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + stor6[arg1].field_257 % 128 + 384] = 0
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 384] = uint255(stor6[arg1].field_512) * 0.5
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(stor6[arg1].field_257 % 128) + 160 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                    mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 416] = 0
            else:
                if 31 >= stor6[arg1].field_513 % 128:
                    mem[ceil32(stor6[arg1].field_257 % 128) + 160] = 256 * Mask(248, 0, stor6[arg1].field_520)
                else:
                    mem[ceil32(stor6[arg1].field_257 % 128) + 160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                    idx = ceil32(stor6[arg1].field_257 % 128) + 160
                    s = 0
                    while ceil32(stor6[arg1].field_257 % 128) + stor6[arg1].field_513 % 128 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                    mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + stor6[arg1].field_257 % 128 + 384] = 0
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 384] = uint255(stor6[arg1].field_512) * 0.5
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(stor6[arg1].field_257 % 128) + 160 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                    mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 416] = 0
        return address(stor6[arg1].field_0), 
               Array(len=stor6[arg1].field_256 % 128, data=mem[128 len ceil32(stor6[arg1].field_257 % 128)], 2 * Mask(256, -1, stor6[arg1].field_512), mem[ceil32(stor6[arg1].field_257 % 128) + 160 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]),
               ceil32(stor6[arg1].field_257 % 128) + 224,
               stor6[arg1].field_768,
               stor6[arg1].field_1024,
               stor6[arg1].field_1280
    if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor6[arg1].field_512):
        if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor6[arg1].field_512):
            if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_257 % 128 + 384] = 0
            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 384] = stor6[arg1].field_513 % 128
            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 416 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(stor6[arg1].field_257 % 128) + 160 len ceil32(stor6[arg1].field_513 % 128)]
            if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 416] = 0
        else:
            if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                mem[ceil32(stor6[arg1].field_257 % 128) + 160] = 256 * Mask(248, 0, stor6[arg1].field_520)
            else:
                mem[ceil32(stor6[arg1].field_257 % 128) + 160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                idx = ceil32(stor6[arg1].field_257 % 128) + 160
                s = 0
                while ceil32(stor6[arg1].field_257 % 128) + (uint255(stor6[arg1].field_512) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_257 % 128 + 384] = 0
            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 384] = stor6[arg1].field_513 % 128
            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 416 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(stor6[arg1].field_257 % 128) + 160 len ceil32(stor6[arg1].field_513 % 128)]
            if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 416] = 0
    else:
        if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if not stor6[arg1].field_513 % 128:
            if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_257 % 128 + 384] = 0
            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 384] = stor6[arg1].field_513 % 128
            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 416 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(stor6[arg1].field_257 % 128) + 160 len ceil32(stor6[arg1].field_513 % 128)]
            if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 416] = 0
        else:
            if 31 >= stor6[arg1].field_513 % 128:
                mem[ceil32(stor6[arg1].field_257 % 128) + 160] = 256 * Mask(248, 0, stor6[arg1].field_520)
            else:
                mem[ceil32(stor6[arg1].field_257 % 128) + 160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                idx = ceil32(stor6[arg1].field_257 % 128) + 160
                s = 0
                while ceil32(stor6[arg1].field_257 % 128) + stor6[arg1].field_513 % 128 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_257 % 128 + 384] = 0
            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 384] = stor6[arg1].field_513 % 128
            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 416 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(stor6[arg1].field_257 % 128) + 160 len ceil32(stor6[arg1].field_513 % 128)]
            if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 416] = 0
    return address(stor6[arg1].field_0), 
           Array(len=stor6[arg1].field_256 % 128, data=mem[128 len ceil32(stor6[arg1].field_257 % 128)], stor6[arg1].field_512 % 128, mem[ceil32(stor6[arg1].field_257 % 128) + 160 len ceil32(stor6[arg1].field_513 % 128)]),
           ceil32(stor6[arg1].field_257 % 128) + 224,
           stor6[arg1].field_768,
           stor6[arg1].field_1024,
           stor6[arg1].field_1280
}

function getWallets() {
    mem[64] = (32 * stor6.length) + 128
    mem[96] = stor6.length
    s = 128
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _109 = mem[64]
        mem[64] = mem[64] + 192
        mem[_109] = address(stor6[idx].field_0)
        if bool(stor6[idx].field_256):
            if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                revert with 0, 34
            _115 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
            mem[_115] = uint255(stor6[idx].field_256) * 0.5
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor6[idx].field_256):
                    mem[_109 + 32] = _115
                    if bool(stor6[idx].field_512):
                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _130 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                        mem[_130] = uint255(stor6[idx].field_512) * 0.5
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_130 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_130 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _130 + 32
                                    u = sha3(mem[0])
                                    while _130 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_130 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_130 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _130 + 32
                                    u = sha3(mem[0])
                                    while _130 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _130
                    else:
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _134 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                        mem[_134] = stor6[idx].field_513 % 128
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_134 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_134 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _134 + 32
                                    u = sha3(mem[0])
                                    while _134 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_134 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_134 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _134 + 32
                                    u = sha3(mem[0])
                                    while _134 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _134
                else:
                    if 31 >= uint255(stor6[idx].field_256) * 0.5:
                        mem[_115 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        mem[_109 + 32] = _115
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _143 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                            mem[_143] = uint255(stor6[idx].field_512) * 0.5
                            if bool(stor6[idx].field_512):
                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor6[idx].field_512):
                                    if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                        mem[_143 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_143 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _143 + 32
                                        u = sha3(mem[0])
                                        while _143 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor6[idx].field_513 % 128:
                                    if 31 >= stor6[idx].field_513 % 128:
                                        mem[_143 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_143 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _143 + 32
                                        u = sha3(mem[0])
                                        while _143 + stor6[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_109 + 64] = _143
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            _150 = mem[64]
                            mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                            mem[_150] = stor6[idx].field_513 % 128
                            if bool(stor6[idx].field_512):
                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor6[idx].field_512):
                                    if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                        mem[_150 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_150 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _150 + 32
                                        u = sha3(mem[0])
                                        while _150 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor6[idx].field_513 % 128:
                                    if 31 >= stor6[idx].field_513 % 128:
                                        mem[_150 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_150 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _150 + 32
                                        u = sha3(mem[0])
                                        while _150 + stor6[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_109 + 64] = _150
                    else:
                        mem[0] = sha3(6) + (6 * idx) + 1
                        mem[_115 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 1)].field_0
                        t = _115 + 32
                        u = sha3(mem[0])
                        while _115 + (uint255(stor6[idx].field_256) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_109 + 32] = _115
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _221 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                            mem[_221] = uint255(stor6[idx].field_512) * 0.5
                            if bool(stor6[idx].field_512):
                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor6[idx].field_512):
                                    mem[_109 + 64] = _221
                                    mem[_109 + 96] = stor6[idx].field_768
                                    mem[_109 + 128] = stor6[idx].field_1024
                                    mem[_109 + 160] = stor6[idx].field_1280
                                    mem[s] = _109
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_221 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    mem[_109 + 64] = _221
                                    mem[_109 + 96] = stor6[idx].field_768
                                    mem[_109 + 128] = stor6[idx].field_1024
                                    mem[_109 + 160] = stor6[idx].field_1280
                                    mem[s] = _109
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[0] = sha3(6) + (6 * idx) + 2
                                mem[_221 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                t = _221 + 32
                                u = sha3(mem[0])
                                while _221 + (uint255(stor6[u].field_512) * 0.5) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_109 + 64] = _221
                                mem[_109 + 96] = stor6[u].field_768
                                mem[_109 + 128] = stor6[u].field_1024
                                mem[_109 + 160] = stor6[u].field_1280
                                mem[t] = _109
                                t = t + 32
                                u = u + 1
                                continue 
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_221 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_221 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _221 + 32
                                    u = sha3(mem[0])
                                    while _221 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_109 + 64] = _221
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            _227 = mem[64]
                            mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                            mem[_227] = stor6[idx].field_513 % 128
                            if bool(stor6[idx].field_512):
                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor6[idx].field_512):
                                    if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                        mem[_227 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_227 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _227 + 32
                                        u = sha3(mem[0])
                                        while _227 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor6[idx].field_513 % 128:
                                    if 31 >= stor6[idx].field_513 % 128:
                                        mem[_227 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_227 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _227 + 32
                                        u = sha3(mem[0])
                                        while _227 + stor6[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_109 + 64] = _227
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor6[idx].field_257 % 128:
                    mem[_109 + 32] = _115
                    if bool(stor6[idx].field_512):
                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _135 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                        mem[_135] = uint255(stor6[idx].field_512) * 0.5
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_135 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_135 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _135 + 32
                                    u = sha3(mem[0])
                                    while _135 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_135 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_135 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _135 + 32
                                    u = sha3(mem[0])
                                    while _135 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _135
                    else:
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _144 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                        mem[_144] = stor6[idx].field_513 % 128
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_144 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_144 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _144 + 32
                                    u = sha3(mem[0])
                                    while _144 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_144 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_144 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _144 + 32
                                    u = sha3(mem[0])
                                    while _144 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _144
                else:
                    if 31 >= stor6[idx].field_257 % 128:
                        mem[_115 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        mem[_109 + 32] = _115
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _151 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                            mem[_151] = uint255(stor6[idx].field_512) * 0.5
                            if bool(stor6[idx].field_512):
                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor6[idx].field_512):
                                    if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                        mem[_151 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_151 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _151 + 32
                                        u = sha3(mem[0])
                                        while _151 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor6[idx].field_513 % 128:
                                    if 31 >= stor6[idx].field_513 % 128:
                                        mem[_151 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_151 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _151 + 32
                                        u = sha3(mem[0])
                                        while _151 + stor6[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_109 + 64] = _151
                            mem[_109 + 96] = stor6[idx].field_768
                            mem[_109 + 128] = stor6[idx].field_1024
                            mem[_109 + 160] = stor6[idx].field_1280
                            mem[s] = _109
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _155 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                        mem[_155] = stor6[idx].field_513 % 128
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_155 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_155 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _155 + 32
                                    u = sha3(mem[0])
                                    while _155 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_109 + 64] = _155
                            mem[_109 + 96] = stor6[idx].field_768
                            mem[_109 + 128] = stor6[idx].field_1024
                            mem[_109 + 160] = stor6[idx].field_1280
                            mem[s] = _109
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if not stor6[idx].field_513 % 128:
                            mem[_109 + 64] = _155
                            mem[_109 + 96] = stor6[idx].field_768
                            mem[_109 + 128] = stor6[idx].field_1024
                            mem[_109 + 160] = stor6[idx].field_1280
                            mem[s] = _109
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor6[idx].field_513 % 128:
                            mem[_155 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                            mem[_109 + 64] = _155
                            mem[_109 + 96] = stor6[idx].field_768
                            mem[_109 + 128] = stor6[idx].field_1024
                            mem[_109 + 160] = stor6[idx].field_1280
                            mem[s] = _109
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(6) + (6 * idx) + 2
                        mem[_155 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                        t = _155 + 32
                        u = sha3(mem[0])
                        while _155 + stor6[u].field_513 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_109 + 64] = _155
                        mem[_109 + 96] = stor6[u].field_768
                        mem[_109 + 128] = stor6[u].field_1024
                        mem[_109 + 160] = stor6[u].field_1280
                        mem[t] = _109
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = sha3(6) + (6 * idx) + 1
                    mem[_115 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 1)].field_0
                    t = _115 + 32
                    u = sha3(mem[0])
                    while _115 + stor6[idx].field_257 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_109 + 32] = _115
                    if bool(stor6[idx].field_512):
                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _222 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                        mem[_222] = uint255(stor6[idx].field_512) * 0.5
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_222 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_222 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _222 + 32
                                    u = sha3(mem[0])
                                    while _222 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_222 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_222 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _222 + 32
                                    u = sha3(mem[0])
                                    while _222 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _222
                    else:
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _228 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                        mem[_228] = stor6[idx].field_513 % 128
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_228 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_228 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _228 + 32
                                    u = sha3(mem[0])
                                    while _228 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_228 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_228 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _228 + 32
                                    u = sha3(mem[0])
                                    while _228 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _228
        else:
            if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                revert with 0, 34
            _118 = mem[64]
            mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
            mem[_118] = stor6[idx].field_257 % 128
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor6[idx].field_256):
                    mem[_109 + 32] = _118
                    if bool(stor6[idx].field_512):
                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _136 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                        mem[_136] = uint255(stor6[idx].field_512) * 0.5
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_136 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_136 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _136 + 32
                                    u = sha3(mem[0])
                                    while _136 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_136 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_136 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _136 + 32
                                    u = sha3(mem[0])
                                    while _136 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _136
                    else:
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _145 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                        mem[_145] = stor6[idx].field_513 % 128
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_145 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_145 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _145 + 32
                                    u = sha3(mem[0])
                                    while _145 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_145 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_145 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _145 + 32
                                    u = sha3(mem[0])
                                    while _145 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _145
                else:
                    if 31 >= uint255(stor6[idx].field_256) * 0.5:
                        mem[_118 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        mem[_109 + 32] = _118
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _152 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                            mem[_152] = uint255(stor6[idx].field_512) * 0.5
                            if bool(stor6[idx].field_512):
                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor6[idx].field_512):
                                    if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                        mem[_152 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_152 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _152 + 32
                                        u = sha3(mem[0])
                                        while _152 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor6[idx].field_513 % 128:
                                    if 31 >= stor6[idx].field_513 % 128:
                                        mem[_152 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_152 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _152 + 32
                                        u = sha3(mem[0])
                                        while _152 + stor6[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_109 + 64] = _152
                            mem[_109 + 96] = stor6[idx].field_768
                            mem[_109 + 128] = stor6[idx].field_1024
                            mem[_109 + 160] = stor6[idx].field_1280
                            mem[s] = _109
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _156 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                        mem[_156] = stor6[idx].field_513 % 128
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_156 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_156 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _156 + 32
                                    u = sha3(mem[0])
                                    while _156 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_109 + 64] = _156
                            mem[_109 + 96] = stor6[idx].field_768
                            mem[_109 + 128] = stor6[idx].field_1024
                            mem[_109 + 160] = stor6[idx].field_1280
                            mem[s] = _109
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if not stor6[idx].field_513 % 128:
                            mem[_109 + 64] = _156
                            mem[_109 + 96] = stor6[idx].field_768
                            mem[_109 + 128] = stor6[idx].field_1024
                            mem[_109 + 160] = stor6[idx].field_1280
                            mem[s] = _109
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor6[idx].field_513 % 128:
                            mem[_156 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                            mem[_109 + 64] = _156
                            mem[_109 + 96] = stor6[idx].field_768
                            mem[_109 + 128] = stor6[idx].field_1024
                            mem[_109 + 160] = stor6[idx].field_1280
                            mem[s] = _109
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(6) + (6 * idx) + 2
                        mem[_156 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                        t = _156 + 32
                        u = sha3(mem[0])
                        while _156 + stor6[u].field_513 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_109 + 64] = _156
                        mem[_109 + 96] = stor6[u].field_768
                        mem[_109 + 128] = stor6[u].field_1024
                        mem[_109 + 160] = stor6[u].field_1280
                        mem[t] = _109
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = sha3(6) + (6 * idx) + 1
                    mem[_118 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 1)].field_0
                    t = _118 + 32
                    u = sha3(mem[0])
                    while _118 + (uint255(stor6[idx].field_256) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_109 + 32] = _118
                    if bool(stor6[idx].field_512):
                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _223 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                        mem[_223] = uint255(stor6[idx].field_512) * 0.5
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_223 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_223 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _223 + 32
                                    u = sha3(mem[0])
                                    while _223 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_223 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_223 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _223 + 32
                                    u = sha3(mem[0])
                                    while _223 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _223
                    else:
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _229 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                        mem[_229] = stor6[idx].field_513 % 128
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_229 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_229 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _229 + 32
                                    u = sha3(mem[0])
                                    while _229 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_229 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_229 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _229 + 32
                                    u = sha3(mem[0])
                                    while _229 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _229
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor6[idx].field_257 % 128:
                    mem[_109 + 32] = _118
                    if bool(stor6[idx].field_512):
                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _146 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                        mem[_146] = uint255(stor6[idx].field_512) * 0.5
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_146 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_146 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _146 + 32
                                    u = sha3(mem[0])
                                    while _146 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_146 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_146 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _146 + 32
                                    u = sha3(mem[0])
                                    while _146 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _146
                    else:
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _153 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                        mem[_153] = stor6[idx].field_513 % 128
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor6[idx].field_512):
                                if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                    mem[_153 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_153 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _153 + 32
                                    u = sha3(mem[0])
                                    while _153 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor6[idx].field_513 % 128:
                                if 31 >= stor6[idx].field_513 % 128:
                                    mem[_153 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                else:
                                    mem[0] = sha3(6) + (6 * idx) + 2
                                    mem[_153 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                    t = _153 + 32
                                    u = sha3(mem[0])
                                    while _153 + stor6[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_109 + 64] = _153
                else:
                    if 31 >= stor6[idx].field_257 % 128:
                        mem[_118 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        mem[_109 + 32] = _118
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _157 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                            mem[_157] = uint255(stor6[idx].field_512) * 0.5
                            if bool(stor6[idx].field_512):
                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor6[idx].field_512):
                                    if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                        mem[_157 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_157 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _157 + 32
                                        u = sha3(mem[0])
                                        while _157 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[_109 + 64] = _157
                                mem[_109 + 96] = stor6[idx].field_768
                                mem[_109 + 128] = stor6[idx].field_1024
                                mem[_109 + 160] = stor6[idx].field_1280
                                mem[s] = _109
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor6[idx].field_513 % 128:
                                mem[_109 + 64] = _157
                                mem[_109 + 96] = stor6[idx].field_768
                                mem[_109 + 128] = stor6[idx].field_1024
                                mem[_109 + 160] = stor6[idx].field_1280
                                mem[s] = _109
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor6[idx].field_513 % 128:
                                mem[_157 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                mem[_109 + 64] = _157
                                mem[_109 + 96] = stor6[idx].field_768
                                mem[_109 + 128] = stor6[idx].field_1024
                                mem[_109 + 160] = stor6[idx].field_1280
                                mem[s] = _109
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(6) + (6 * idx) + 2
                            mem[_157 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                            t = _157 + 32
                            u = sha3(mem[0])
                            while _157 + stor6[u].field_513 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_109 + 64] = _157
                            mem[_109 + 96] = stor6[u].field_768
                            mem[_109 + 128] = stor6[u].field_1024
                            mem[_109 + 160] = stor6[u].field_1280
                            mem[t] = _109
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _161 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                        mem[_161] = stor6[idx].field_513 % 128
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor6[idx].field_512):
                                mem[_109 + 64] = _161
                                mem[_109 + 96] = stor6[idx].field_768
                                mem[_109 + 128] = stor6[idx].field_1024
                                mem[_109 + 160] = stor6[idx].field_1280
                                mem[s] = _109
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                mem[_161 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                mem[_109 + 64] = _161
                                mem[_109 + 96] = stor6[idx].field_768
                                mem[_109 + 128] = stor6[idx].field_1024
                                mem[_109 + 160] = stor6[idx].field_1280
                                mem[s] = _109
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(6) + (6 * idx) + 2
                            mem[_161 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                            t = _161 + 32
                            u = sha3(mem[0])
                            while _161 + (uint255(stor6[u].field_512) * 0.5) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_109 + 64] = _161
                            mem[_109 + 96] = stor6[u].field_768
                            mem[_109 + 128] = stor6[u].field_1024
                            mem[_109 + 160] = stor6[u].field_1280
                            mem[t] = _109
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor6[idx].field_513 % 128:
                            if 31 >= stor6[idx].field_513 % 128:
                                mem[_161 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                            else:
                                mem[0] = sha3(6) + (6 * idx) + 2
                                mem[_161 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                t = _161 + 32
                                u = sha3(mem[0])
                                while _161 + stor6[idx].field_513 % 128 > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_109 + 64] = _161
                    else:
                        mem[0] = sha3(6) + (6 * idx) + 1
                        mem[_118 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 1)].field_0
                        t = _118 + 32
                        u = sha3(mem[0])
                        while _118 + stor6[idx].field_257 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_109 + 32] = _118
                        if bool(stor6[idx].field_512):
                            if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _224 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                            mem[_224] = uint255(stor6[idx].field_512) * 0.5
                            if bool(stor6[idx].field_512):
                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor6[idx].field_512):
                                    if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                        mem[_224 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_224 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _224 + 32
                                        u = sha3(mem[0])
                                        while _224 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor6[idx].field_513 % 128:
                                    if 31 >= stor6[idx].field_513 % 128:
                                        mem[_224 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_224 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _224 + 32
                                        u = sha3(mem[0])
                                        while _224 + stor6[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_109 + 64] = _224
                        else:
                            if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            _230 = mem[64]
                            mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                            mem[_230] = stor6[idx].field_513 % 128
                            if bool(stor6[idx].field_512):
                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor6[idx].field_512):
                                    if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                        mem[_230 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_230 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _230 + 32
                                        u = sha3(mem[0])
                                        while _230 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor6[idx].field_513 % 128:
                                    if 31 >= stor6[idx].field_513 % 128:
                                        mem[_230 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                    else:
                                        mem[0] = sha3(6) + (6 * idx) + 2
                                        mem[_230 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                        t = _230 + 32
                                        u = sha3(mem[0])
                                        while _230 + stor6[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_109 + 64] = _230
        mem[_109 + 96] = stor6[idx].field_768
        mem[_109 + 128] = stor6[idx].field_1024
        mem[_109 + 160] = stor6[idx].field_1280
        mem[s] = _109
        s = s + 32
        idx = idx + 1
        continue 
    _110 = mem[64]
    mem[mem[64]] = 32
    _111 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _111:
        mem[u] = t + -_110 - 64
        _214 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _216 = mem[_214 + 32]
        mem[t + 32] = 192
        _218 = mem[_216]
        mem[t + 192] = mem[_216]
        v = 0
        while v < _218:
            mem[v + t + 224] = mem[_216 + v + 32]
            v = v + 32
            continue 
        if ceil32(_218) <= _218:
            _263 = mem[_214 + 64]
            mem[t + 64] = ceil32(_218) + 224
            _264 = mem[_263]
            mem[ceil32(_218) + t + 224] = mem[_263]
            v = 0
            while v < _264:
                mem[v + ceil32(_218) + t + 256] = mem[_263 + v + 32]
                v = v + 32
                continue 
            if ceil32(_264) > _264:
                mem[ceil32(_218) + t + _264 + 256] = 0
            mem[t + 96] = mem[_214 + 96]
            mem[t + 128] = mem[_214 + 128]
            mem[t + 160] = mem[_214 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_264) + ceil32(_218) + t + 256
            u = u + 32
            continue 
        mem[t + _218 + 224] = 0
        _265 = mem[_214 + 64]
        mem[t + 64] = ceil32(_218) + 224
        _266 = mem[_265]
        mem[ceil32(_218) + t + 224] = mem[_265]
        v = 0
        while v < _266:
            mem[v + ceil32(_218) + t + 256] = mem[_265 + v + 32]
            v = v + 32
            continue 
        if ceil32(_266) > _266:
            mem[ceil32(_218) + t + _266 + 256] = 0
        mem[t + 96] = mem[_214 + 96]
        mem[t + 128] = mem[_214 + 128]
        mem[t + 160] = mem[_214 + 160]
        idx = idx + 1
        s = s + 32
        t = ceil32(_266) + ceil32(_218) + t + 256
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit Deposit(msg.sender, msg.value, eth.balance(this.address));
    if owners(uint256 arg1) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 < owners.length
        return address(owners[arg1].field_0)
    if unknown_0x173825d9(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if address(stor1.length) != msg.sender:
            revert with 0, 'Caller is not the deployer'
        if not stor2[address(arg1)]:
            revert with 0, 'Owner is not exists'
        if address(stor1.length) == address(arg1):
            revert with 0, 'Can't remove deployer'
        stor2[address(arg1)] = 0
        if owners.length < 1:
            revert with 0, 17
        if var32002 >= owners.length - 1:
            if not owners.length:
                revert with 0, 49
            address(owners[owners.length].field_0) = 0
            owners.length--
            if numConfirmationsRequired > owners.length:
                if address(stor1.length) != msg.sender:
                    revert with 0, 'Caller is not the deployer'
                if owners.length > 50:
                    revert with 0, 'Invalid requirement'
                if owners.length > owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                numConfirmationsRequired = owners.length
                emit RequirementChange(owners.length);
            emit OwnerRemoval(address(arg1));
        if var34001 >= owners.length:
            revert with 0, 50
        if address(owners[var36001].field_0) == address(arg1):
            if owners.length < 1:
                revert with 0, 17
            if owners.length - 1 >= owners.length:
                revert with 0, 50
            if var36004 >= owners.length:
                revert with 0, 50
            address(owners[var36004].field_0) = address(owners[owners.length].field_0)
            if not owners.length:
                revert with 0, 49
            address(owners[owners.length].field_0) = 0
            owners.length--
            if numConfirmationsRequired > owners.length:
                if address(stor1.length) != msg.sender:
                    revert with 0, 'Caller is not the deployer'
                if owners.length > 50:
                    revert with 0, 'Invalid requirement'
                if owners.length > owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                numConfirmationsRequired = owners.length
                emit RequirementChange(owners.length);
            emit OwnerRemoval(address(arg1));
        if var40001 == -1:
            revert with 0, 17
        if owners.length < 1:
            revert with 0, 17
        if var52002 >= owners.length - 1:
            if not owners.length:
                revert with 0, 49
            address(owners[owners.length].field_0) = 0
            owners.length--
            if numConfirmationsRequired > owners.length:
                if address(stor1.length) != msg.sender:
                    revert with 0, 'Caller is not the deployer'
                if owners.length > 50:
                    revert with 0, 'Invalid requirement'
                if owners.length > owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                numConfirmationsRequired = owners.length
                emit RequirementChange(owners.length);
            emit OwnerRemoval(address(arg1));
        if var54001 >= owners.length:
            revert with 0, 50
        if address(owners[var56001].field_0) != address(arg1):
            if var60001 == -1:
                revert with 0, 17
            # nil
        else:
            if owners.length < 1:
                revert with 0, 17
            if owners.length - 1 >= owners.length:
                revert with 0, 50
            if var56004 >= owners.length:
                revert with 0, 50
            address(owners[var56004].field_0) = address(owners[owners.length].field_0)
            if not owners.length:
                revert with 0, 49
            address(owners[owners.length].field_0) = 0
            owners.length--
            if numConfirmationsRequired > owners.length:
                if address(stor1.length) != msg.sender:
                    revert with 0, 'Caller is not the deployer'
                if owners.length > 50:
                    revert with 0, 'Invalid requirement'
                if owners.length > owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                numConfirmationsRequired = owners.length
                emit RequirementChange(owners.length);
            emit OwnerRemoval(address(arg1));
    else:
        if unknown_0x1e010439(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            if arg1 >= stor6.length:
                revert with 0, 50
            if 0 == arg1:
                return eth.balance(this.address)
            require ext_code.size(address(stor6[arg1].field_0))
            staticcall address(stor6[arg1].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        if unknown_0x2f54bf6e(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            return bool(stor2[arg1])
        if unknown_0x3c536938(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            if not stor2[msg.sender]:
                if address(stor1.length) != msg.sender:
                    revert with 0, 'Unauthorized caller'
            if arg2 >= sub_3de5d0de[arg1].field_0:
                revert with 0, 'Transaction does not exist'
            if arg2 >= sub_3de5d0de[arg1].field_0:
                revert with 0, 50
            if uint8(sub_3de5d0de[arg1][arg2].field_768):
                revert with 0, 'Transaction already executed'
            if arg1 >= stor6.length:
                revert with 0, 50
            if arg2 >= sub_3de5d0de[arg1].field_0:
                revert with 0, 50
            if sub_3de5d0de[arg1][arg2].field_1024 < numConfirmationsRequired:
                revert with 0, 'Cannot execute transaction'
            if arg1 >= stor6.length:
                revert with 0, 50
            if 24 * 3600 > !stor6[arg1].field_1024:
                revert with 0, 17
            if block.timestamp > stor6[arg1].field_1024 + (24 * 3600):
                stor6[arg1].field_1024 = block.timestamp
                stor6[arg1].field_1280 = 0
            if stor6[arg1].field_1280 > !sub_3de5d0de[arg1][arg2].field_256:
                revert with 0, 17
            if stor6[arg1].field_1280 + sub_3de5d0de[arg1][arg2].field_256 > stor6[arg1].field_768:
                revert with 0, 'Maximum daily limit'
            if stor6[arg1].field_1280 > !sub_3de5d0de[arg1][arg2].field_256:
                revert with 0, 17
            if stor6[arg1].field_1280 + sub_3de5d0de[arg1][arg2].field_256 < stor6[arg1].field_1280:
                revert with 0, 'Maximum daily limit'
            uint8(sub_3de5d0de[arg1][arg2].field_768) = 1
            if stor6[arg1].field_1280 > !sub_3de5d0de[arg1][arg2].field_256:
                revert with 0, 17
            stor6[arg1].field_1280 += sub_3de5d0de[arg1][arg2].field_256
            if arg1:
                require ext_code.size(address(stor6[arg1].field_0))
                call address(stor6[arg1].field_0).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(sub_3de5d0de[arg1][arg2].field_0), sub_3de5d0de[arg1][arg2].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    uint8(sub_3de5d0de[arg1][arg2].field_768) = 0
                    if stor6[arg1].field_1280 < sub_3de5d0de[arg1][arg2].field_256:
                        revert with 0, 17
                    stor6[arg1].field_1280 -= sub_3de5d0de[arg1][arg2].field_256
                    if not ext_call.return_data[0]:
                        revert with 0, 'Failed or insufficent funds'
            else:
                if bool(sub_3de5d0de[arg1][arg2].field_512):
                    if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_3de5d0de[arg1][arg2].field_512):
                        mem[128] = Mask(248, 8, sub_3de5d0de[arg1][arg2].field_512)
                        call address(sub_3de5d0de[arg1][arg2].field_0) with:
                           funct uint32(sub_3de5d0de[arg1][arg2].field_736)
                           value sub_3de5d0de[arg1][arg2].field_256 wei
                             gas gas_remaining wei
                            args mem[132 len (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) - 4]
                    else:
                        if bool(sub_3de5d0de[arg1][arg2].field_512) != 1:
                            call address(sub_3de5d0de[arg1][arg2].field_0).mem[128 len 4] with:
                               value sub_3de5d0de[arg1][arg2].field_256 wei
                                 gas gas_remaining wei
                                args mem[132 len -132]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5:
                                mem[idx + 128] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            call address(sub_3de5d0de[arg1][arg2].field_0).mem[128 len 4] with:
                               value sub_3de5d0de[arg1][arg2].field_256 wei
                                 gas gas_remaining wei
                                args mem[132 len (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) - 4]
                else:
                    if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_3de5d0de[arg1][arg2].field_512):
                        mem[128] = Mask(248, 8, sub_3de5d0de[arg1][arg2].field_512)
                        call address(sub_3de5d0de[arg1][arg2].field_0) with:
                           funct uint32(sub_3de5d0de[arg1][arg2].field_736)
                           value sub_3de5d0de[arg1][arg2].field_256 wei
                             gas gas_remaining wei
                            args mem[132 len sub_3de5d0de[arg1][arg2].field_513 % 128 - 4]
                    else:
                        if bool(sub_3de5d0de[arg1][arg2].field_512) != 1:
                            call address(sub_3de5d0de[arg1][arg2].field_0).mem[128 len 4] with:
                               value sub_3de5d0de[arg1][arg2].field_256 wei
                                 gas gas_remaining wei
                                args mem[132 len -132]
                        else:
                            idx = 0
                            s = 0
                            while idx < sub_3de5d0de[arg1][arg2].field_513 % 128:
                                mem[idx + 128] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            call address(sub_3de5d0de[arg1][arg2].field_0).mem[128 len 4] with:
                               value sub_3de5d0de[arg1][arg2].field_256 wei
                                 gas gas_remaining wei
                                args mem[132 len sub_3de5d0de[arg1][arg2].field_513 % 128 - 4]
                if not ext_call.success:
                    uint8(sub_3de5d0de[arg1][arg2].field_768) = 0
                    if stor6[arg1].field_1280 < sub_3de5d0de[arg1][arg2].field_256:
                        revert with 0, 17
                    stor6[arg1].field_1280 -= sub_3de5d0de[arg1][arg2].field_256
                    if not ext_call.success:
                        revert with 0, 'Failed or insufficent funds'
            emit 0x64f016df: msg.sender, arg1, arg2
        else:
            if unknown_0x3de5d0de(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                return sub_3de5d0de[arg1].field_0
            if unknown_0x4eaf9db6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg2 < sub_3de5d0de[arg1].field_0
                if bool(sub_3de5d0de[arg1][arg2].field_512):
                    if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if bool(sub_3de5d0de[arg1][arg2].field_512):
                        if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512):
                            if 31 >= uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5:
                                mem[160] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                            else:
                                mem[160] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                                idx = 160
                                s = 0
                                while (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
                            revert with 0, 34
                        if sub_3de5d0de[arg1][arg2].field_513 % 128:
                            if 31 >= sub_3de5d0de[arg1][arg2].field_513 % 128:
                                mem[160] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                            else:
                                mem[160] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                                idx = 160
                                s = 0
                                while sub_3de5d0de[arg1][arg2].field_513 % 128 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return address(sub_3de5d0de[arg1][arg2].field_0), 
                           sub_3de5d0de[arg1][arg2].field_256,
                           Array(len=2 * Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512), data=mem[160 len ceil32(uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5)]),
                           bool(uint8(sub_3de5d0de[arg1][arg2].field_768)),
                           sub_3de5d0de[arg1][arg2].field_1024
                if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
                    revert with 0, 34
                if bool(sub_3de5d0de[arg1][arg2].field_512):
                    if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512):
                        if 31 >= uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5:
                            mem[160] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                        else:
                            mem[160] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                            idx = 160
                            s = 0
                            while (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
                        revert with 0, 34
                    if sub_3de5d0de[arg1][arg2].field_513 % 128:
                        if 31 >= sub_3de5d0de[arg1][arg2].field_513 % 128:
                            mem[160] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                        else:
                            mem[160] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                            idx = 160
                            s = 0
                            while sub_3de5d0de[arg1][arg2].field_513 % 128 + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                return address(sub_3de5d0de[arg1][arg2].field_0), 
                       sub_3de5d0de[arg1][arg2].field_256,
                       Array(len=sub_3de5d0de[arg1][arg2].field_512 % 128, data=mem[160 len ceil32(sub_3de5d0de[arg1][arg2].field_513 % 128)]),
                       bool(uint8(sub_3de5d0de[arg1][arg2].field_768)),
                       sub_3de5d0de[arg1][arg2].field_1024
            if unknown_0x5742177c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                mem[0] = arg1
                mem[32] = 5
                mem[64] = (32 * sub_3de5d0de[arg1].field_0) + 160
                mem[128] = sub_3de5d0de[arg1].field_0
                s = 160
                idx = 0
                while idx < sub_3de5d0de[arg1].field_0:
                    mem[0] = sha3(arg1, 5)
                    _4365 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_4365] = address(sub_3de5d0de[arg1][idx].field_0)
                    mem[_4365 + 32] = sub_3de5d0de[arg1][idx].field_256
                    if bool(sub_3de5d0de[arg1][idx].field_512):
                        if bool(sub_3de5d0de[arg1][idx].field_512) == uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _4662 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5) + 32
                        mem[_4662] = uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5
                        if bool(sub_3de5d0de[arg1][idx].field_512):
                            if bool(sub_3de5d0de[arg1][idx].field_512) == uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, sub_3de5d0de[arg1][idx].field_512):
                                if 31 >= uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5:
                                    mem[_4662 + 32] = 256 * Mask(248, 0, sub_3de5d0de[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(sha3(arg1, 5)) + (5 * idx) + 2
                                    mem[_4662 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + (5 * idx) + 2)].field_0
                                    t = _4662 + 32
                                    u = sha3(mem[0])
                                    while _4662 + (uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_4365 + 64] = _4662
                            mem[_4365 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
                            mem[_4365 + 128] = sub_3de5d0de[arg1][idx].field_1024
                            mem[s] = _4365
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(sub_3de5d0de[arg1][idx].field_512) == sub_3de5d0de[arg1][idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if not sub_3de5d0de[arg1][idx].field_513 % 128:
                            mem[_4365 + 64] = _4662
                            mem[_4365 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
                            mem[_4365 + 128] = sub_3de5d0de[arg1][idx].field_1024
                            mem[s] = _4365
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= sub_3de5d0de[arg1][idx].field_513 % 128:
                            mem[_4662 + 32] = 256 * Mask(248, 0, sub_3de5d0de[arg1][idx].field_520)
                            mem[_4365 + 64] = _4662
                            mem[_4365 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
                            mem[_4365 + 128] = sub_3de5d0de[arg1][idx].field_1024
                            mem[s] = _4365
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 5)) + (5 * idx) + 2
                        mem[_4662 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + (5 * idx) + 2)].field_0
                        t = _4662 + 32
                        u = sha3(mem[0])
                        while _4662 + sub_3de5d0de[arg1][u].field_513 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_4365 + 64] = _4662
                        mem[_4365 + 96] = bool(uint8(sub_3de5d0de[arg1][u].field_768))
                        mem[_4365 + 128] = sub_3de5d0de[arg1][u].field_1024
                        mem[t] = _4365
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(sub_3de5d0de[arg1][idx].field_512) == sub_3de5d0de[arg1][idx].field_513 % 128 < 32:
                        revert with 0, 34
                    _4790 = mem[64]
                    mem[64] = mem[64] + ceil32(sub_3de5d0de[arg1][idx].field_513 % 128) + 32
                    mem[_4790] = sub_3de5d0de[arg1][idx].field_513 % 128
                    if bool(sub_3de5d0de[arg1][idx].field_512):
                        if bool(sub_3de5d0de[arg1][idx].field_512) == uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_3de5d0de[arg1][idx].field_512):
                            mem[_4365 + 64] = _4790
                            mem[_4365 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
                            mem[_4365 + 128] = sub_3de5d0de[arg1][idx].field_1024
                            mem[s] = _4365
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(sub_3de5d0de[arg1][idx].field_512) * 0.5:
                            mem[_4790 + 32] = 256 * Mask(248, 0, sub_3de5d0de[arg1][idx].field_520)
                            mem[_4365 + 64] = _4790
                            mem[_4365 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
                            mem[_4365 + 128] = sub_3de5d0de[arg1][idx].field_1024
                            mem[s] = _4365
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 5)) + (5 * idx) + 2
                        mem[_4790 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + (5 * idx) + 2)].field_0
                        t = _4790 + 32
                        u = sha3(mem[0])
                        while _4790 + (uint255(sub_3de5d0de[arg1][u].field_512) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_4365 + 64] = _4790
                        mem[_4365 + 96] = bool(uint8(sub_3de5d0de[arg1][u].field_768))
                        mem[_4365 + 128] = sub_3de5d0de[arg1][u].field_1024
                        mem[t] = _4365
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(sub_3de5d0de[arg1][idx].field_512) == sub_3de5d0de[arg1][idx].field_513 % 128 < 32:
                        revert with 0, 34
                    if sub_3de5d0de[arg1][idx].field_513 % 128:
                        if 31 >= sub_3de5d0de[arg1][idx].field_513 % 128:
                            mem[_4790 + 32] = 256 * Mask(248, 0, sub_3de5d0de[arg1][idx].field_520)
                        else:
                            mem[0] = sha3(sha3(arg1, 5)) + (5 * idx) + 2
                            mem[_4790 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + (5 * idx) + 2)].field_0
                            t = _4790 + 32
                            u = sha3(mem[0])
                            while _4790 + sub_3de5d0de[arg1][idx].field_513 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_4365 + 64] = _4790
                    mem[_4365 + 96] = bool(uint8(sub_3de5d0de[arg1][idx].field_768))
                    mem[_4365 + 128] = sub_3de5d0de[arg1][idx].field_1024
                    mem[s] = _4365
                    s = s + 32
                    idx = idx + 1
                    continue 
                _4449 = mem[64]
                mem[mem[64]] = 32
                _4464 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + (32 * _4464) + 64
                u = mem[64] + 64
                while idx < _4464:
                    mem[u] = t + -_4449 - 64
                    _8010 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_8010 + 32]
                    _8013 = mem[_8010 + 64]
                    mem[t + 64] = 160
                    _8251 = mem[_8013]
                    mem[t + 160] = mem[_8013]
                    v = 0
                    while v < _8251:
                        mem[v + t + 192] = mem[_8013 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_8251) > _8251:
                        mem[t + _8251 + 192] = 0
                    mem[t + 96] = bool(mem[_8010 + 96])
                    mem[t + 128] = mem[_8010 + 128]
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_8251) + t + 192
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t - mem[64]
            if unknown_0x5ffc41cc(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                if address(stor1.length) != msg.sender:
                    revert with 0, 'Caller is not the deployer'
                if arg1 >= stor6.length:
                    revert with 0, 50
                stor6[arg1].field_768 = arg2
                emit DailyLimitChange(arg1, arg2);
            else:
                if unknown_0x63c3a887(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require arg1 == address(arg1)
                    require arg2 <= test266151307()
                    require arg2 + 35 < calldata.size
                    if arg2.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                        revert with 0, 65
                    require arg2 + arg2.length + 36 <= calldata.size
                    require arg3 <= test266151307()
                    require arg3 + 35 < calldata.size
                    if arg3.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg3.length)) + 130 < 129 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130 > test266151307():
                        revert with 0, 65
                    require arg3 + arg3.length + 36 <= calldata.size
                    if address(stor1.length) != msg.sender:
                        revert with 0, 'Caller is not the deployer'
                    stor6.length++
                    address(stor6[stor6.length].field_0) = address(arg1)
                    if bool(storF652[stor6.length].field_0):
                        if bool(storF652[stor6.length].field_0) == uint255(storF652[stor6.length].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if arg2.length:
                            stor[sha3((6 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0)][] = Array(len=arg2.length, data=arg2[all])
                        else:
                            storF652[stor6.length].field_0 = 0
                            idx = 0
                            while (uint255(storF652[stor6.length].field_0) * 0.5) + 31 / 32 > idx:
                                stor[idx + sha3((6 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0)] = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(storF652[stor6.length].field_0) == storF652[stor6.length].field_1 % 128 < 32:
                            revert with 0, 34
                        if arg2.length:
                            stor[sha3((6 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0)][] = Array(len=arg2.length, data=arg2[all])
                        else:
                            storF652[stor6.length].field_0 = 0
                            idx = 0
                            while storF652[stor6.length].field_1 % 128 + 31 / 32 > idx:
                                stor[idx + sha3((6 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0)] = 0
                                idx = idx + 1
                                continue 
                    if bool(storF652[stor6.length].field_0):
                        if bool(storF652[stor6.length].field_0) == uint255(storF652[stor6.length].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if arg3.length:
                            stor[sha3((6 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf)][] = Array(len=arg3.length, data=arg3[all])
                        else:
                            storF652[stor6.length].field_0 = 0
                            idx = 0
                            while (uint255(storF652[stor6.length].field_0) * 0.5) + 31 / 32 > idx:
                                stor[idx + sha3((6 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf)] = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(storF652[stor6.length].field_0) == storF652[stor6.length].field_1 % 128 < 32:
                            revert with 0, 34
                        if arg3.length:
                            stor[sha3((6 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf)][] = Array(len=arg3.length, data=arg3[all])
                        else:
                            storF652[stor6.length].field_0 = 0
                            idx = 0
                            while storF652[stor6.length].field_1 % 128 + 31 / 32 > idx:
                                stor[idx + sha3((6 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf)] = 0
                                idx = idx + 1
                                continue 
                    storF652[stor6.length] = arg4
                    storF652[stor6.length] = 0
                    storF652[stor6.length] = 0
                    if ceil32(arg2.length) <= arg2.length:
                        emit 0xf2807ea4: address(arg1), Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], 0) << (8 * ceil32(arg3.length)) - 256), ceil32(arg2.length) + 128, stor6.length
                    else:
                        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 450] = arg3.length
                        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 482 len ceil32(arg3.length)] = arg3[all], 0
                        if ceil32(arg3.length) > arg3.length:
                            mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + arg3.length + 482] = 0
                        emit 0xf2807ea4: address(arg1), Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + arg2.length + 482 len ceil32(arg3.length) - arg2.length + ceil32(arg2.length)]), ceil32(arg2.length) + 128, stor6.length
                else:
                    if unknown_0x680dc640(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if arg1 >= stor6.length:
                            revert with 0, 50
                        if 24 * 3600 > !stor6[arg1].field_1024:
                            revert with 0, 17
                        if block.timestamp > stor6[arg1].field_1024 + (24 * 3600):
                            return stor6[arg1].field_768
                        if stor6[arg1].field_768 >= stor6[arg1].field_1280:
                            return (stor6[arg1].field_768 - stor6[arg1].field_1280)
                        else:
                            return 0
                    if unknown_0x7065cb48(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if address(stor1.length) != msg.sender:
                            revert with 0, 'Caller is not the deployer'
                        if stor2[address(arg1)]:
                            revert with 0, 'Owner exists'
                        if not address(arg1):
                            revert with 0, 'Address is nulled'
                        if 1 > !owners.length:
                            revert with 0, 17
                        if owners.length + 1 > 50:
                            revert with 0, 'Invalid requirement'
                        if numConfirmationsRequired > owners.length + 1:
                            revert with 0, 'Invalid requirement'
                        if not numConfirmationsRequired:
                            revert with 0, 'Invalid requirement'
                        if not owners.length + 1:
                            revert with 0, 'Invalid requirement'
                        stor2[address(arg1)] = 1
                        owners.length++
                        address(owners[owners.length].field_0) = address(arg1)
                        emit OwnerAddition(address(arg1));
                    else:
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if address(stor1.length) != msg.sender:
                                revert with 0, 'Caller is not the deployer'
                            address(stor1.length) = 0
                            emit OwnershipTransferred(address(stor1.length), 0);
                        else:
                            if unknown_0x72630531(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return address(stor1.length)
                            if unknown_0x7303f6ce(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                if arg2 >= sub_3de5d0de[arg1].field_0:
                                    revert with 0, 50
                                if bool(sub_3de5d0de[arg1][arg2].field_512):
                                    if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
                                        revert with 0, 34
                                    if bool(sub_3de5d0de[arg1][arg2].field_512):
                                        if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512):
                                            if 31 >= uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5:
                                                mem[160] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                                            else:
                                                mem[160] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                                                idx = 160
                                                s = 0
                                                while (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                                    mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if sub_3de5d0de[arg1][arg2].field_513 % 128:
                                            if 31 >= sub_3de5d0de[arg1][arg2].field_513 % 128:
                                                mem[160] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                                            else:
                                                mem[160] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                                                idx = 160
                                                s = 0
                                                while sub_3de5d0de[arg1][arg2].field_513 % 128 + 128 > idx:
                                                    mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                    return address(sub_3de5d0de[arg1][arg2].field_0), 
                                           sub_3de5d0de[arg1][arg2].field_256,
                                           Array(len=2 * Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512), data=mem[160 len ceil32(uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5)]),
                                           bool(uint8(sub_3de5d0de[arg1][arg2].field_768)),
                                           sub_3de5d0de[arg1][arg2].field_1024
                                if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if bool(sub_3de5d0de[arg1][arg2].field_512):
                                    if bool(sub_3de5d0de[arg1][arg2].field_512) == uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5 < 32:
                                        revert with 0, 34
                                    if Mask(256, -1, sub_3de5d0de[arg1][arg2].field_512):
                                        if 31 >= uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5:
                                            mem[160] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                                        else:
                                            mem[160] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                                            idx = 160
                                            s = 0
                                            while (uint255(sub_3de5d0de[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                                mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(sub_3de5d0de[arg1][arg2].field_512) == sub_3de5d0de[arg1][arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if sub_3de5d0de[arg1][arg2].field_513 % 128:
                                        if 31 >= sub_3de5d0de[arg1][arg2].field_513 % 128:
                                            mem[160] = 256 * Mask(248, 0, sub_3de5d0de[arg1][arg2].field_520)
                                        else:
                                            mem[160] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0
                                            idx = 160
                                            s = 0
                                            while sub_3de5d0de[arg1][arg2].field_513 % 128 + 128 > idx:
                                                mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                return address(sub_3de5d0de[arg1][arg2].field_0), 
                                       sub_3de5d0de[arg1][arg2].field_256,
                                       Array(len=sub_3de5d0de[arg1][arg2].field_512 % 128, data=mem[160 len ceil32(sub_3de5d0de[arg1][arg2].field_513 % 128)]),
                                       bool(uint8(sub_3de5d0de[arg1][arg2].field_768)),
                                       sub_3de5d0de[arg1][arg2].field_1024
                            if unknown_0x7ad71f72(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 < stor6.length
                                if bool(stor6[arg1].field_256):
                                    if bool(stor6[arg1].field_256) == uint255(stor6[arg1].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    if bool(stor6[arg1].field_256):
                                        if bool(stor6[arg1].field_256) == uint255(stor6[arg1].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor6[arg1].field_256):
                                            if 31 >= uint255(stor6[arg1].field_256) * 0.5:
                                                mem[160] = 256 * Mask(248, 0, stor6[arg1].field_264)
                                            else:
                                                mem[160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                                                idx = 160
                                                s = 0
                                                while (uint255(stor6[arg1].field_256) * 0.5) + 128 > idx:
                                                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor6[arg1].field_256) == stor6[arg1].field_257 % 128 < 32:
                                            revert with 0, 34
                                        if stor6[arg1].field_257 % 128:
                                            if 31 >= stor6[arg1].field_257 % 128:
                                                mem[160] = 256 * Mask(248, 0, stor6[arg1].field_264)
                                            else:
                                                mem[160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                                                idx = 160
                                                s = 0
                                                while stor6[arg1].field_257 % 128 + 128 > idx:
                                                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                    if bool(stor6[arg1].field_512):
                                        if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                                            revert with 0, 34
                                        if bool(stor6[arg1].field_512):
                                            if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                                                revert with 0, 34
                                            if not Mask(256, -1, stor6[arg1].field_512):
                                                if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                                                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_256) * 0.5) + 416] = 0
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416] = uint255(stor6[arg1].field_512) * 0.5
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 448 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                                                if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                                                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 448] = 0
                                            else:
                                                if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                                                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192] = 256 * Mask(248, 0, stor6[arg1].field_520)
                                                else:
                                                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                                                    idx = ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192
                                                    s = 0
                                                    while ceil32(uint255(stor6[arg1].field_256) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 160 > idx:
                                                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                                                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_256) * 0.5) + 416] = 0
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416] = uint255(stor6[arg1].field_512) * 0.5
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 448 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                                                if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                                                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 448] = 0
                                        else:
                                            if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if not stor6[arg1].field_513 % 128:
                                                if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                                                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_256) * 0.5) + 416] = 0
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416] = uint255(stor6[arg1].field_512) * 0.5
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 448 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                                                if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                                                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 448] = 0
                                            else:
                                                if 31 >= stor6[arg1].field_513 % 128:
                                                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192] = 256 * Mask(248, 0, stor6[arg1].field_520)
                                                else:
                                                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                                                    idx = ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192
                                                    s = 0
                                                    while ceil32(uint255(stor6[arg1].field_256) * 0.5) + stor6[arg1].field_513 % 128 + 160 > idx:
                                                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                                                    mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_256) * 0.5) + 416] = 0
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416] = uint255(stor6[arg1].field_512) * 0.5
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 448 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                                                if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                                                    mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 448] = 0
                                        return address(stor6[arg1].field_0), 
                                               Array(len=2 * Mask(256, -1, stor6[arg1].field_256), data=mem[160 len ceil32(uint255(stor6[arg1].field_256) * 0.5)], 2 * Mask(256, -1, stor6[arg1].field_512), mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]),
                                               ceil32(uint255(stor6[arg1].field_256) * 0.5) + 224,
                                               stor6[arg1].field_768,
                                               stor6[arg1].field_1024,
                                               stor6[arg1].field_1280
                                    if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if bool(stor6[arg1].field_512):
                                        if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                                            revert with 0, 34
                                        if not Mask(256, -1, stor6[arg1].field_512):
                                            if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                                                mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(stor6[arg1].field_513 % 128) + (uint255(stor6[arg1].field_256) * 0.5) + 416] = 0
                                            mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 416] = stor6[arg1].field_513 % 128
                                            mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 448 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192 len ceil32(stor6[arg1].field_513 % 128)]
                                            if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 448] = 0
                                        else:
                                            if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                                                mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192] = 256 * Mask(248, 0, stor6[arg1].field_520)
                                            else:
                                                mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                                                idx = ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192
                                                s = 0
                                                while ceil32(uint255(stor6[arg1].field_256) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 160 > idx:
                                                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                            if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                                                mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(stor6[arg1].field_513 % 128) + (uint255(stor6[arg1].field_256) * 0.5) + 416] = 0
                                            mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 416] = stor6[arg1].field_513 % 128
                                            mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 448 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192 len ceil32(stor6[arg1].field_513 % 128)]
                                            if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 448] = 0
                                    else:
                                        if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if not stor6[arg1].field_513 % 128:
                                            if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                                                mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(stor6[arg1].field_513 % 128) + (uint255(stor6[arg1].field_256) * 0.5) + 416] = 0
                                            mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 416] = stor6[arg1].field_513 % 128
                                            mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 448 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192 len ceil32(stor6[arg1].field_513 % 128)]
                                            if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 448] = 0
                                        else:
                                            if 31 >= stor6[arg1].field_513 % 128:
                                                mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192] = 256 * Mask(248, 0, stor6[arg1].field_520)
                                            else:
                                                mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                                                idx = ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192
                                                s = 0
                                                while ceil32(uint255(stor6[arg1].field_256) * 0.5) + stor6[arg1].field_513 % 128 + 160 > idx:
                                                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                            if ceil32(uint255(stor6[arg1].field_256) * 0.5) > uint255(stor6[arg1].field_256) * 0.5:
                                                mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + ceil32(stor6[arg1].field_513 % 128) + (uint255(stor6[arg1].field_256) * 0.5) + 416] = 0
                                            mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 416] = stor6[arg1].field_513 % 128
                                            mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + 448 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192 len ceil32(stor6[arg1].field_513 % 128)]
                                            if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                                                mem[(2 * ceil32(uint255(stor6[arg1].field_256) * 0.5)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 448] = 0
                                    return address(stor6[arg1].field_0), 
                                           Array(len=2 * Mask(256, -1, stor6[arg1].field_256), data=mem[160 len ceil32(uint255(stor6[arg1].field_256) * 0.5)], stor6[arg1].field_512 % 128, mem[ceil32(uint255(stor6[arg1].field_256) * 0.5) + 192 len ceil32(stor6[arg1].field_513 % 128)]),
                                           ceil32(uint255(stor6[arg1].field_256) * 0.5) + 224,
                                           stor6[arg1].field_768,
                                           stor6[arg1].field_1024,
                                           stor6[arg1].field_1280
                                if bool(stor6[arg1].field_256) == stor6[arg1].field_257 % 128 < 32:
                                    revert with 0, 34
                                if bool(stor6[arg1].field_256):
                                    if bool(stor6[arg1].field_256) == uint255(stor6[arg1].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    if Mask(256, -1, stor6[arg1].field_256):
                                        if 31 >= uint255(stor6[arg1].field_256) * 0.5:
                                            mem[160] = 256 * Mask(248, 0, stor6[arg1].field_264)
                                        else:
                                            mem[160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                                            idx = 160
                                            s = 0
                                            while (uint255(stor6[arg1].field_256) * 0.5) + 128 > idx:
                                                mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor6[arg1].field_256) == stor6[arg1].field_257 % 128 < 32:
                                        revert with 0, 34
                                    if stor6[arg1].field_257 % 128:
                                        if 31 >= stor6[arg1].field_257 % 128:
                                            mem[160] = 256 * Mask(248, 0, stor6[arg1].field_264)
                                        else:
                                            mem[160] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                                            idx = 160
                                            s = 0
                                            while stor6[arg1].field_257 % 128 + 128 > idx:
                                                mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                if bool(stor6[arg1].field_512):
                                    if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                                        revert with 0, 34
                                    if bool(stor6[arg1].field_512):
                                        if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                                            revert with 0, 34
                                        if not Mask(256, -1, stor6[arg1].field_512):
                                            if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                                                mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + stor6[arg1].field_257 % 128 + 416] = 0
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416] = uint255(stor6[arg1].field_512) * 0.5
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 448 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(stor6[arg1].field_257 % 128) + 192 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                                            if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                                                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 448] = 0
                                        else:
                                            if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                                                mem[ceil32(stor6[arg1].field_257 % 128) + 192] = 256 * Mask(248, 0, stor6[arg1].field_520)
                                            else:
                                                mem[ceil32(stor6[arg1].field_257 % 128) + 192] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                                                idx = ceil32(stor6[arg1].field_257 % 128) + 192
                                                s = 0
                                                while ceil32(stor6[arg1].field_257 % 128) + (uint255(stor6[arg1].field_512) * 0.5) + 160 > idx:
                                                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                            if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                                                mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + stor6[arg1].field_257 % 128 + 416] = 0
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416] = uint255(stor6[arg1].field_512) * 0.5
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 448 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(stor6[arg1].field_257 % 128) + 192 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                                            if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                                                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 448] = 0
                                    else:
                                        if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if not stor6[arg1].field_513 % 128:
                                            if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                                                mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + stor6[arg1].field_257 % 128 + 416] = 0
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416] = uint255(stor6[arg1].field_512) * 0.5
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 448 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(stor6[arg1].field_257 % 128) + 192 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                                            if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                                                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 448] = 0
                                        else:
                                            if 31 >= stor6[arg1].field_513 % 128:
                                                mem[ceil32(stor6[arg1].field_257 % 128) + 192] = 256 * Mask(248, 0, stor6[arg1].field_520)
                                            else:
                                                mem[ceil32(stor6[arg1].field_257 % 128) + 192] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                                                idx = ceil32(stor6[arg1].field_257 % 128) + 192
                                                s = 0
                                                while ceil32(stor6[arg1].field_257 % 128) + stor6[arg1].field_513 % 128 + 160 > idx:
                                                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                            if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                                                mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + stor6[arg1].field_257 % 128 + 416] = 0
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 416] = uint255(stor6[arg1].field_512) * 0.5
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + 448 len ceil32(uint255(stor6[arg1].field_512) * 0.5)] = mem[ceil32(stor6[arg1].field_257 % 128) + 192 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]
                                            if ceil32(uint255(stor6[arg1].field_512) * 0.5) > uint255(stor6[arg1].field_512) * 0.5:
                                                mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(uint255(stor6[arg1].field_512) * 0.5) + (uint255(stor6[arg1].field_512) * 0.5) + 448] = 0
                                    return address(stor6[arg1].field_0), 
                                           Array(len=stor6[arg1].field_256 % 128, data=mem[160 len ceil32(stor6[arg1].field_257 % 128)], 2 * Mask(256, -1, stor6[arg1].field_512), mem[ceil32(stor6[arg1].field_257 % 128) + 192 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]),
                                           ceil32(stor6[arg1].field_257 % 128) + 224,
                                           stor6[arg1].field_768,
                                           stor6[arg1].field_1024,
                                           stor6[arg1].field_1280
                                if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                                    revert with 0, 34
                                if bool(stor6[arg1].field_512):
                                    if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                                        revert with 0, 34
                                    if not Mask(256, -1, stor6[arg1].field_512):
                                        if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                                            mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_257 % 128 + 416] = 0
                                        mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 416] = stor6[arg1].field_513 % 128
                                        mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 448 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(stor6[arg1].field_257 % 128) + 192 len ceil32(stor6[arg1].field_513 % 128)]
                                        if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 448] = 0
                                    else:
                                        if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                                            mem[ceil32(stor6[arg1].field_257 % 128) + 192] = 256 * Mask(248, 0, stor6[arg1].field_520)
                                        else:
                                            mem[ceil32(stor6[arg1].field_257 % 128) + 192] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                                            idx = ceil32(stor6[arg1].field_257 % 128) + 192
                                            s = 0
                                            while ceil32(stor6[arg1].field_257 % 128) + (uint255(stor6[arg1].field_512) * 0.5) + 160 > idx:
                                                mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                        if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                                            mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_257 % 128 + 416] = 0
                                        mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 416] = stor6[arg1].field_513 % 128
                                        mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 448 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(stor6[arg1].field_257 % 128) + 192 len ceil32(stor6[arg1].field_513 % 128)]
                                        if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 448] = 0
                                else:
                                    if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if not stor6[arg1].field_513 % 128:
                                        if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                                            mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_257 % 128 + 416] = 0
                                        mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 416] = stor6[arg1].field_513 % 128
                                        mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 448 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(stor6[arg1].field_257 % 128) + 192 len ceil32(stor6[arg1].field_513 % 128)]
                                        if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 448] = 0
                                    else:
                                        if 31 >= stor6[arg1].field_513 % 128:
                                            mem[ceil32(stor6[arg1].field_257 % 128) + 192] = 256 * Mask(248, 0, stor6[arg1].field_520)
                                        else:
                                            mem[ceil32(stor6[arg1].field_257 % 128) + 192] = stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                                            idx = ceil32(stor6[arg1].field_257 % 128) + 192
                                            s = 0
                                            while ceil32(stor6[arg1].field_257 % 128) + stor6[arg1].field_513 % 128 + 160 > idx:
                                                mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                        if ceil32(stor6[arg1].field_257 % 128) > stor6[arg1].field_257 % 128:
                                            mem[ceil32(stor6[arg1].field_257 % 128) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_257 % 128 + 416] = 0
                                        mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 416] = stor6[arg1].field_513 % 128
                                        mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + 448 len ceil32(stor6[arg1].field_513 % 128)] = mem[ceil32(stor6[arg1].field_257 % 128) + 192 len ceil32(stor6[arg1].field_513 % 128)]
                                        if ceil32(stor6[arg1].field_513 % 128) > stor6[arg1].field_513 % 128:
                                            mem[(2 * ceil32(stor6[arg1].field_257 % 128)) + ceil32(stor6[arg1].field_513 % 128) + stor6[arg1].field_513 % 128 + 448] = 0
                                return address(stor6[arg1].field_0), 
                                       Array(len=stor6[arg1].field_256 % 128, data=mem[160 len ceil32(stor6[arg1].field_257 % 128)], stor6[arg1].field_512 % 128, mem[ceil32(stor6[arg1].field_257 % 128) + 192 len ceil32(stor6[arg1].field_513 % 128)]),
                                       ceil32(stor6[arg1].field_257 % 128) + 224,
                                       stor6[arg1].field_768,
                                       stor6[arg1].field_1024,
                                       stor6[arg1].field_1280
                            if unknown_0xa0e67e2b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                mem[64] = (32 * owners.length) + 160
                                mem[128] = owners.length
                                if not owners.length:
                                    mem[(32 * owners.length) + 160] = 32
                                    mem[(32 * owners.length) + 192] = owners.length
                                    idx = 0
                                    s = (32 * owners.length) + 224
                                    t = 160
                                    while idx < owners.length:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from (32 * owners.length) + 160
                                       len (96 * owners.length) + 64
                                mem[160] = address(owners.field_0)
                                idx = 160
                                s = 0
                                while (32 * owners.length) + 128 > idx:
                                    mem[idx + 32] = address(owners[s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * owners.length) + 160] = 32
                                mem[(32 * owners.length) + 192] = owners.length
                                idx = 0
                                s = mem[64] + 64
                                t = 160
                                while idx < owners.length:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len (64 * owners.length) + -mem[64] + 224
                            if unknown_0xba2a1fdd(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 96
                                require arg3 == address(arg3)
                                return bool(stor4[arg1][arg2][arg3])
                            if unknown_0xba51a6df(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if address(stor1.length) != msg.sender:
                                    revert with 0, 'Caller is not the deployer'
                                if owners.length > 50:
                                    revert with 0, 'Invalid requirement'
                                if arg1 > owners.length:
                                    revert with 0, 'Invalid requirement'
                                if not arg1:
                                    revert with 0, 'Invalid requirement'
                                if not owners.length:
                                    revert with 0, 'Invalid requirement'
                                numConfirmationsRequired = arg1
                                emit RequirementChange(arg1);
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0xba881096(?????):
                                    if unknown_0xcfcb565d(?????) == uint32(call.func_hash) >> 224:
                                        require not msg.value
                                        require calldata.size - 4 >= 64
                                        if not stor2[msg.sender]:
                                            if address(stor1.length) != msg.sender:
                                                revert with 0, 'Unauthorized caller'
                                        if arg2 >= sub_3de5d0de[arg1].field_0:
                                            revert with 0, 'Transaction does not exist'
                                        if arg2 >= sub_3de5d0de[arg1].field_0:
                                            revert with 0, 50
                                        if uint8(sub_3de5d0de[arg1][arg2].field_768):
                                            revert with 0, 'Transaction already executed'
                                        if stor4[arg1][arg2][msg.sender]:
                                            revert with 0, 'Transaction already confirmed'
                                        if arg2 >= sub_3de5d0de[arg1].field_0:
                                            revert with 0, 50
                                        if sub_3de5d0de[arg1][arg2].field_1024 > -2:
                                            revert with 0, 17
                                        sub_3de5d0de[arg1][arg2].field_1024++
                                        stor4[arg1][arg2][msg.sender] = 1
                                        emit 0xb87db7d4: msg.sender, arg1, arg2
                                    else:
                                        if unknown_0xd0549b85(?????) == uint32(call.func_hash) >> 224:
                                            require not msg.value
                                            return numConfirmationsRequired
                                        if unknown_0xd74f8edd(?????) == uint32(call.func_hash) >> 224:
                                            require not msg.value
                                            return 50
                                        if unknown_0xdb7a4605(?????) == uint32(call.func_hash) >> 224:
                                            require not msg.value
                                            mem[64] = (32 * stor6.length) + 160
                                            mem[128] = stor6.length
                                            s = 160
                                            idx = 0
                                            while idx < stor6.length:
                                                mem[0] = 6
                                                _4444 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_4444] = address(stor6[idx].field_0)
                                                if bool(stor6[idx].field_256):
                                                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                                                        revert with 0, 34
                                                    _4774 = mem[64]
                                                    mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                                                    mem[_4774] = uint255(stor6[idx].field_256) * 0.5
                                                    if bool(stor6[idx].field_256):
                                                        if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                                                            revert with 0, 34
                                                        if not Mask(256, -1, stor6[idx].field_256):
                                                            mem[_4444 + 32] = _4774
                                                            if bool(stor6[idx].field_512):
                                                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                _5658 = mem[64]
                                                                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                mem[_5658] = uint255(stor6[idx].field_512) * 0.5
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_5658 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5658 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5658 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5658 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_5658 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5658 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5658 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5658 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _5658
                                                            else:
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                _5748 = mem[64]
                                                                mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                mem[_5748] = stor6[idx].field_513 % 128
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_5748 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5748 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5748 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5748 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_5748 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5748 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5748 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5748 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _5748
                                                        else:
                                                            if 31 >= uint255(stor6[idx].field_256) * 0.5:
                                                                mem[_4774 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                                                                mem[_4444 + 32] = _4774
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    _5938 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                    mem[_5938] = uint255(stor6[idx].field_512) * 0.5
                                                                    if bool(stor6[idx].field_512):
                                                                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        if Mask(256, -1, stor6[idx].field_512):
                                                                            if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                                mem[_5938 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_5938 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _5938 + 32
                                                                                u = sha3(mem[0])
                                                                                while _5938 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    else:
                                                                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                            revert with 0, 34
                                                                        if stor6[idx].field_513 % 128:
                                                                            if 31 >= stor6[idx].field_513 % 128:
                                                                                mem[_5938 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_5938 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _5938 + 32
                                                                                u = sha3(mem[0])
                                                                                while _5938 + stor6[idx].field_513 % 128 > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    mem[_4444 + 64] = _5938
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    _6078 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                    mem[_6078] = stor6[idx].field_513 % 128
                                                                    if bool(stor6[idx].field_512):
                                                                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        if Mask(256, -1, stor6[idx].field_512):
                                                                            if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                                mem[_6078 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_6078 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _6078 + 32
                                                                                u = sha3(mem[0])
                                                                                while _6078 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    else:
                                                                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                            revert with 0, 34
                                                                        if stor6[idx].field_513 % 128:
                                                                            if 31 >= stor6[idx].field_513 % 128:
                                                                                mem[_6078 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_6078 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _6078 + 32
                                                                                u = sha3(mem[0])
                                                                                while _6078 + stor6[idx].field_513 % 128 > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    mem[_4444 + 64] = _6078
                                                            else:
                                                                mem[0] = sha3(6) + (6 * idx) + 1
                                                                mem[_4774 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 1)].field_0
                                                                t = _4774 + 32
                                                                u = sha3(mem[0])
                                                                while _4774 + (uint255(stor6[idx].field_256) * 0.5) > t:
                                                                    mem[t + 32] = uint256(stor1[u])
                                                                    t = t + 32
                                                                    u = u + 1
                                                                    continue 
                                                                mem[_4444 + 32] = _4774
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    _9119 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                    mem[_9119] = uint255(stor6[idx].field_512) * 0.5
                                                                    if bool(stor6[idx].field_512):
                                                                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        if not Mask(256, -1, stor6[idx].field_512):
                                                                            mem[_4444 + 64] = _9119
                                                                            mem[_4444 + 96] = stor6[idx].field_768
                                                                            mem[_4444 + 128] = stor6[idx].field_1024
                                                                            mem[_4444 + 160] = stor6[idx].field_1280
                                                                            mem[s] = _4444
                                                                            s = s + 32
                                                                            idx = idx + 1
                                                                            continue 
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_9119 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            mem[_4444 + 64] = _9119
                                                                            mem[_4444 + 96] = stor6[idx].field_768
                                                                            mem[_4444 + 128] = stor6[idx].field_1024
                                                                            mem[_4444 + 160] = stor6[idx].field_1280
                                                                            mem[s] = _4444
                                                                            s = s + 32
                                                                            idx = idx + 1
                                                                            continue 
                                                                        mem[0] = sha3(6) + (6 * idx) + 2
                                                                        mem[_9119 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                        t = _9119 + 32
                                                                        u = sha3(mem[0])
                                                                        while _9119 + (uint255(stor6[u].field_512) * 0.5) > t:
                                                                            mem[t + 32] = uint256(stor1[u])
                                                                            t = t + 32
                                                                            u = u + 1
                                                                            continue 
                                                                        mem[_4444 + 64] = _9119
                                                                        mem[_4444 + 96] = stor6[u].field_768
                                                                        mem[_4444 + 128] = stor6[u].field_1024
                                                                        mem[_4444 + 160] = stor6[u].field_1280
                                                                        mem[t] = _4444
                                                                        t = t + 32
                                                                        u = u + 1
                                                                        continue 
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_9119 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_9119 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _9119 + 32
                                                                            u = sha3(mem[0])
                                                                            while _9119 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                    mem[_4444 + 64] = _9119
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    _9280 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                    mem[_9280] = stor6[idx].field_513 % 128
                                                                    if bool(stor6[idx].field_512):
                                                                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        if Mask(256, -1, stor6[idx].field_512):
                                                                            if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                                mem[_9280 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_9280 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _9280 + 32
                                                                                u = sha3(mem[0])
                                                                                while _9280 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    else:
                                                                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                            revert with 0, 34
                                                                        if stor6[idx].field_513 % 128:
                                                                            if 31 >= stor6[idx].field_513 % 128:
                                                                                mem[_9280 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_9280 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _9280 + 32
                                                                                u = sha3(mem[0])
                                                                                while _9280 + stor6[idx].field_513 % 128 > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    mem[_4444 + 64] = _9280
                                                    else:
                                                        if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                                                            revert with 0, 34
                                                        if not stor6[idx].field_257 % 128:
                                                            mem[_4444 + 32] = _4774
                                                            if bool(stor6[idx].field_512):
                                                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                _5749 = mem[64]
                                                                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                mem[_5749] = uint255(stor6[idx].field_512) * 0.5
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_5749 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5749 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5749 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5749 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_5749 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5749 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5749 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5749 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _5749
                                                            else:
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                _5939 = mem[64]
                                                                mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                mem[_5939] = stor6[idx].field_513 % 128
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_5939 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5939 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5939 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5939 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_5939 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5939 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5939 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5939 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _5939
                                                        else:
                                                            if 31 >= stor6[idx].field_257 % 128:
                                                                mem[_4774 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                                                                mem[_4444 + 32] = _4774
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    _6079 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                    mem[_6079] = uint255(stor6[idx].field_512) * 0.5
                                                                    if bool(stor6[idx].field_512):
                                                                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        if Mask(256, -1, stor6[idx].field_512):
                                                                            if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                                mem[_6079 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_6079 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _6079 + 32
                                                                                u = sha3(mem[0])
                                                                                while _6079 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    else:
                                                                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                            revert with 0, 34
                                                                        if stor6[idx].field_513 % 128:
                                                                            if 31 >= stor6[idx].field_513 % 128:
                                                                                mem[_6079 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_6079 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _6079 + 32
                                                                                u = sha3(mem[0])
                                                                                while _6079 + stor6[idx].field_513 % 128 > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    mem[_4444 + 64] = _6079
                                                                    mem[_4444 + 96] = stor6[idx].field_768
                                                                    mem[_4444 + 128] = stor6[idx].field_1024
                                                                    mem[_4444 + 160] = stor6[idx].field_1280
                                                                    mem[s] = _4444
                                                                    s = s + 32
                                                                    idx = idx + 1
                                                                    continue 
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                _6180 = mem[64]
                                                                mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                mem[_6180] = stor6[idx].field_513 % 128
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_6180 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_6180 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _6180 + 32
                                                                            u = sha3(mem[0])
                                                                            while _6180 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                    mem[_4444 + 64] = _6180
                                                                    mem[_4444 + 96] = stor6[idx].field_768
                                                                    mem[_4444 + 128] = stor6[idx].field_1024
                                                                    mem[_4444 + 160] = stor6[idx].field_1280
                                                                    mem[s] = _4444
                                                                    s = s + 32
                                                                    idx = idx + 1
                                                                    continue 
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                if not stor6[idx].field_513 % 128:
                                                                    mem[_4444 + 64] = _6180
                                                                    mem[_4444 + 96] = stor6[idx].field_768
                                                                    mem[_4444 + 128] = stor6[idx].field_1024
                                                                    mem[_4444 + 160] = stor6[idx].field_1280
                                                                    mem[s] = _4444
                                                                    s = s + 32
                                                                    idx = idx + 1
                                                                    continue 
                                                                if 31 >= stor6[idx].field_513 % 128:
                                                                    mem[_6180 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                    mem[_4444 + 64] = _6180
                                                                    mem[_4444 + 96] = stor6[idx].field_768
                                                                    mem[_4444 + 128] = stor6[idx].field_1024
                                                                    mem[_4444 + 160] = stor6[idx].field_1280
                                                                    mem[s] = _4444
                                                                    s = s + 32
                                                                    idx = idx + 1
                                                                    continue 
                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                mem[_6180 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                t = _6180 + 32
                                                                u = sha3(mem[0])
                                                                while _6180 + stor6[u].field_513 % 128 > t:
                                                                    mem[t + 32] = uint256(stor1[u])
                                                                    t = t + 32
                                                                    u = u + 1
                                                                    continue 
                                                                mem[_4444 + 64] = _6180
                                                                mem[_4444 + 96] = stor6[u].field_768
                                                                mem[_4444 + 128] = stor6[u].field_1024
                                                                mem[_4444 + 160] = stor6[u].field_1280
                                                                mem[t] = _4444
                                                                t = t + 32
                                                                u = u + 1
                                                                continue 
                                                            mem[0] = sha3(6) + (6 * idx) + 1
                                                            mem[_4774 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 1)].field_0
                                                            t = _4774 + 32
                                                            u = sha3(mem[0])
                                                            while _4774 + stor6[idx].field_257 % 128 > t:
                                                                mem[t + 32] = uint256(stor1[u])
                                                                t = t + 32
                                                                u = u + 1
                                                                continue 
                                                            mem[_4444 + 32] = _4774
                                                            if bool(stor6[idx].field_512):
                                                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                _9120 = mem[64]
                                                                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                mem[_9120] = uint255(stor6[idx].field_512) * 0.5
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_9120 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_9120 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _9120 + 32
                                                                            u = sha3(mem[0])
                                                                            while _9120 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_9120 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_9120 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _9120 + 32
                                                                            u = sha3(mem[0])
                                                                            while _9120 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _9120
                                                            else:
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                _9281 = mem[64]
                                                                mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                mem[_9281] = stor6[idx].field_513 % 128
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_9281 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_9281 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _9281 + 32
                                                                            u = sha3(mem[0])
                                                                            while _9281 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_9281 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_9281 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _9281 + 32
                                                                            u = sha3(mem[0])
                                                                            while _9281 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _9281
                                                else:
                                                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                                                        revert with 0, 34
                                                    _4867 = mem[64]
                                                    mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                                                    mem[_4867] = stor6[idx].field_257 % 128
                                                    if bool(stor6[idx].field_256):
                                                        if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                                                            revert with 0, 34
                                                        if not Mask(256, -1, stor6[idx].field_256):
                                                            mem[_4444 + 32] = _4867
                                                            if bool(stor6[idx].field_512):
                                                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                _5750 = mem[64]
                                                                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                mem[_5750] = uint255(stor6[idx].field_512) * 0.5
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_5750 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5750 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5750 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5750 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_5750 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5750 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5750 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5750 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _5750
                                                            else:
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                _5940 = mem[64]
                                                                mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                mem[_5940] = stor6[idx].field_513 % 128
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_5940 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5940 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5940 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5940 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_5940 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5940 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5940 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5940 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _5940
                                                        else:
                                                            if 31 >= uint255(stor6[idx].field_256) * 0.5:
                                                                mem[_4867 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                                                                mem[_4444 + 32] = _4867
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    _6080 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                    mem[_6080] = uint255(stor6[idx].field_512) * 0.5
                                                                    if bool(stor6[idx].field_512):
                                                                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        if Mask(256, -1, stor6[idx].field_512):
                                                                            if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                                mem[_6080 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_6080 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _6080 + 32
                                                                                u = sha3(mem[0])
                                                                                while _6080 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    else:
                                                                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                            revert with 0, 34
                                                                        if stor6[idx].field_513 % 128:
                                                                            if 31 >= stor6[idx].field_513 % 128:
                                                                                mem[_6080 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_6080 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _6080 + 32
                                                                                u = sha3(mem[0])
                                                                                while _6080 + stor6[idx].field_513 % 128 > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    mem[_4444 + 64] = _6080
                                                                    mem[_4444 + 96] = stor6[idx].field_768
                                                                    mem[_4444 + 128] = stor6[idx].field_1024
                                                                    mem[_4444 + 160] = stor6[idx].field_1280
                                                                    mem[s] = _4444
                                                                    s = s + 32
                                                                    idx = idx + 1
                                                                    continue 
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                _6181 = mem[64]
                                                                mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                mem[_6181] = stor6[idx].field_513 % 128
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_6181 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_6181 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _6181 + 32
                                                                            u = sha3(mem[0])
                                                                            while _6181 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                    mem[_4444 + 64] = _6181
                                                                    mem[_4444 + 96] = stor6[idx].field_768
                                                                    mem[_4444 + 128] = stor6[idx].field_1024
                                                                    mem[_4444 + 160] = stor6[idx].field_1280
                                                                    mem[s] = _4444
                                                                    s = s + 32
                                                                    idx = idx + 1
                                                                    continue 
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                if not stor6[idx].field_513 % 128:
                                                                    mem[_4444 + 64] = _6181
                                                                    mem[_4444 + 96] = stor6[idx].field_768
                                                                    mem[_4444 + 128] = stor6[idx].field_1024
                                                                    mem[_4444 + 160] = stor6[idx].field_1280
                                                                    mem[s] = _4444
                                                                    s = s + 32
                                                                    idx = idx + 1
                                                                    continue 
                                                                if 31 >= stor6[idx].field_513 % 128:
                                                                    mem[_6181 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                    mem[_4444 + 64] = _6181
                                                                    mem[_4444 + 96] = stor6[idx].field_768
                                                                    mem[_4444 + 128] = stor6[idx].field_1024
                                                                    mem[_4444 + 160] = stor6[idx].field_1280
                                                                    mem[s] = _4444
                                                                    s = s + 32
                                                                    idx = idx + 1
                                                                    continue 
                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                mem[_6181 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                t = _6181 + 32
                                                                u = sha3(mem[0])
                                                                while _6181 + stor6[u].field_513 % 128 > t:
                                                                    mem[t + 32] = uint256(stor1[u])
                                                                    t = t + 32
                                                                    u = u + 1
                                                                    continue 
                                                                mem[_4444 + 64] = _6181
                                                                mem[_4444 + 96] = stor6[u].field_768
                                                                mem[_4444 + 128] = stor6[u].field_1024
                                                                mem[_4444 + 160] = stor6[u].field_1280
                                                                mem[t] = _4444
                                                                t = t + 32
                                                                u = u + 1
                                                                continue 
                                                            mem[0] = sha3(6) + (6 * idx) + 1
                                                            mem[_4867 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 1)].field_0
                                                            t = _4867 + 32
                                                            u = sha3(mem[0])
                                                            while _4867 + (uint255(stor6[idx].field_256) * 0.5) > t:
                                                                mem[t + 32] = uint256(stor1[u])
                                                                t = t + 32
                                                                u = u + 1
                                                                continue 
                                                            mem[_4444 + 32] = _4867
                                                            if bool(stor6[idx].field_512):
                                                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                _9121 = mem[64]
                                                                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                mem[_9121] = uint255(stor6[idx].field_512) * 0.5
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_9121 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_9121 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _9121 + 32
                                                                            u = sha3(mem[0])
                                                                            while _9121 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_9121 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_9121 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _9121 + 32
                                                                            u = sha3(mem[0])
                                                                            while _9121 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _9121
                                                            else:
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                _9282 = mem[64]
                                                                mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                mem[_9282] = stor6[idx].field_513 % 128
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_9282 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_9282 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _9282 + 32
                                                                            u = sha3(mem[0])
                                                                            while _9282 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_9282 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_9282 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _9282 + 32
                                                                            u = sha3(mem[0])
                                                                            while _9282 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _9282
                                                    else:
                                                        if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                                                            revert with 0, 34
                                                        if not stor6[idx].field_257 % 128:
                                                            mem[_4444 + 32] = _4867
                                                            if bool(stor6[idx].field_512):
                                                                if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                _5941 = mem[64]
                                                                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                mem[_5941] = uint255(stor6[idx].field_512) * 0.5
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_5941 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5941 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5941 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5941 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_5941 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_5941 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _5941 + 32
                                                                            u = sha3(mem[0])
                                                                            while _5941 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _5941
                                                            else:
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                _6081 = mem[64]
                                                                mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                mem[_6081] = stor6[idx].field_513 % 128
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if Mask(256, -1, stor6[idx].field_512):
                                                                        if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                            mem[_6081 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_6081 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _6081 + 32
                                                                            u = sha3(mem[0])
                                                                            while _6081 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if stor6[idx].field_513 % 128:
                                                                        if 31 >= stor6[idx].field_513 % 128:
                                                                            mem[_6081 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        else:
                                                                            mem[0] = sha3(6) + (6 * idx) + 2
                                                                            mem[_6081 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                            t = _6081 + 32
                                                                            u = sha3(mem[0])
                                                                            while _6081 + stor6[idx].field_513 % 128 > t:
                                                                                mem[t + 32] = uint256(stor1[u])
                                                                                t = t + 32
                                                                                u = u + 1
                                                                                continue 
                                                                mem[_4444 + 64] = _6081
                                                        else:
                                                            if 31 >= stor6[idx].field_257 % 128:
                                                                mem[_4867 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                                                                mem[_4444 + 32] = _4867
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    _6182 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                    mem[_6182] = uint255(stor6[idx].field_512) * 0.5
                                                                    if bool(stor6[idx].field_512):
                                                                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        if Mask(256, -1, stor6[idx].field_512):
                                                                            if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                                mem[_6182 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_6182 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _6182 + 32
                                                                                u = sha3(mem[0])
                                                                                while _6182 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                        mem[_4444 + 64] = _6182
                                                                        mem[_4444 + 96] = stor6[idx].field_768
                                                                        mem[_4444 + 128] = stor6[idx].field_1024
                                                                        mem[_4444 + 160] = stor6[idx].field_1280
                                                                        mem[s] = _4444
                                                                        s = s + 32
                                                                        idx = idx + 1
                                                                        continue 
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    if not stor6[idx].field_513 % 128:
                                                                        mem[_4444 + 64] = _6182
                                                                        mem[_4444 + 96] = stor6[idx].field_768
                                                                        mem[_4444 + 128] = stor6[idx].field_1024
                                                                        mem[_4444 + 160] = stor6[idx].field_1280
                                                                        mem[s] = _4444
                                                                        s = s + 32
                                                                        idx = idx + 1
                                                                        continue 
                                                                    if 31 >= stor6[idx].field_513 % 128:
                                                                        mem[_6182 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        mem[_4444 + 64] = _6182
                                                                        mem[_4444 + 96] = stor6[idx].field_768
                                                                        mem[_4444 + 128] = stor6[idx].field_1024
                                                                        mem[_4444 + 160] = stor6[idx].field_1280
                                                                        mem[s] = _4444
                                                                        s = s + 32
                                                                        idx = idx + 1
                                                                        continue 
                                                                    mem[0] = sha3(6) + (6 * idx) + 2
                                                                    mem[_6182 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                    t = _6182 + 32
                                                                    u = sha3(mem[0])
                                                                    while _6182 + stor6[u].field_513 % 128 > t:
                                                                        mem[t + 32] = uint256(stor1[u])
                                                                        t = t + 32
                                                                        u = u + 1
                                                                        continue 
                                                                    mem[_4444 + 64] = _6182
                                                                    mem[_4444 + 96] = stor6[u].field_768
                                                                    mem[_4444 + 128] = stor6[u].field_1024
                                                                    mem[_4444 + 160] = stor6[u].field_1280
                                                                    mem[t] = _4444
                                                                    t = t + 32
                                                                    u = u + 1
                                                                    continue 
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                _6302 = mem[64]
                                                                mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                mem[_6302] = stor6[idx].field_513 % 128
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    if not Mask(256, -1, stor6[idx].field_512):
                                                                        mem[_4444 + 64] = _6302
                                                                        mem[_4444 + 96] = stor6[idx].field_768
                                                                        mem[_4444 + 128] = stor6[idx].field_1024
                                                                        mem[_4444 + 160] = stor6[idx].field_1280
                                                                        mem[s] = _4444
                                                                        s = s + 32
                                                                        idx = idx + 1
                                                                        continue 
                                                                    if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                        mem[_6302 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                        mem[_4444 + 64] = _6302
                                                                        mem[_4444 + 96] = stor6[idx].field_768
                                                                        mem[_4444 + 128] = stor6[idx].field_1024
                                                                        mem[_4444 + 160] = stor6[idx].field_1280
                                                                        mem[s] = _4444
                                                                        s = s + 32
                                                                        idx = idx + 1
                                                                        continue 
                                                                    mem[0] = sha3(6) + (6 * idx) + 2
                                                                    mem[_6302 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                    t = _6302 + 32
                                                                    u = sha3(mem[0])
                                                                    while _6302 + (uint255(stor6[u].field_512) * 0.5) > t:
                                                                        mem[t + 32] = uint256(stor1[u])
                                                                        t = t + 32
                                                                        u = u + 1
                                                                        continue 
                                                                    mem[_4444 + 64] = _6302
                                                                    mem[_4444 + 96] = stor6[u].field_768
                                                                    mem[_4444 + 128] = stor6[u].field_1024
                                                                    mem[_4444 + 160] = stor6[u].field_1280
                                                                    mem[t] = _4444
                                                                    t = t + 32
                                                                    u = u + 1
                                                                    continue 
                                                                if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                    revert with 0, 34
                                                                if stor6[idx].field_513 % 128:
                                                                    if 31 >= stor6[idx].field_513 % 128:
                                                                        mem[_6302 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                    else:
                                                                        mem[0] = sha3(6) + (6 * idx) + 2
                                                                        mem[_6302 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                        t = _6302 + 32
                                                                        u = sha3(mem[0])
                                                                        while _6302 + stor6[idx].field_513 % 128 > t:
                                                                            mem[t + 32] = uint256(stor1[u])
                                                                            t = t + 32
                                                                            u = u + 1
                                                                            continue 
                                                                mem[_4444 + 64] = _6302
                                                            else:
                                                                mem[0] = sha3(6) + (6 * idx) + 1
                                                                mem[_4867 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 1)].field_0
                                                                t = _4867 + 32
                                                                u = sha3(mem[0])
                                                                while _4867 + stor6[idx].field_257 % 128 > t:
                                                                    mem[t + 32] = uint256(stor1[u])
                                                                    t = t + 32
                                                                    u = u + 1
                                                                    continue 
                                                                mem[_4444 + 32] = _4867
                                                                if bool(stor6[idx].field_512):
                                                                    if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    _9122 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_512) * 0.5) + 32
                                                                    mem[_9122] = uint255(stor6[idx].field_512) * 0.5
                                                                    if bool(stor6[idx].field_512):
                                                                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        if Mask(256, -1, stor6[idx].field_512):
                                                                            if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                                mem[_9122 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_9122 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _9122 + 32
                                                                                u = sha3(mem[0])
                                                                                while _9122 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    else:
                                                                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                            revert with 0, 34
                                                                        if stor6[idx].field_513 % 128:
                                                                            if 31 >= stor6[idx].field_513 % 128:
                                                                                mem[_9122 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_9122 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _9122 + 32
                                                                                u = sha3(mem[0])
                                                                                while _9122 + stor6[idx].field_513 % 128 > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    mem[_4444 + 64] = _9122
                                                                else:
                                                                    if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                        revert with 0, 34
                                                                    _9283 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(stor6[idx].field_513 % 128) + 32
                                                                    mem[_9283] = stor6[idx].field_513 % 128
                                                                    if bool(stor6[idx].field_512):
                                                                        if bool(stor6[idx].field_512) == uint255(stor6[idx].field_512) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        if Mask(256, -1, stor6[idx].field_512):
                                                                            if 31 >= uint255(stor6[idx].field_512) * 0.5:
                                                                                mem[_9283 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_9283 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _9283 + 32
                                                                                u = sha3(mem[0])
                                                                                while _9283 + (uint255(stor6[idx].field_512) * 0.5) > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    else:
                                                                        if bool(stor6[idx].field_512) == stor6[idx].field_513 % 128 < 32:
                                                                            revert with 0, 34
                                                                        if stor6[idx].field_513 % 128:
                                                                            if 31 >= stor6[idx].field_513 % 128:
                                                                                mem[_9283 + 32] = 256 * Mask(248, 0, stor6[idx].field_520)
                                                                            else:
                                                                                mem[0] = sha3(6) + (6 * idx) + 2
                                                                                mem[_9283 + 32] = stor[sha3(('name', 'stor6', 6) + (6 * idx) + 2)].field_0
                                                                                t = _9283 + 32
                                                                                u = sha3(mem[0])
                                                                                while _9283 + stor6[idx].field_513 % 128 > t:
                                                                                    mem[t + 32] = uint256(stor1[u])
                                                                                    t = t + 32
                                                                                    u = u + 1
                                                                                    continue 
                                                                    mem[_4444 + 64] = _9283
                                                mem[_4444 + 96] = stor6[idx].field_768
                                                mem[_4444 + 128] = stor6[idx].field_1024
                                                mem[_4444 + 160] = stor6[idx].field_1280
                                                mem[s] = _4444
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                            _4451 = mem[64]
                                            mem[mem[64]] = 32
                                            _4519 = mem[128]
                                            mem[mem[64] + 32] = mem[128]
                                            idx = 0
                                            s = 160
                                            t = mem[64] + (32 * _4519) + 64
                                            u = mem[64] + 64
                                            while idx < _4519:
                                                mem[u] = t + -_4451 - 64
                                                _8235 = mem[s]
                                                mem[t] = mem[mem[s] + 12 len 20]
                                                _8237 = mem[_8235 + 32]
                                                mem[t + 32] = 192
                                                _8254 = mem[_8237]
                                                mem[t + 192] = mem[_8237]
                                                v = 0
                                                while v < _8254:
                                                    mem[v + t + 224] = mem[_8237 + v + 32]
                                                    v = v + 32
                                                    continue 
                                                if ceil32(_8254) <= _8254:
                                                    _11336 = mem[_8235 + 64]
                                                    mem[t + 64] = ceil32(_8254) + 224
                                                    _11556 = mem[_11336]
                                                    mem[ceil32(_8254) + t + 224] = mem[_11336]
                                                    v = 0
                                                    while v < _11556:
                                                        mem[v + ceil32(_8254) + t + 256] = mem[_11336 + v + 32]
                                                        v = v + 32
                                                        continue 
                                                    if ceil32(_11556) > _11556:
                                                        mem[ceil32(_8254) + t + _11556 + 256] = 0
                                                    mem[t + 96] = mem[_8235 + 96]
                                                    mem[t + 128] = mem[_8235 + 128]
                                                    mem[t + 160] = mem[_8235 + 160]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = ceil32(_11556) + ceil32(_8254) + t + 256
                                                    u = u + 32
                                                    continue 
                                                mem[t + _8254 + 224] = 0
                                                _11557 = mem[_8235 + 64]
                                                mem[t + 64] = ceil32(_8254) + 224
                                                _11826 = mem[_11557]
                                                mem[ceil32(_8254) + t + 224] = mem[_11557]
                                                v = 0
                                                while v < _11826:
                                                    mem[v + ceil32(_8254) + t + 256] = mem[_11557 + v + 32]
                                                    v = v + 32
                                                    continue 
                                                if ceil32(_11826) > _11826:
                                                    mem[ceil32(_8254) + t + _11826 + 256] = 0
                                                mem[t + 96] = mem[_8235 + 96]
                                                mem[t + 128] = mem[_8235 + 128]
                                                mem[t + 160] = mem[_8235 + 160]
                                                idx = idx + 1
                                                s = s + 32
                                                t = ceil32(_11826) + ceil32(_8254) + t + 256
                                                u = u + 32
                                                continue 
                                            return memory
                                              from mem[64]
                                               len t - mem[64]
                                        if uint32(call.func_hash) >> 224 != unknown_0xdbe637c6(?????):
                                            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                                                require not msg.value
                                                require calldata.size - 4 >= 32
                                                require arg1 == address(arg1)
                                                if address(stor1.length) != msg.sender:
                                                    revert with 0, 'Caller is not the deployer'
                                                if not address(arg1):
                                                    revert with 0, 'Invalid new owner'
                                                address(stor1.length) = address(arg1)
                                                emit OwnershipTransferred(address(stor1.length), address(arg1));
                                            else:
                                                require unknown_0xf84eef0b(?????) == uint32(call.func_hash) >> 224
                                                require not msg.value
                                                require calldata.size - 4 >= 64
                                                if not stor2[msg.sender]:
                                                    if address(stor1.length) != msg.sender:
                                                        revert with 0, 'Unauthorized caller'
                                                if arg2 >= sub_3de5d0de[arg1].field_0:
                                                    revert with 0, 'Transaction does not exist'
                                                if arg2 >= sub_3de5d0de[arg1].field_0:
                                                    revert with 0, 50
                                                if uint8(sub_3de5d0de[arg1][arg2].field_768):
                                                    revert with 0, 'Transaction already executed'
                                                if arg2 >= sub_3de5d0de[arg1].field_0:
                                                    revert with 0, 50
                                                if not stor4[arg1][arg2][msg.sender]:
                                                    revert with 0, 'Transaction not confirmed'
                                                if sub_3de5d0de[arg1][arg2].field_1024 < 1:
                                                    revert with 0, 17
                                                sub_3de5d0de[arg1][arg2].field_1024--
                                                stor4[arg1][arg2][msg.sender] = 0
                                                emit 0x7f6706c8: msg.sender, arg1, arg2
                                        else:
                                            require not msg.value
                                            require calldata.size - 4 >= 128
                                            require arg2 == address(arg2)
                                            require arg4 <= test266151307()
                                            require calldata.size > arg4 + 35
                                            if arg4.length > test266151307():
                                                revert with 0, 65
                                            if ceil32(ceil32(arg4.length)) + 129 < 128 or ceil32(ceil32(arg4.length)) + 129 > test266151307():
                                                revert with 0, 65
                                            require arg4 + arg4.length + 36 <= calldata.size
                                            if not stor2[msg.sender]:
                                                if address(stor1.length) != msg.sender:
                                                    revert with 0, 'Unauthorized caller'
                                            sub_3de5d0de[arg1].field_0++
                                            address(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_0) = address(arg2)
                                            sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_256 = arg3
                                            if bool(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512):
                                                if bool(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512) == uint255(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512) * 0.5 < 32:
                                                    revert with 0, 34
                                                if arg4.length:
                                                    stor[sha3((5 * sub_3de5d0de[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)][].field_0 = Array(len=arg4.length, data=arg4[all])
                                                else:
                                                    sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512 = 0
                                                    idx = 0
                                                    while (uint255(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512) * 0.5) + 31 / 32 > idx:
                                                        stor[idx + sha3((5 * sub_3de5d0de[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if bool(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512) == sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_513 % 128 < 32:
                                                    revert with 0, 34
                                                if arg4.length:
                                                    stor[sha3((5 * sub_3de5d0de[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)][].field_0 = Array(len=arg4.length, data=arg4[all])
                                                else:
                                                    sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_512 = 0
                                                    idx = 0
                                                    while sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_513 % 128 + 31 / 32 > idx:
                                                        stor[idx + sha3((5 * sub_3de5d0de[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'sub_3de5d0de', 5)) + 2)].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            uint8(sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_768) = 0
                                            sub_3de5d0de[arg1][sub_3de5d0de[arg1].field_0].field_1024 = 0
                                            emit 0x4f521161: msg.sender, address(arg2), arg3, 128, arg4.length, arg4[all], 0, arg1, sub_3de5d0de[arg1].field_0
                                else:
                                    require not msg.value
                                    require calldata.size - 4 >= 160
                                    require arg2 == address(arg2)
                                    require arg3 <= test266151307()
                                    require arg3 + 35 < calldata.size
                                    if arg3.length > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
                                        revert with 0, 65
                                    require arg3 + arg3.length + 36 <= calldata.size
                                    require arg4 <= test266151307()
                                    require arg4 + 35 < calldata.size
                                    if arg4.length > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(arg4.length)) + 130 < 129 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130 > test266151307():
                                        revert with 0, 65
                                    require arg4 + arg4.length + 36 <= calldata.size
                                    if address(stor1.length) != msg.sender:
                                        revert with 0, 'Caller is not the deployer'
                                    if arg1 >= stor6.length:
                                        revert with 0, 50
                                    address(stor6[arg1].field_0) = address(arg2)
                                    if bool(stor6[arg1].field_256):
                                        if bool(stor6[arg1].field_256) == uint255(stor6[arg1].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if arg3.length:
                                            stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
                                        else:
                                            stor6[arg1].field_256 = 0
                                            idx = 0
                                            while (uint255(stor6[arg1].field_256) * 0.5) + 31 / 32 > idx:
                                                stor[idx + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor6[arg1].field_256) == stor6[arg1].field_257 % 128 < 32:
                                            revert with 0, 34
                                        if arg3.length:
                                            stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
                                        else:
                                            stor6[arg1].field_256 = 0
                                            idx = 0
                                            while stor6[arg1].field_257 % 128 + 31 / 32 > idx:
                                                stor[idx + sha3((6 * arg1) + ('name', 'stor6', 6) + 1)].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    if bool(stor6[arg1].field_512):
                                        if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                                            revert with 0, 34
                                        if arg4.length:
                                            stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)][].field_0 = Array(len=arg4.length, data=arg4[all])
                                        else:
                                            stor6[arg1].field_512 = 0
                                            idx = 0
                                            while (uint255(stor6[arg1].field_512) * 0.5) + 31 / 32 > idx:
                                                stor[idx + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if arg4.length:
                                            stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 2)][].field_0 = Array(len=arg4.length, data=arg4[all])
                                        else:
                                            stor6[arg1].field_512 = 0
                                            idx = 0
                                            while stor6[arg1].field_513 % 128 + 31 / 32 > idx:
                                                stor[idx + sha3((6 * arg1) + ('name', 'stor6', 6) + 2)].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    stor6[arg1].field_768 = arg5
                                    if ceil32(arg3.length) <= arg3.length:
                                        emit 0x27ea2f8d: address(arg2), Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], 0) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 128, stor6.length
                                    else:
                                        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 258] = arg4.length
                                        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 290 len ceil32(arg4.length)] = arg4[all], 0
                                        if ceil32(arg4.length) > arg4.length:
                                            mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 290] = 0
                                        emit 0x27ea2f8d: address(arg2), Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 290 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 128, stor6.length
}



}
