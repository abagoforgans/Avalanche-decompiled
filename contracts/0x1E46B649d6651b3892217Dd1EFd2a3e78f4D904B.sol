contract main {




// =====================  Runtime code  =====================


const sub_328199b7(?) = 100

const sub_332d950f(?) = 500

const sub_e211544a(?) = 100


address owner;
address treasuryAddress;
array of struct stor2;
mapping of uint256 stor3;
array of struct stor4;
mapping of uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 sub_fccd7f72;
mapping of struct bills;
uint256 sub_41dc3412;

function bills(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bills[arg1].field_1280 >= 3:
        revert with 0, 33
    return bills[arg1].field_0, 
           bills[arg1].field_256,
           bills[arg1].field_512,
           bills[arg1].field_768,
           bills[arg1].field_1024,
           bills[arg1].field_1280
}

function sub_41dc3412(?) {
    return sub_41dc3412
}

function treasury() {
    return treasuryAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function sub_fccd7f72(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fccd7f72[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function changeTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
    emit TreasuryChanged(arg1);
}

function netBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[address(arg1)] < sub_fccd7f72[address(arg1)]:
        revert with 0, 17
    return (balanceOf[address(arg1)] - sub_fccd7f72[address(arg1)])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function deposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance::deposit: invalid recipient'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance::deposit: negative or zero deposit'
    if balanceOf[address(arg1)] > !msg.value:
        revert with 0, 17
    balanceOf[address(arg1)] += msg.value
    emit Deposit(msg.value, arg1);
}

function addConsumer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance::addConsumer: consumer already added'
    if stor4.length >= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Balance::addConsumer: consumer must not exceed maximum count'
    if not stor5[address(arg1)]:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
    emit ConsumerAdded(arg1);
}

function addInspector(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance::addInspector: inspector already added'
    if stor2.length >= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Balance::addInspector: inspector must not exceed maximum count'
    if not stor3[address(arg1)]:
        stor2.length++
        stor2[stor2.length].field_0 = arg1
        stor2[stor2.length].field_160 = 0
        stor3[address(arg1)] = stor2.length
    emit InspectorAdded(arg1);
}

function refund(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance::refund: negative or zero refund'
    if balanceOf[address(msg.sender)] < sub_fccd7f72[address(msg.sender)]:
        revert with 0, 17
    if arg1 > balanceOf[address(msg.sender)] - sub_fccd7f72[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance::refund: refund amount exceeds net balance'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Refund(arg1, msg.sender);
}

function removeConsumer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance::removeConsumer: consumer already removed'
    if stor5[address(arg1)]:
        if stor5[address(arg1)] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 != stor5[address(arg1)] - 1:
            if stor4.length - 1 >= stor4.length:
                revert with 0, 50
            if stor5[address(arg1)] - 1 >= stor4.length:
                revert with 0, 50
            stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
            stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[address(arg1)] = 0
    emit ConsumerRemoved(arg1);
}

function removeInspector(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Balance::removeInspector: inspector already removed'
    if stor3[address(arg1)]:
        if stor3[address(arg1)] < 1:
            revert with 0, 17
        if stor2.length < 1:
            revert with 0, 17
        if stor2.length - 1 != stor3[address(arg1)] - 1:
            if stor2.length - 1 >= stor2.length:
                revert with 0, 50
            if stor3[address(arg1)] - 1 >= stor2.length:
                revert with 0, 50
            stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
            stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
        if not stor2.length:
            revert with 0, 49
        stor2[stor2.length].field_0 = 0
        stor2.length--
        stor3[address(arg1)] = 0
    emit InspectorRemoved(arg1);
}

function sub_e578a225(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if address(arg1) != tx.origin:
        if not stor5[tx.origin]:
            revert with 0, 'Balance: caller is not a consumer'
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 <= 0:
        revert with 0, 'Balance::claim: negative or zero claim'
    if balanceOf[address(arg1)] < sub_fccd7f72[address(arg1)]:
        revert with 0, 17
    if arg2 + arg3 > balanceOf[address(arg1)] - sub_fccd7f72[address(arg1)]:
        revert with 0, 'Balance::claim: claim amount exceeds net balance'
    if sub_fccd7f72[address(arg1)] > !(arg2 + arg3):
        revert with 0, 17
    sub_fccd7f72[address(arg1)] = sub_fccd7f72[address(arg1)] + arg2 + arg3
    if sub_41dc3412 == -1:
        revert with 0, 17
    sub_41dc3412++
    bills[stor9].field_0 = sub_41dc3412
    bills[stor9].field_256 = msg.sender
    bills[stor9].field_512 = address(arg1)
    bills[stor9].field_768 = arg2
    bills[stor9].field_1024 = arg3
    bills[stor9].field_1280 = 0
    bills[stor9].field_1536 = 0
    emit Claim(Array(len=arg4.length, data=arg4[all]), address(arg1), sub_41dc3412);
    return sub_41dc3412
}

function sub_65e3527d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor3[address(msg.sender)]:
        revert with 0, 'Balance: caller is not the inspector'
    if ('cd', 4).length >= 500:
        revert with 0, 'Balance::rejectClaims: too many claims'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'Balance::rejectClaims: bill not found'
        if mem[(32 * idx) + 128] > sub_41dc3412:
            revert with 0, 'Balance::rejectClaims: bill not found'
        if bills[mem[(32 * idx) + 128]].field_1280 > 2:
            revert with 0, 33
        if bills[mem[(32 * idx) + 128]].field_1280:
            revert with 0, 'Balance::rejectClaims: bill already processed'
        if bills[mem[(32 * idx) + 128]].field_768 > !bills[mem[(32 * idx) + 128]].field_1024:
            revert with 0, 17
        bills[mem[(32 * idx) + 128]].field_1280 = 2
        mem[0] = bills[mem[(32 * idx) + 128]].field_512
        mem[32] = 7
        if sub_fccd7f72[stor8[mem[(32 * idx) + 128]].field_512] < bills[mem[(32 * idx) + 128]].field_768 + bills[mem[(32 * idx) + 128]].field_1024:
            revert with 0, 17
        sub_fccd7f72[stor8[mem[(32 * idx) + 128]].field_512] = sub_fccd7f72[stor8[mem[(32 * idx) + 128]].field_512] - bills[mem[(32 * idx) + 128]].field_768 - bills[mem[(32 * idx) + 128]].field_1024
        emit RejectClaim(bills[mem[(32 * idx) + 128]].field_0);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function consumers() {
    if stor4.length > test266151307():
        revert with 0, 65
    mem[96] = stor4.length
    mem[64] = (32 * stor4.length) + 128
    if not stor4.length:
        if var29002 >= stor4.length:
            mem[(32 * stor4.length) + 128] = 32
            mem[(32 * stor4.length) + 160] = stor4.length
            idx = 0
            s = (32 * stor4.length) + 192
            t = 128
            while idx < stor4.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor4.length) + 128
               len (96 * stor4.length) + 64
        if var35001 >= stor4.length:
            revert with 0, 50
        mem[0] = 4
        if var41002 >= stor4.length:
            revert with 0, 50
        mem[(32 * var41002) + 128] = address(var41001)
        s = var41002
        t = var41001
        idx = var41002
        while idx != -1:
            if idx + 1 >= stor4.length:
                mem[(32 * stor4.length) + 128] = 32
                mem[(32 * stor4.length) + 160] = stor4.length
                u = 0
                s = (32 * stor4.length) + 192
                t = 128
                while u < stor4.length:
                    mem[s] = mem[t + 12 len 20]
                    mem[(32 * u + 1) + 128] = address(s + 32)
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor4.length) + 128
                   len (96 * stor4.length) + 64
            mem[0] = 4
            if idx + 1 >= stor4.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor4[idx].field_512
            s = idx + 1
            t = stor4[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        if var30002 >= stor4.length:
            mem[(32 * stor4.length) + 128] = 32
            mem[(32 * stor4.length) + 160] = stor4.length
            idx = 0
            s = (32 * stor4.length) + 192
            t = 128
            while idx < stor4.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor4.length) + 128
               len (96 * stor4.length) + 64
        if var36001 >= stor4.length:
            revert with 0, 50
        mem[0] = 4
        if var42002 >= stor4.length:
            revert with 0, 50
        mem[(32 * var42002) + 128] = address(var42001)
        s = var42002
        t = var42001
        idx = var42002
        while idx != -1:
            if idx + 1 >= stor4.length:
                mem[(32 * stor4.length) + 128] = 32
                mem[(32 * stor4.length) + 160] = stor4.length
                u = 0
                s = (32 * stor4.length) + 192
                t = 128
                while u < stor4.length:
                    mem[s] = mem[t + 12 len 20]
                    mem[(32 * u + 1) + 128] = address(s + 32)
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor4.length) + 128
                   len (96 * stor4.length) + 64
            mem[0] = 4
            if idx + 1 >= stor4.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor4[idx].field_512
            s = idx + 1
            t = stor4[idx].field_256
            idx = idx + 1
            continue 
    revert with 0, 17
}

