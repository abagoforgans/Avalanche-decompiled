contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
array of struct sub_154e14fe;
mapping of uint256 sub_8c376f86;
uint256 sub_9b2f783c;
mapping of uint8 stor104;
array of struct stor105;
address orbitAddress;
address sub_cc65fc64Address;
mapping of uint8 stor108;
mapping of uint256 rewardAmount;
uint256 sub_c5d5c0ee;
uint256 sub_f38729cc;
array of address stor57762096780731528330405058414938765910932439953606620384872163540286326260488;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260489;
array of struct stor57762096780731528330405058414938765910932439953606620384872163540286326260490;
array of struct stor57762096780731528330405058414938765910932439953606620384872163540286326260491;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260492;
array of address stor65121483548824993324859576973500511702880785110129058561322659104044632942535;

function getRewardAmount() {
    return rewardAmount[msg.sender]
}

function sub_0f91e1c8(?) {
    require calldata.size - 4 >= 32
    return bool(stor108[arg1])
}

function sub_154e14fe(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_154e14fe.length
    return address(sub_154e14fe[arg1].field_0)
}

function getTransactionCount() {
    return stor105.length
}

function sub_4e2c63fb(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return bool(stor104[arg1][arg2])
}

function sub_8c376f86(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8c376f86[arg1]
}

function owner() {
    return owner
}

function sub_9b2f783c(?) {
    return sub_9b2f783c
}

function sub_c5d5c0ee(?) {
    return sub_c5d5c0ee
}

function sub_cc65fc64(?) {
    return sub_cc65fc64Address
}

function sub_f38729cc(?) {
    return sub_f38729cc
}

function orbitAddress() {
    return orbitAddress
}

function getMessageHash(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    return sha3(arg1, arg2, arg3)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ce098c9b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'EuropaBase: Invalid address'
    orbitAddress = address(arg1)
}

function sub_abc0f19b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'EuropaBase: Invalid address'
    sub_cc65fc64Address = address(arg1)
}

function sub_bf350bbd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Invalid score'
    sub_9b2f783c = arg1
}