function sub_ac6f2f2d(?) {
    if stor2.length > test266151307():
        revert with 0, 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        if var29002 >= stor2.length:
            mem[(32 * stor2.length) + 128] = 32
            mem[(32 * stor2.length) + 160] = stor2.length
            idx = 0
            s = (32 * stor2.length) + 192
            t = 128
            while idx < stor2.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + 128
               len (96 * stor2.length) + 64
        if var35001 >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        if var41002 >= stor2.length:
            revert with 0, 50
        mem[(32 * var41002) + 128] = address(var41001)
        s = var41002
        t = var41001
        idx = var41002
        while idx != -1:
            if idx + 1 >= stor2.length:
                mem[(32 * stor2.length) + 128] = 32
                mem[(32 * stor2.length) + 160] = stor2.length
                u = 0
                s = (32 * stor2.length) + 192
                t = 128
                while u < stor2.length:
                    mem[s] = mem[t + 12 len 20]
                    mem[(32 * u + 1) + 128] = address(s + 32)
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor2.length) + 128
                   len (96 * stor2.length) + 64
            mem[0] = 2
            if idx + 1 >= stor2.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor2[idx].field_512
            s = idx + 1
            t = stor2[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if var30002 >= stor2.length:
            mem[(32 * stor2.length) + 128] = 32
            mem[(32 * stor2.length) + 160] = stor2.length
            idx = 0
            s = (32 * stor2.length) + 192
            t = 128
            while idx < stor2.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + 128
               len (96 * stor2.length) + 64
        if var36001 >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        if var42002 >= stor2.length:
            revert with 0, 50
        mem[(32 * var42002) + 128] = address(var42001)
        s = var42002
        t = var42001
        idx = var42002
        while idx != -1:
            if idx + 1 >= stor2.length:
                mem[(32 * stor2.length) + 128] = 32
                mem[(32 * stor2.length) + 160] = stor2.length
                u = 0
                s = (32 * stor2.length) + 192
                t = 128
                while u < stor2.length:
                    mem[s] = mem[t + 12 len 20]
                    mem[(32 * u + 1) + 128] = address(s + 32)
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor2.length) + 128
                   len (96 * stor2.length) + 64
            mem[0] = 2
            if idx + 1 >= stor2.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor2[idx].field_512
            s = idx + 1
            t = stor2[idx].field_256
            idx = idx + 1
            continue 
    revert with 0, 17
}

function sub_473f0175(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    idx = 0
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor3[address(msg.sender)]:
        revert with 0, 'Balance: caller is not the inspector'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Balance::acceptClaims: arity mismatch'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'Balance::acceptClaims: arity mismatch'
    if ('cd', 4).length > 500:
        revert with 0, 'Balance::acceptClaims: too many claims'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'Balance::acceptClaims: bill not found'
        if mem[(32 * idx) + 128] > sub_41dc3412:
            revert with 0, 'Balance::acceptClaims: bill not found'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
            revert with 0, 17
        if bills[mem[(32 * idx) + 128]].field_768 > !bills[mem[(32 * idx) + 128]].field_1024:
            revert with 0, 17
        if bills[mem[(32 * idx) + 128]].field_1280 > 2:
            revert with 0, 33
        if bills[mem[(32 * idx) + 128]].field_1280:
            revert with 0, 'Balance::acceptClaims: bill already processed'
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] > bills[mem[(32 * idx) + 128]].field_768 + bills[mem[(32 * idx) + 128]].field_1024:
            revert with 0, 'Balance::acceptClaims: claim amount exceeds max fee'
        bills[mem[(32 * idx) + 128]].field_1280 = 1
        bills[mem[(32 * idx) + 128]].field_768 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        bills[mem[(32 * idx) + 128]].field_1024 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        if sub_fccd7f72[stor8[mem[(32 * idx) + 128]].field_512] < bills[mem[(32 * idx) + 128]].field_768 + bills[mem[(32 * idx) + 128]].field_1024:
            revert with 0, 17
        sub_fccd7f72[stor8[mem[(32 * idx) + 128]].field_512] = sub_fccd7f72[stor8[mem[(32 * idx) + 128]].field_512] - bills[mem[(32 * idx) + 128]].field_768 - bills[mem[(32 * idx) + 128]].field_1024
        mem[0] = bills[mem[(32 * idx) + 128]].field_512
        mem[32] = 6
        if balanceOf[stor8[mem[(32 * idx) + 128]].field_512] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
            revert with 0, 17
        balanceOf[stor8[mem[(32 * idx) + 128]].field_512] = balanceOf[stor8[mem[(32 * idx) + 128]].field_512] - mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] - mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        if s > !(mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]):
            revert with 0, 17
        emit AcceptClaim(bills[mem[(32 * idx) + 128]].field_0);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        continue 
    call treasuryAddress with:
       value s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