function sub_af8894b7(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 >= 100:
        revert with 0, 'TreasuryWallet: invalid percent'
    sub_c5d5c0ee = arg1
    sub_f38729cc = arg2
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

function addAdmin(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Invalid admin'
    if sub_8c376f86[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Admin not unique'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Invalid score'
    sub_8c376f86[address(arg1)] = arg2
    sub_154e14fe.length++
    stor8FF9[stor101.length] = arg1
}

function revokeConfirmation(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_8c376f86[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet:You are not admin'
    if arg1 >= stor105.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Tx does not exist'
    if uint8(stor105[arg1].field_936):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Tx already executed'
    if arg1 >= stor105.length:
        revert with 0, 50
    if not stor104[arg1][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Tx not confirmed'
    if stor105[arg1].field_1024 < sub_8c376f86[msg.sender]:
        revert with 0, 17
    stor105[arg1].field_1024 -= sub_8c376f86[msg.sender]
    stor104[arg1][msg.sender] = 0
    emit RevokeConfirmation(msg.sender, arg1);
}

function confirmTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_8c376f86[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet:You are not admin'
    if arg1 >= stor105.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Tx does not exist'
    if uint8(stor105[arg1].field_936):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Tx already executed'
    if stor104[arg1][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Tx already confirmed'
    if arg1 >= stor105.length:
        revert with 0, 50
    if stor105[arg1].field_1024 > !sub_8c376f86[address(msg.sender)]:
        revert with 0, 17
    stor105[arg1].field_1024 += sub_8c376f86[address(msg.sender)]
    stor104[arg1][msg.sender] = 1
    emit ConfirmTransaction(msg.sender, arg1);
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Invalid admin'
    if not sub_8c376f86[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Admin not unique'
    sub_8c376f86[address(arg1)] = 0
    idx = 0
    while idx < sub_154e14fe.length:
        mem[0] = 101
        if address(sub_154e14fe[idx].field_0) != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if sub_154e14fe.length < 1:
            revert with 0, 17
        if sub_154e14fe.length - 1 >= sub_154e14fe.length:
            revert with 0, 50
        if idx >= sub_154e14fe.length:
            revert with 0, 50
        address(sub_154e14fe[idx].field_0) = address(sub_154e14fe[sub_154e14fe.length].field_0)
        if not sub_154e14fe.length:
            revert with 0, 49
        address(sub_154e14fe[sub_154e14fe.length].field_0) = 0
        sub_154e14fe.length--
}

function sub_2d343332(?) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    if arg2 <= 0:
        revert with 0, 'TreasuryWallet: Invalid amount'
    if stor108[arg1]:
        revert with 0, 'TreasuryWallet: Already paid'
    mem[ceil32(ceil32(arg3.length)) + 129] = address(msg.sender)
    mem[ceil32(ceil32(arg3.length)) + 149] = arg1
    mem[ceil32(ceil32(arg3.length)) + 181] = arg2
    mem[ceil32(ceil32(arg3.length)) + 97] = 84
    if arg3.length != 65:
        revert with 0, 'invalid signature length'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, arg1, arg2)), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != sub_cc65fc64Address:
        revert with 0, 'TreasuryWallet: Invalid signature'
    stor108[arg1] = 1
    if rewardAmount[msg.sender] > !arg2:
        revert with 0, 17
    rewardAmount[msg.sender] += arg2
    emit 0xcf3d4b5a: arg1, arg2
}

function getAdmins() {
    idx = 0
    while idx < sub_154e14fe.length:
        mem[0] = address(sub_154e14fe[idx].field_0)
        mem[32] = 102
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_8c376f86[address(stor101[idx].field_0)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[64] = (32 * sub_154e14fe.length) + 128
    mem[96] = sub_154e14fe.length
    if not sub_154e14fe.length:
        mem[(32 * sub_154e14fe.length) + 128] = 64
        mem[(32 * sub_154e14fe.length) + 192] = sub_154e14fe.length
        idx = 0
        s = 128
        t = (32 * sub_154e14fe.length) + 224
        while idx < sub_154e14fe.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * sub_154e14fe.length) + 160] = (96 * sub_154e14fe.length) + 96
        mem[(64 * sub_154e14fe.length) + 224] = sub_154e14fe.length
        mem[(64 * sub_154e14fe.length) + 256 len 32 * sub_154e14fe.length] = mem[128 len 32 * sub_154e14fe.length]
        return memory
          from (32 * sub_154e14fe.length) + 128
           len (129 * sub_154e14fe.length) + 128
    mem[128] = address(sub_154e14fe.field_0)
    idx = 128
    s = 0
    while (32 * sub_154e14fe.length) + 96 > idx:
        mem[idx + 32] = address(sub_154e14fe[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_154e14fe.length) + 128] = 64
    mem[(32 * sub_154e14fe.length) + 192] = sub_154e14fe.length
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < sub_154e14fe.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * sub_154e14fe.length) + 160] = (32 * sub_154e14fe.length) + 96
    mem[(64 * sub_154e14fe.length) + 224] = mem[96]
    mem[(64 * sub_154e14fe.length) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return memory
      from mem[64]
       len (64 * sub_154e14fe.length) + (32 * mem[96]) + -mem[64] + 256
}

function sub_298f70e3(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == bool(arg4)
    require arg5 == address(arg5)
    if not sub_8c376f86[msg.sender]:
        revert with 0, 'EuropaMultiSigWallet:You are not admin'
    stor105.length++
    stor7FB4[stor105.length] = address(arg1)
    stor7FB4[stor105.length] = arg2
    if bool(stor7FB4[stor105.length].field_0):
        if bool(stor7FB4[stor105.length].field_0) == uint255(stor7FB4[stor105.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((5 * stor105.length) + 0x7fb4302e8e91f9110a6554c2c0a24601252c2a42c2220ca988efcfe39991430a)][] = Array(len=arg3.length, data=arg3[all])
        else:
            stor7FB4[stor105.length].field_0 = 0
            idx = 0
            while (uint255(stor7FB4[stor105.length].field_0) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((5 * stor105.length) + 0x7fb4302e8e91f9110a6554c2c0a24601252c2a42c2220ca988efcfe39991430a)] = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor7FB4[stor105.length].field_0) == stor7FB4[stor105.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((5 * stor105.length) + 0x7fb4302e8e91f9110a6554c2c0a24601252c2a42c2220ca988efcfe39991430a)][] = Array(len=arg3.length, data=arg3[all])
        else:
            stor7FB4[stor105.length].field_0 = 0
            idx = 0
            while stor7FB4[stor105.length].field_1 % 128 + 31 / 32 > idx:
                stor[idx + sha3((5 * stor105.length) + 0x7fb4302e8e91f9110a6554c2c0a24601252c2a42c2220ca988efcfe39991430a)] = 0
                idx = idx + 1
                continue 
    uint8(stor7FB4[stor105.length].field_0) = uint8(bool(arg4))
    address(stor7FB4[stor105.length].field_8) = address(arg5)
    Mask(88, 0, stor7FB4[stor105.length].field_168) = 0
    Mask(80, 0, stor7FB4[stor105.length].field_176) = Mask(80, 176, bool(arg4)) >> 176
    stor7FB4[stor105.length] = 0
    emit 0xcab46322: arg2, 128, bool(arg4), address(arg5), arg3.length, arg3[all], 0, msg.sender, stor105.length, address(arg1)
}

function claimRewards() {
    if not rewardAmount[msg.sender]:
        revert with 0, 'TreasuryWallet: No rewards'
    rewardAmount[msg.sender] = 0
    if rewardAmount[msg.sender] and sub_c5d5c0ee > -1 / rewardAmount[msg.sender]:
        revert with 0, 17
    if rewardAmount[msg.sender] and sub_f38729cc > -1 / rewardAmount[msg.sender]:
        revert with 0, 17
    if rewardAmount[msg.sender] < rewardAmount[msg.sender] * sub_c5d5c0ee / 100:
        revert with 0, 17
    if rewardAmount[msg.sender] - (rewardAmount[msg.sender] * sub_c5d5c0ee / 100) < rewardAmount[msg.sender] * sub_f38729cc / 100:
        revert with 0, 17
    if rewardAmount[msg.sender] - (rewardAmount[msg.sender] * sub_c5d5c0ee / 100) - (rewardAmount[msg.sender] * sub_f38729cc / 100) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TreasuryWallet: invalid withdrawal'
    if rewardAmount[msg.sender] * sub_c5d5c0ee / 100:
        staticcall orbitAddress.getDevWallet() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call orbitAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), rewardAmount[msg.sender] * sub_c5d5c0ee / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if rewardAmount[msg.sender] * sub_f38729cc / 100:
        staticcall orbitAddress.getTeamWallet() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call orbitAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), rewardAmount[msg.sender] * sub_f38729cc / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call orbitAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, rewardAmount[msg.sender] - (rewardAmount[msg.sender] * sub_c5d5c0ee / 100) - (rewardAmount[msg.sender] * sub_f38729cc / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5640290e(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    if ('cd', 4).length <= 0:
        revert with 0, 'EuropaMultiSigWallet: Admins required'
    if cd[68] <= 0:
        revert with 0, 'EuropaMultiSigWallet: Invalid number of required confirmations'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'EuropaMultiSigWallet: Invalid admin'
        if sub_8c376f86[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'EuropaMultiSigWallet: Admin not unique'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] <= 0:
            revert with 0, 'EuropaMultiSigWallet: Invalid score'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[32] = 102
        sub_8c376f86[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        sub_154e14fe.length++
        mem[0] = 101
        stor8FF9[stor101.length] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_9b2f783c = cd[68]
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_85170813(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        uint16(stor0.field_0) = 257
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    if ('cd', 4).length <= 0:
        revert with 0, 'EuropaMultiSigWallet: Admins required'
    if cd[68] <= 0:
        revert with 0, 'EuropaMultiSigWallet: Invalid number of required confirmations'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'EuropaMultiSigWallet: Invalid admin'
        if sub_8c376f86[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'EuropaMultiSigWallet: Admin not unique'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] <= 0:
            revert with 0, 'EuropaMultiSigWallet: Invalid score'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[32] = 102
        sub_8c376f86[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        sub_154e14fe.length++
        mem[0] = 101
        stor8FF9[stor101.length] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_9b2f783c = cd[68]
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_c5d5c0ee = 10
    sub_f38729cc = 5
}

function getTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor105.length:
        revert with 0, 50
    if bool(stor105[arg1].field_512):
        if bool(stor105[arg1].field_512) == uint255(stor105[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor105[arg1].field_512):
            if bool(stor105[arg1].field_512) == uint255(stor105[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor105[arg1].field_512):
                if 31 >= uint255(stor105[arg1].field_512) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor105[arg1].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor105[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor105[arg1].field_512) == stor105[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor105[arg1].field_513 % 128:
                if 31 >= stor105[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor105[arg1].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor105[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor105[arg1].field_0), 
               stor105[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor105[arg1].field_512), data=mem[128 len ceil32(uint255(stor105[arg1].field_512) * 0.5)]),
               bool(uint8(stor105[arg1].field_936)),
               stor105[arg1].field_1024
    if bool(stor105[arg1].field_512) == stor105[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor105[arg1].field_512):
        if bool(stor105[arg1].field_512) == uint255(stor105[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor105[arg1].field_512):
            if 31 >= uint255(stor105[arg1].field_512) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor105[arg1].field_520)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                idx = 128
                s = 0
                while (uint255(stor105[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor105[arg1].field_512) == stor105[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor105[arg1].field_513 % 128:
            if 31 >= stor105[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor105[arg1].field_520)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                idx = 128
                s = 0
                while stor105[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor105[arg1].field_0), 
           stor105[arg1].field_256,
           Array(len=stor105[arg1].field_512 % 128, data=mem[128 len ceil32(stor105[arg1].field_513 % 128)]),
           bool(uint8(stor105[arg1].field_936)),
           stor105[arg1].field_1024
}

function transactions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor105.length
    if bool(stor105[arg1].field_512):
        if bool(stor105[arg1].field_512) == uint255(stor105[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor105[arg1].field_512):
            if bool(stor105[arg1].field_512) == uint255(stor105[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor105[arg1].field_512):
                if 31 >= uint255(stor105[arg1].field_512) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor105[arg1].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor105[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor105[arg1].field_512) == stor105[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor105[arg1].field_513 % 128:
                if 31 >= stor105[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor105[arg1].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor105[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor105[arg1].field_0), 
               stor105[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor105[arg1].field_512), data=mem[128 len ceil32(uint255(stor105[arg1].field_512) * 0.5)]),
               bool(uint8(stor105[arg1].field_768)),
               address(stor105[arg1].field_768),
               bool(uint8(stor105[arg1].field_936)),
               stor105[arg1].field_1024
    if bool(stor105[arg1].field_512) == stor105[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor105[arg1].field_512):
        if bool(stor105[arg1].field_512) == uint255(stor105[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor105[arg1].field_512):
            if 31 >= uint255(stor105[arg1].field_512) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor105[arg1].field_520)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                idx = 128
                s = 0
                while (uint255(stor105[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor105[arg1].field_512) == stor105[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor105[arg1].field_513 % 128:
            if 31 >= stor105[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor105[arg1].field_520)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                idx = 128
                s = 0
                while stor105[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor105[arg1].field_0), 
           stor105[arg1].field_256,
           Array(len=stor105[arg1].field_512 % 128, data=mem[128 len ceil32(stor105[arg1].field_513 % 128)]),
           bool(uint8(stor105[arg1].field_768)),
           address(stor105[arg1].field_768),
           bool(uint8(stor105[arg1].field_936)),
           stor105[arg1].field_1024
}

function executeTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_8c376f86[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet:You are not admin'
    if arg1 >= stor105.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Tx does not exist'
    if uint8(stor105[arg1].field_936):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaMultiSigWallet: Tx already executed'
    if arg1 >= stor105.length:
        revert with 0, 50
    if stor105[arg1].field_1024 < sub_9b2f783c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'EuropaMultiSigWallet: Cannot execute Tx because of not enough confirmation'
    uint8(stor105[arg1].field_936) = 1
    if uint8(stor105[arg1].field_768):
        if bool(stor105[arg1].field_512):
            if bool(stor105[arg1].field_512) == uint255(stor105[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor105[arg1].field_512):
                mem[96] = Mask(248, 8, stor105[arg1].field_512)
                call address(stor105[arg1].field_0) with:
                   funct uint32(stor105[arg1].field_736)
                   value stor105[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len (uint255(stor105[arg1].field_512) * 0.5) - 4]
            else:
                if bool(stor105[arg1].field_512) != 1:
                    call address(stor105[arg1].field_0).mem[96 len 4] with:
                       value stor105[arg1].field_256 wei
                         gas gas_remaining wei
                        args mem[100 len -100]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor105[arg1].field_512) * 0.5:
                        mem[idx + 96] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call address(stor105[arg1].field_0).mem[96 len 4] with:
                       value stor105[arg1].field_256 wei
                         gas gas_remaining wei
                        args mem[100 len (uint255(stor105[arg1].field_512) * 0.5) - 4]
        else:
            if bool(stor105[arg1].field_512) == stor105[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if not bool(stor105[arg1].field_512):
                mem[96] = Mask(248, 8, stor105[arg1].field_512)
                call address(stor105[arg1].field_0) with:
                   funct uint32(stor105[arg1].field_736)
                   value stor105[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len stor105[arg1].field_513 % 128 - 4]
            else:
                if bool(stor105[arg1].field_512) != 1:
                    call address(stor105[arg1].field_0).mem[96 len 4] with:
                       value stor105[arg1].field_256 wei
                         gas gas_remaining wei
                        args mem[100 len -100]
                else:
                    idx = 0
                    s = 0
                    while idx < stor105[arg1].field_513 % 128:
                        mem[idx + 96] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call address(stor105[arg1].field_0).mem[96 len 4] with:
                       value stor105[arg1].field_256 wei
                         gas gas_remaining wei
                        args mem[100 len stor105[arg1].field_513 % 128 - 4]
        if not ext_call.success:
            revert with 0, 'EuropaMultiSigWallet: Tx failed'
    else:
        mem[100] = address(stor105[arg1].field_0)
        mem[132] = stor105[arg1].field_256
        call address(stor105[arg1].field_776).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor105[arg1].field_0), stor105[arg1].field_256
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if bool(stor105[arg1].field_512):
            if bool(stor105[arg1].field_512) == uint255(stor105[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if uint255(stor105[arg1].field_512) * 0.5 > 0:
                if bool(stor105[arg1].field_512):
                    if bool(stor105[arg1].field_512) == uint255(stor105[arg1].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor105[arg1].field_512):
                        mem[ceil32(return_data.size) + 96] = Mask(248, 8, stor105[arg1].field_512)
                        call address(stor105[arg1].field_0) with:
                           funct uint32(stor105[arg1].field_736)
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 100 len (uint255(stor105[arg1].field_512) * 0.5) - 4]
                    else:
                        if bool(stor105[arg1].field_512) != 1:
                            call address(stor105[arg1].field_0).mem[ceil32(return_data.size) + 96 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(return_data.size) + 100 len -ceil32(return_data.size) - 100]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor105[arg1].field_512) * 0.5:
                                mem[idx + ceil32(return_data.size) + 96] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            call address(stor105[arg1].field_0).mem[ceil32(return_data.size) + 96 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(return_data.size) + 100 len (uint255(stor105[arg1].field_512) * 0.5) - 4]
                else:
                    if bool(stor105[arg1].field_512) == stor105[arg1].field_513 % 128 < 32:
                        revert with 0, 34
                    if not bool(stor105[arg1].field_512):
                        mem[ceil32(return_data.size) + 96] = Mask(248, 8, stor105[arg1].field_512)
                        call address(stor105[arg1].field_0) with:
                           funct uint32(stor105[arg1].field_736)
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 100 len stor105[arg1].field_513 % 128 - 4]
                    else:
                        if bool(stor105[arg1].field_512) != 1:
                            call address(stor105[arg1].field_0).mem[ceil32(return_data.size) + 96 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(return_data.size) + 100 len -ceil32(return_data.size) - 100]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor105[arg1].field_513 % 128:
                                mem[idx + ceil32(return_data.size) + 96] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            call address(stor105[arg1].field_0).mem[ceil32(return_data.size) + 96 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(return_data.size) + 100 len stor105[arg1].field_513 % 128 - 4]
                if not ext_call.success:
                    revert with 0, 'EuropaMultiSigWallet: Tx failed'
        else:
            if bool(stor105[arg1].field_512) == stor105[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor105[arg1].field_513 % 128 > 0:
                if bool(stor105[arg1].field_512):
                    if bool(stor105[arg1].field_512) == uint255(stor105[arg1].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor105[arg1].field_512):
                        mem[ceil32(return_data.size) + 96] = Mask(248, 8, stor105[arg1].field_512)
                        call address(stor105[arg1].field_0) with:
                           funct uint32(stor105[arg1].field_736)
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 100 len (uint255(stor105[arg1].field_512) * 0.5) - 4]
                    else:
                        if bool(stor105[arg1].field_512) != 1:
                            call address(stor105[arg1].field_0).mem[ceil32(return_data.size) + 96 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(return_data.size) + 100 len -ceil32(return_data.size) - 100]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor105[arg1].field_512) * 0.5:
                                mem[idx + ceil32(return_data.size) + 96] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            call address(stor105[arg1].field_0).mem[ceil32(return_data.size) + 96 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(return_data.size) + 100 len (uint255(stor105[arg1].field_512) * 0.5) - 4]
                else:
                    if bool(stor105[arg1].field_512) == stor105[arg1].field_513 % 128 < 32:
                        revert with 0, 34
                    if not bool(stor105[arg1].field_512):
                        mem[ceil32(return_data.size) + 96] = Mask(248, 8, stor105[arg1].field_512)
                        call address(stor105[arg1].field_0) with:
                           funct uint32(stor105[arg1].field_736)
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 100 len stor105[arg1].field_513 % 128 - 4]
                    else:
                        if bool(stor105[arg1].field_512) != 1:
                            call address(stor105[arg1].field_0).mem[ceil32(return_data.size) + 96 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(return_data.size) + 100 len -ceil32(return_data.size) - 100]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor105[arg1].field_513 % 128:
                                mem[idx + ceil32(return_data.size) + 96] = stor[s + sha3((5 * arg1) + ('name', 'stor105', 105) + 2)].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            call address(stor105[arg1].field_0).mem[ceil32(return_data.size) + 96 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(return_data.size) + 100 len stor105[arg1].field_513 % 128 - 4]
                if not ext_call.success:
                    revert with 0, 'EuropaMultiSigWallet: Tx failed'
    emit ExecuteTransaction(msg.sender, arg1);
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit Deposit(msg.value, eth.balance(this.address), msg.sender);
    else:
        if unknown_0x8c376f86(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc5d5c0ee(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xabc0f19b(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x8c376f86(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return sub_8c376f86[cd[4]]
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if uint32(call.func_hash) >> 224 != unknown_0x9ace38c2(?????):
                        require unknown_0x9b2f783c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_9b2f783c
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] < stor105.length
                    if bool(stor105[cd[4]].field_512):
                        if bool(stor105[cd[4]].field_512) == uint255(stor105[cd[4]].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor105[cd[4]].field_512):
                            if bool(stor105[cd[4]].field_512) == uint255(stor105[cd[4]].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor105[cd[4]].field_512):
                                if 31 >= uint255(stor105[cd[4]].field_512) * 0.5:
                                    mem[160] = 256 * Mask(248, 0, stor105[cd[4]].field_520)
                                else:
                                    mem[160] = stor[sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                    idx = 160
                                    s = 0
                                    while (uint255(stor105[cd[4]].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor105[cd[4]].field_512) == stor105[cd[4]].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor105[cd[4]].field_513 % 128:
                                if 31 >= stor105[cd[4]].field_513 % 128:
                                    mem[160] = 256 * Mask(248, 0, stor105[cd[4]].field_520)
                                else:
                                    mem[160] = stor[sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                    idx = 160
                                    s = 0
                                    while stor105[cd[4]].field_513 % 128 + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        return address(stor105[cd[4]].field_0), 
                               stor105[cd[4]].field_256,
                               Array(len=2 * Mask(256, -1, stor105[cd[4]].field_512), data=mem[160 len ceil32(uint255(stor105[cd[4]].field_512) * 0.5)]),
                               bool(uint8(stor105[cd[4]].field_768)),
                               address(stor105[cd[4]].field_768),
                               bool(uint8(stor105[cd[4]].field_936)),
                               stor105[cd[4]].field_1024
                    if bool(stor105[cd[4]].field_512) == stor105[cd[4]].field_513 % 128 < 32:
                        revert with 0, 34
                    if bool(stor105[cd[4]].field_512):
                        if bool(stor105[cd[4]].field_512) == uint255(stor105[cd[4]].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor105[cd[4]].field_512):
                            if 31 >= uint255(stor105[cd[4]].field_512) * 0.5:
                                mem[160] = 256 * Mask(248, 0, stor105[cd[4]].field_520)
                            else:
                                mem[160] = stor[sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                idx = 160
                                s = 0
                                while (uint255(stor105[cd[4]].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor105[cd[4]].field_512) == stor105[cd[4]].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor105[cd[4]].field_513 % 128:
                            if 31 >= stor105[cd[4]].field_513 % 128:
                                mem[160] = 256 * Mask(248, 0, stor105[cd[4]].field_520)
                            else:
                                mem[160] = stor[sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                idx = 160
                                s = 0
                                while stor105[cd[4]].field_513 % 128 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return address(stor105[cd[4]].field_0), 
                           stor105[cd[4]].field_256,
                           Array(len=stor105[cd[4]].field_512 % 128, data=mem[160 len ceil32(stor105[cd[4]].field_513 % 128)]),
                           bool(uint8(stor105[cd[4]].field_768)),
                           address(stor105[cd[4]].field_768),
                           bool(uint8(stor105[cd[4]].field_936)),
                           stor105[cd[4]].field_1024
                if unknown_0xabc0f19b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'EuropaBase: Invalid address'
                    sub_cc65fc64Address = address(cd[4])
                else:
                    if unknown_0xaf8894b7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if cd[4] > !cd[36]:
                            revert with 0, 17
                        if cd[4] + cd[36] >= 100:
                            revert with 0, 'TreasuryWallet: invalid percent'
                        sub_c5d5c0ee = cd[4]
                        sub_f38729cc = cd[36]
                    else:
                        if unknown_0xbf350bbd(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if cd[4] <= 0:
                                revert with 0, 'EuropaMultiSigWallet: Invalid score'
                            sub_9b2f783c = cd[4]
                        else:
                            require unknown_0xc01a8c84(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not sub_8c376f86[msg.sender]:
                                revert with 0, 'EuropaMultiSigWallet:You are not admin'
                            if cd[4] >= stor105.length:
                                revert with 0, 'EuropaMultiSigWallet: Tx does not exist'
                            if uint8(stor105[cd[4]].field_936):
                                revert with 0, 'EuropaMultiSigWallet: Tx already executed'
                            if stor104[cd[4]][msg.sender]:
                                revert with 0, 'EuropaMultiSigWallet: Tx already confirmed'
                            if cd[4] >= stor105.length:
                                revert with 0, 50
                            if stor105[cd[4]].field_1024 > !sub_8c376f86[address(msg.sender)]:
                                revert with 0, 17
                            stor105[cd[4]].field_1024 += sub_8c376f86[address(msg.sender)]
                            stor104[cd[4]][msg.sender] = 1
                            emit ConfirmTransaction(msg.sender, cd[4]);
            else:
                if unknown_0xee22610b(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xc5d5c0ee(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_c5d5c0ee
                    if unknown_0xcc65fc64(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_cc65fc64Address
                    if uint32(call.func_hash) >> 224 != unknown_0xce098c9b(?????):
                        require unknown_0xd2b0737b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        return sha3(address(cd[4]), cd[36], cd[68])
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'EuropaBase: Invalid address'
                    orbitAddress = address(cd[4])
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xee22610b(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                            if unknown_0xf38729cc(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_f38729cc
                            require unknown_0xf5d553aa(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return orbitAddress
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(cd[4])
                        emit OwnershipTransferred(owner, address(cd[4]));
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not sub_8c376f86[msg.sender]:
                            revert with 0, 'EuropaMultiSigWallet:You are not admin'
                        if cd[4] >= stor105.length:
                            revert with 0, 'EuropaMultiSigWallet: Tx does not exist'
                        if uint8(stor105[cd[4]].field_936):
                            revert with 0, 'EuropaMultiSigWallet: Tx already executed'
                        if cd[4] >= stor105.length:
                            revert with 0, 50
                        if stor105[cd[4]].field_1024 < sub_9b2f783c:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'EuropaMultiSigWallet: Cannot execute Tx because of not enough confirmation'
                        uint8(stor105[cd[4]].field_936) = 1
                        if uint8(stor105[cd[4]].field_768):
                            if bool(stor105[cd[4]].field_512):
                                if bool(stor105[cd[4]].field_512) == uint255(stor105[cd[4]].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor105[cd[4]].field_512):
                                    mem[128] = Mask(248, 8, stor105[cd[4]].field_512)
                                    call address(stor105[cd[4]].field_0) with:
                                       funct uint32(stor105[cd[4]].field_736)
                                       value stor105[cd[4]].field_256 wei
                                         gas gas_remaining wei
                                        args mem[132 len (uint255(stor105[cd[4]].field_512) * 0.5) - 4]
                                else:
                                    if bool(stor105[cd[4]].field_512) != 1:
                                        call address(stor105[cd[4]].field_0).mem[128 len 4] with:
                                           value stor105[cd[4]].field_256 wei
                                             gas gas_remaining wei
                                            args mem[132 len -132]
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < uint255(stor105[cd[4]].field_512) * 0.5:
                                            mem[idx + 128] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        call address(stor105[cd[4]].field_0).mem[128 len 4] with:
                                           value stor105[cd[4]].field_256 wei
                                             gas gas_remaining wei
                                            args mem[132 len (uint255(stor105[cd[4]].field_512) * 0.5) - 4]
                            else:
                                if bool(stor105[cd[4]].field_512) == stor105[cd[4]].field_513 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor105[cd[4]].field_512):
                                    mem[128] = Mask(248, 8, stor105[cd[4]].field_512)
                                    call address(stor105[cd[4]].field_0) with:
                                       funct uint32(stor105[cd[4]].field_736)
                                       value stor105[cd[4]].field_256 wei
                                         gas gas_remaining wei
                                        args mem[132 len stor105[cd[4]].field_513 % 128 - 4]
                                else:
                                    if bool(stor105[cd[4]].field_512) != 1:
                                        call address(stor105[cd[4]].field_0).mem[128 len 4] with:
                                           value stor105[cd[4]].field_256 wei
                                             gas gas_remaining wei
                                            args mem[132 len -132]
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor105[cd[4]].field_513 % 128:
                                            mem[idx + 128] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        call address(stor105[cd[4]].field_0).mem[128 len 4] with:
                                           value stor105[cd[4]].field_256 wei
                                             gas gas_remaining wei
                                            args mem[132 len stor105[cd[4]].field_513 % 128 - 4]
                            if not ext_call.success:
                                revert with 0, 'EuropaMultiSigWallet: Tx failed'
                        else:
                            mem[132] = address(stor105[cd[4]].field_0)
                            mem[164] = stor105[cd[4]].field_256
                            call address(stor105[cd[4]].field_776).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor105[cd[4]].field_0), stor105[cd[4]].field_256
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if bool(stor105[cd[4]].field_512):
                                if bool(stor105[cd[4]].field_512) == uint255(stor105[cd[4]].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if uint255(stor105[cd[4]].field_512) * 0.5 > 0:
                                    if bool(stor105[cd[4]].field_512):
                                        if bool(stor105[cd[4]].field_512) == uint255(stor105[cd[4]].field_512) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor105[cd[4]].field_512):
                                            mem[ceil32(return_data.size) + 128] = Mask(248, 8, stor105[cd[4]].field_512)
                                            call address(stor105[cd[4]].field_0) with:
                                               funct uint32(stor105[cd[4]].field_736)
                                                 gas gas_remaining wei
                                                args mem[ceil32(return_data.size) + 132 len (uint255(stor105[cd[4]].field_512) * 0.5) - 4]
                                        else:
                                            if bool(stor105[cd[4]].field_512) != 1:
                                                call address(stor105[cd[4]].field_0).mem[ceil32(return_data.size) + 128 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[ceil32(return_data.size) + 132 len -ceil32(return_data.size) - 132]
                                            else:
                                                idx = 0
                                                s = 0
                                                while idx < uint255(stor105[cd[4]].field_512) * 0.5:
                                                    mem[idx + ceil32(return_data.size) + 128] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                call address(stor105[cd[4]].field_0).mem[ceil32(return_data.size) + 128 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[ceil32(return_data.size) + 132 len (uint255(stor105[cd[4]].field_512) * 0.5) - 4]
                                    else:
                                        if bool(stor105[cd[4]].field_512) == stor105[cd[4]].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor105[cd[4]].field_512):
                                            mem[ceil32(return_data.size) + 128] = Mask(248, 8, stor105[cd[4]].field_512)
                                            call address(stor105[cd[4]].field_0) with:
                                               funct uint32(stor105[cd[4]].field_736)
                                                 gas gas_remaining wei
                                                args mem[ceil32(return_data.size) + 132 len stor105[cd[4]].field_513 % 128 - 4]
                                        else:
                                            if bool(stor105[cd[4]].field_512) != 1:
                                                call address(stor105[cd[4]].field_0).mem[ceil32(return_data.size) + 128 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[ceil32(return_data.size) + 132 len -ceil32(return_data.size) - 132]
                                            else:
                                                idx = 0
                                                s = 0
                                                while idx < stor105[cd[4]].field_513 % 128:
                                                    mem[idx + ceil32(return_data.size) + 128] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                call address(stor105[cd[4]].field_0).mem[ceil32(return_data.size) + 128 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[ceil32(return_data.size) + 132 len stor105[cd[4]].field_513 % 128 - 4]
                                    if not ext_call.success:
                                        revert with 0, 'EuropaMultiSigWallet: Tx failed'
                            else:
                                if bool(stor105[cd[4]].field_512) == stor105[cd[4]].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor105[cd[4]].field_513 % 128 > 0:
                                    if bool(stor105[cd[4]].field_512):
                                        if bool(stor105[cd[4]].field_512) == uint255(stor105[cd[4]].field_512) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor105[cd[4]].field_512):
                                            mem[ceil32(return_data.size) + 128] = Mask(248, 8, stor105[cd[4]].field_512)
                                            call address(stor105[cd[4]].field_0) with:
                                               funct uint32(stor105[cd[4]].field_736)
                                                 gas gas_remaining wei
                                                args mem[ceil32(return_data.size) + 132 len (uint255(stor105[cd[4]].field_512) * 0.5) - 4]
                                        else:
                                            if bool(stor105[cd[4]].field_512) != 1:
                                                call address(stor105[cd[4]].field_0).mem[ceil32(return_data.size) + 128 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[ceil32(return_data.size) + 132 len -ceil32(return_data.size) - 132]
                                            else:
                                                idx = 0
                                                s = 0
                                                while idx < uint255(stor105[cd[4]].field_512) * 0.5:
                                                    mem[idx + ceil32(return_data.size) + 128] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                call address(stor105[cd[4]].field_0).mem[ceil32(return_data.size) + 128 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[ceil32(return_data.size) + 132 len (uint255(stor105[cd[4]].field_512) * 0.5) - 4]
                                    else:
                                        if bool(stor105[cd[4]].field_512) == stor105[cd[4]].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor105[cd[4]].field_512):
                                            mem[ceil32(return_data.size) + 128] = Mask(248, 8, stor105[cd[4]].field_512)
                                            call address(stor105[cd[4]].field_0) with:
                                               funct uint32(stor105[cd[4]].field_736)
                                                 gas gas_remaining wei
                                                args mem[ceil32(return_data.size) + 132 len stor105[cd[4]].field_513 % 128 - 4]
                                        else:
                                            if bool(stor105[cd[4]].field_512) != 1:
                                                call address(stor105[cd[4]].field_0).mem[ceil32(return_data.size) + 128 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[ceil32(return_data.size) + 132 len -ceil32(return_data.size) - 132]
                                            else:
                                                idx = 0
                                                s = 0
                                                while idx < stor105[cd[4]].field_513 % 128:
                                                    mem[idx + ceil32(return_data.size) + 128] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                call address(stor105[cd[4]].field_0).mem[ceil32(return_data.size) + 128 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[ceil32(return_data.size) + 132 len stor105[cd[4]].field_513 % 128 - 4]
                                    if not ext_call.success:
                                        revert with 0, 'EuropaMultiSigWallet: Tx failed'
                        emit ExecuteTransaction(msg.sender, cd[4]);
        else:
            if unknown_0x31ae450b(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x20ea8d86(?????) > uint32(call.func_hash) >> 224:
                    if getRewardAmount() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return rewardAmount[msg.sender]
                    if unknown_0x0f91e1c8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return bool(stor108[cd[4]])
                    if unknown_0x154e14fe(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] < sub_154e14fe.length
                        return address(sub_154e14fe[cd[4]].field_0)
                    require unknown_0x1785f53c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'EuropaMultiSigWallet: Invalid admin'
                    if not sub_8c376f86[address(cd[4])]:
                        revert with 0, 'EuropaMultiSigWallet: Admin not unique'
                    sub_8c376f86[address(cd[4])] = 0
                    idx = 0
                    while idx < sub_154e14fe.length:
                        mem[0] = 101
                        if address(sub_154e14fe[idx].field_0) != address(cd[4]):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if sub_154e14fe.length < 1:
                            revert with 0, 17
                        if sub_154e14fe.length - 1 >= sub_154e14fe.length:
                            revert with 0, 50
                        if idx >= sub_154e14fe.length:
                            revert with 0, 50
                        address(sub_154e14fe[idx].field_0) = address(sub_154e14fe[sub_154e14fe.length].field_0)
                        if not sub_154e14fe.length:
                            revert with 0, 49
                        address(sub_154e14fe[sub_154e14fe.length].field_0) = 0
                        sub_154e14fe.length--
                else:
                    if unknown_0x20ea8d86(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not sub_8c376f86[msg.sender]:
                            revert with 0, 'EuropaMultiSigWallet:You are not admin'
                        if cd[4] >= stor105.length:
                            revert with 0, 'EuropaMultiSigWallet: Tx does not exist'
                        if uint8(stor105[cd[4]].field_936):
                            revert with 0, 'EuropaMultiSigWallet: Tx already executed'
                        if cd[4] >= stor105.length:
                            revert with 0, 50
                        if not stor104[cd[4]][msg.sender]:
                            revert with 0, 'EuropaMultiSigWallet: Tx not confirmed'
                        if stor105[cd[4]].field_1024 < sub_8c376f86[msg.sender]:
                            revert with 0, 17
                        stor105[cd[4]].field_1024 -= sub_8c376f86[msg.sender]
                        stor104[cd[4]][msg.sender] = 0
                        emit RevokeConfirmation(msg.sender, cd[4]);
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x298f70e3(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x2d343332(?????):
                                require unknown_0x2e7700f0(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return stor105.length
                            require not msg.value
                            require calldata.size - 4 >= 96
                            require cd[68] <= test266151307()
                            require cd[68] + 35 < calldata.size
                            if ('cd', 68).length > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(('cd', 68).length)) + 129 < 128 or ceil32(ceil32(('cd', 68).length)) + 129 > test266151307():
                                revert with 0, 65
                            mem[128] = ('cd', 68).length
                            require cd[68] + ('cd', 68).length + 36 <= calldata.size
                            mem[160 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                            if cd[36] <= 0:
                                revert with 0, 'TreasuryWallet: Invalid amount'
                            if stor108[cd[4]]:
                                revert with 0, 'TreasuryWallet: Already paid'
                            mem[ceil32(ceil32(('cd', 68).length)) + 161] = address(msg.sender)
                            mem[ceil32(ceil32(('cd', 68).length)) + 181] = cd[4]
                            mem[ceil32(ceil32(('cd', 68).length)) + 213] = cd[36]
                            mem[ceil32(ceil32(('cd', 68).length)) + 129] = 84
                            if ('cd', 68).length != 65:
                                revert with 0, 'invalid signature length'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, cd[4], cd[36])), 0, mem[160], mem[192]) 
                            if not erecover.result:
                                revert with ext_call.return_data[0 len return_data.size]
                            if address(signer) != sub_cc65fc64Address:
                                revert with 0, 'TreasuryWallet: Invalid signature'
                            stor108[cd[4]] = 1
                            if rewardAmount[msg.sender] > !cd[36]:
                                revert with 0, 17
                            rewardAmount[msg.sender] += cd[36]
                            emit 0xcf3d4b5a: cd[4], cd[36]
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 160
                            require cd[4] == address(cd[4])
                            require cd[68] <= test266151307()
                            require cd[68] + 35 < calldata.size
                            if ('cd', 68).length > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(('cd', 68).length)) + 129 < 128 or ceil32(ceil32(('cd', 68).length)) + 129 > test266151307():
                                revert with 0, 65
                            require cd[68] + ('cd', 68).length + 36 <= calldata.size
                            require cd[100] == bool(cd[100])
                            require cd[132] == address(cd[132])
                            if not sub_8c376f86[msg.sender]:
                                revert with 0, 'EuropaMultiSigWallet:You are not admin'
                            stor105.length++
                            stor7FB4[stor105.length] = address(cd[4])
                            stor7FB4[stor105.length] = cd[36]
                            if bool(stor7FB4[stor105.length].field_0):
                                if bool(stor7FB4[stor105.length].field_0) == uint255(stor7FB4[stor105.length].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if ('cd', 68).length:
                                    stor[sha3((5 * stor105.length) + 0x7fb4302e8e91f9110a6554c2c0a24601252c2a42c2220ca988efcfe39991430a)][] = Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                else:
                                    stor7FB4[stor105.length].field_0 = 0
                                    idx = 0
                                    while (uint255(stor7FB4[stor105.length].field_0) * 0.5) + 31 / 32 > idx:
                                        stor[idx + sha3((5 * stor105.length) + 0x7fb4302e8e91f9110a6554c2c0a24601252c2a42c2220ca988efcfe39991430a)] = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor7FB4[stor105.length].field_0) == stor7FB4[stor105.length].field_1 % 128 < 32:
                                    revert with 0, 34
                                if ('cd', 68).length:
                                    stor[sha3((5 * stor105.length) + 0x7fb4302e8e91f9110a6554c2c0a24601252c2a42c2220ca988efcfe39991430a)][] = Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                else:
                                    stor7FB4[stor105.length].field_0 = 0
                                    idx = 0
                                    while stor7FB4[stor105.length].field_1 % 128 + 31 / 32 > idx:
                                        stor[idx + sha3((5 * stor105.length) + 0x7fb4302e8e91f9110a6554c2c0a24601252c2a42c2220ca988efcfe39991430a)] = 0
                                        idx = idx + 1
                                        continue 
                            uint8(stor7FB4[stor105.length].field_0) = uint8(bool(cd[100]))
                            address(stor7FB4[stor105.length].field_8) = address(cd[132])
                            Mask(88, 0, stor7FB4[stor105.length].field_168) = 0
                            Mask(80, 0, stor7FB4[stor105.length].field_176) = Mask(80, 176, bool(cd[100])) >> 176
                            stor7FB4[stor105.length] = 0
                            emit 0xcab46322: cd[36], 128, bool(cd[100]), address(cd[132]), ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], 0, msg.sender, stor105.length, address(cd[4])
            else:
                if unknown_0x5640290e(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x31ae450b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        idx = 0
                        while idx < sub_154e14fe.length:
                            mem[0] = address(sub_154e14fe[idx].field_0)
                            mem[32] = 102
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = sub_8c376f86[address(stor101[idx].field_0)]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[64] = (32 * sub_154e14fe.length) + 160
                        mem[128] = sub_154e14fe.length
                        if not sub_154e14fe.length:
                            mem[(32 * sub_154e14fe.length) + 160] = 64
                            mem[(32 * sub_154e14fe.length) + 224] = sub_154e14fe.length
                            idx = 0
                            s = 160
                            t = (32 * sub_154e14fe.length) + 256
                            while idx < sub_154e14fe.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * sub_154e14fe.length) + 192] = (96 * sub_154e14fe.length) + 96
                            mem[(64 * sub_154e14fe.length) + 256] = mem[96]
                            mem[(64 * sub_154e14fe.length) + 288 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            return memory
                              from (32 * sub_154e14fe.length) + 160
                               len (96 * sub_154e14fe.length) + (32 * mem[96]) + 128
                        mem[160] = address(sub_154e14fe.field_0)
                        idx = 160
                        s = 0
                        while (32 * sub_154e14fe.length) + 128 > idx:
                            mem[idx + 32] = address(sub_154e14fe[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(32 * sub_154e14fe.length) + 160] = 64
                        mem[(32 * sub_154e14fe.length) + 224] = sub_154e14fe.length
                        idx = 0
                        s = 160
                        t = mem[64] + 96
                        while idx < sub_154e14fe.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(32 * sub_154e14fe.length) + 192] = (32 * sub_154e14fe.length) + 96
                        mem[(64 * sub_154e14fe.length) + 256] = mem[96]
                        mem[(64 * sub_154e14fe.length) + 288 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        return memory
                          from mem[64]
                           len (64 * sub_154e14fe.length) + (32 * mem[96]) + -mem[64] + 288
                    if unknown_0x33ea3dc8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if cd[4] >= stor105.length:
                            revert with 0, 50
                        if bool(stor105[cd[4]].field_512):
                            if bool(stor105[cd[4]].field_512) == uint255(stor105[cd[4]].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor105[cd[4]].field_512):
                                if bool(stor105[cd[4]].field_512) == uint255(stor105[cd[4]].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor105[cd[4]].field_512):
                                    if 31 >= uint255(stor105[cd[4]].field_512) * 0.5:
                                        mem[160] = 256 * Mask(248, 0, stor105[cd[4]].field_520)
                                    else:
                                        mem[160] = stor[sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                        idx = 160
                                        s = 0
                                        while (uint255(stor105[cd[4]].field_512) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor105[cd[4]].field_512) == stor105[cd[4]].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor105[cd[4]].field_513 % 128:
                                    if 31 >= stor105[cd[4]].field_513 % 128:
                                        mem[160] = 256 * Mask(248, 0, stor105[cd[4]].field_520)
                                    else:
                                        mem[160] = stor[sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                        idx = 160
                                        s = 0
                                        while stor105[cd[4]].field_513 % 128 + 128 > idx:
                                            mem[idx + 32] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            return address(stor105[cd[4]].field_0), 
                                   stor105[cd[4]].field_256,
                                   Array(len=2 * Mask(256, -1, stor105[cd[4]].field_512), data=mem[160 len ceil32(uint255(stor105[cd[4]].field_512) * 0.5)]),
                                   bool(uint8(stor105[cd[4]].field_936)),
                                   stor105[cd[4]].field_1024
                        if bool(stor105[cd[4]].field_512) == stor105[cd[4]].field_513 % 128 < 32:
                            revert with 0, 34
                        if bool(stor105[cd[4]].field_512):
                            if bool(stor105[cd[4]].field_512) == uint255(stor105[cd[4]].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor105[cd[4]].field_512):
                                if 31 >= uint255(stor105[cd[4]].field_512) * 0.5:
                                    mem[160] = 256 * Mask(248, 0, stor105[cd[4]].field_520)
                                else:
                                    mem[160] = stor[sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                    idx = 160
                                    s = 0
                                    while (uint255(stor105[cd[4]].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor105[cd[4]].field_512) == stor105[cd[4]].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor105[cd[4]].field_513 % 128:
                                if 31 >= stor105[cd[4]].field_513 % 128:
                                    mem[160] = 256 * Mask(248, 0, stor105[cd[4]].field_520)
                                else:
                                    mem[160] = stor[sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_0
                                    idx = 160
                                    s = 0
                                    while stor105[cd[4]].field_513 % 128 + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((5 * cd[4]) + ('name', 'stor105', 105) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        return address(stor105[cd[4]].field_0), 
                               stor105[cd[4]].field_256,
                               Array(len=stor105[cd[4]].field_512 % 128, data=mem[160 len ceil32(stor105[cd[4]].field_513 % 128)]),
                               bool(uint8(stor105[cd[4]].field_936)),
                               stor105[cd[4]].field_1024
                    if uint32(call.func_hash) >> 224 != unknown_0x372500ab(?????):
                        require unknown_0x4e2c63fb(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        return bool(stor104[cd[4]][cd[36]])
                    require not msg.value
                    if not rewardAmount[msg.sender]:
                        revert with 0, 'TreasuryWallet: No rewards'
                    rewardAmount[msg.sender] = 0
                    if rewardAmount[msg.sender] and sub_c5d5c0ee > -1 / rewardAmount[msg.sender]:
                        revert with 0, 17
                    if rewardAmount[msg.sender] and sub_f38729cc > -1 / rewardAmount[msg.sender]:
                        revert with 0, 17
                    if rewardAmount[msg.sender] < rewardAmount[msg.sender] * sub_c5d5c0ee / 100:
                        revert with 0, 17
                    if rewardAmount[msg.sender] - (rewardAmount[msg.sender] * sub_c5d5c0ee / 100) < rewardAmount[msg.sender] * sub_f38729cc / 100:
                        revert with 0, 17
                    if rewardAmount[msg.sender] - (rewardAmount[msg.sender] * sub_c5d5c0ee / 100) - (rewardAmount[msg.sender] * sub_f38729cc / 100) <= 0:
                        revert with 0, 'TreasuryWallet: invalid withdrawal'
                    if rewardAmount[msg.sender] * sub_c5d5c0ee / 100:
                        staticcall orbitAddress.getDevWallet() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        call orbitAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), rewardAmount[msg.sender] * sub_c5d5c0ee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if rewardAmount[msg.sender] * sub_f38729cc / 100:
                        staticcall orbitAddress.getTeamWallet() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        call orbitAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), rewardAmount[msg.sender] * sub_f38729cc / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call orbitAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, rewardAmount[msg.sender] - (rewardAmount[msg.sender] * sub_c5d5c0ee / 100) - (rewardAmount[msg.sender] * sub_f38729cc / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if unknown_0x5640290e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 4).length
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        s = 160
                        idx = cd[4] + 36
                        while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                            require cd[idx] == address(cd[idx])
                            mem[s] = cd[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        require cd[36] <= test266151307()
                        require cd[36] + 35 < calldata.size
                        if ('cd', 36).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                            revert with 0, 65
                        mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                        require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                        idx = cd[36] + 36
                        s = ceil32(32 * ('cd', 4).length) + 161
                        while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                            mem[s] = cd[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if uint8(stor0.field_8):
                            if ext_code.size(this.address):
                                revert with 0, 'Initializable: contract is already initialized'
                        else:
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                        if not uint8(stor0.field_8):
                            uint16(stor0.field_0) = 257
                            revert with 0, 'Initializable: contract is not initializing'
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        if ('cd', 4).length <= 0:
                            revert with 0, 'EuropaMultiSigWallet: Admins required'
                        if cd[68] <= 0:
                            revert with 0, 'EuropaMultiSigWallet: Invalid number of required confirmations'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if not mem[(32 * idx) + 172 len 20]:
                                revert with 0, 'EuropaMultiSigWallet: Invalid admin'
                            if sub_8c376f86[mem[(32 * idx) + 172 len 20]]:
                                revert with 0, 'EuropaMultiSigWallet: Admin not unique'
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161] <= 0:
                                revert with 0, 'EuropaMultiSigWallet: Invalid score'
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            mem[32] = 102
                            sub_8c376f86[address(mem[(32 * idx) + 160])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                            sub_154e14fe.length++
                            mem[0] = 101
                            stor8FF9[stor101.length] = mem[(32 * idx) + 172 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        sub_9b2f783c = cd[68]
                        if not uint8(stor0.field_8):
                            uint8(stor0.field_8) = 0
                    else:
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                        else:
                            if unknown_0x7fcb29c9(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if not address(cd[4]):
                                    revert with 0, 'EuropaMultiSigWallet: Invalid admin'
                                if sub_8c376f86[address(cd[4])]:
                                    revert with 0, 'EuropaMultiSigWallet: Admin not unique'
                                if cd[36] <= 0:
                                    revert with 0, 'EuropaMultiSigWallet: Invalid score'
                                sub_8c376f86[address(cd[4])] = cd[36]
                                sub_154e14fe.length++
                                stor8FF9[stor101.length] = address(cd[4])
                            else:
                                require unknown_0x85170813(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 96
                                require cd[4] <= test266151307()
                                require cd[4] + 35 < calldata.size
                                if ('cd', 4).length > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                    revert with 0, 65
                                mem[128] = ('cd', 4).length
                                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                                s = 160
                                idx = cd[4] + 36
                                while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                                    require cd[idx] == address(cd[idx])
                                    mem[s] = cd[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                require cd[36] <= test266151307()
                                require cd[36] + 35 < calldata.size
                                if ('cd', 36).length > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                                    revert with 0, 65
                                mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                                idx = cd[36] + 36
                                s = ceil32(32 * ('cd', 4).length) + 161
                                while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                                    mem[s] = cd[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                                if uint8(stor0.field_8):
                                    if ext_code.size(this.address):
                                        revert with 0, 'Initializable: contract is already initialized'
                                else:
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    if ext_code.size(this.address):
                                        revert with 0, 'Initializable: contract is already initialized'
                                else:
                                    uint16(stor0.field_0) = 257
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                if not uint8(stor0.field_8):
                                    uint16(stor0.field_0) = 257
                                    revert with 0, 'Initializable: contract is not initializing'
                                owner = msg.sender
                                emit OwnershipTransferred(owner, msg.sender);
                                if ('cd', 4).length <= 0:
                                    revert with 0, 'EuropaMultiSigWallet: Admins required'
                                if cd[68] <= 0:
                                    revert with 0, 'EuropaMultiSigWallet: Invalid number of required confirmations'
                                idx = 0
                                while idx < ('cd', 4).length:
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    if not mem[(32 * idx) + 172 len 20]:
                                        revert with 0, 'EuropaMultiSigWallet: Invalid admin'
                                    if sub_8c376f86[mem[(32 * idx) + 172 len 20]]:
                                        revert with 0, 'EuropaMultiSigWallet: Admin not unique'
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161] <= 0:
                                        revert with 0, 'EuropaMultiSigWallet: Invalid score'
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    mem[32] = 102
                                    sub_8c376f86[address(mem[(32 * idx) + 160])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                                    sub_154e14fe.length++
                                    mem[0] = 101
                                    stor8FF9[stor101.length] = mem[(32 * idx) + 172 len 20]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                sub_9b2f783c = cd[68]
                                if uint8(stor0.field_8):
                                    if ext_code.size(this.address):
                                        revert with 0, 'Initializable: contract is already initialized'
                                else:
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                if not uint8(stor0.field_8):
                                    uint16(stor0.field_0) = 257
                                    revert with 0, 'Initializable: contract is not initializing'
                                owner = msg.sender
                                emit OwnershipTransferred(owner, msg.sender);
                                sub_c5d5c0ee = 10
                                sub_f38729cc = 5
}



}
