contract main {




// =====================  Runtime code  =====================


const VERSION = '', 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint256 stor1;
address governorAddress;
uint256 stor2;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint16 stor3; offset 160
address stor3;
uint256 sub_f6092809;
uint256 depositFee;
uint256 issueFee;
uint256 withdrawFee;
uint256 sub_7c0f59f4;
uint256 swapFee;
uint256 sub_b2d90ebb;
uint256 sub_eafecffa;
uint256 sub_2dd6adb5;
address sub_eaada382Address;
address treasuryAddress;
array of struct stor15;
mapping of uint256 stor16;
mapping of address sub_87cddc86;
array of struct stor18;
mapping of uint256 stor19;
array of struct stor20;
array of struct stor21;
array of struct stor22;
array of address stor97789825912453899259273410636466998099043528421815129078110847000656284369545;

function governor() payable {
    return address(governorAddress)
}

function issueFee() payable {
    return issueFee
}

function sub_2dd6adb5(?) payable {
    return sub_2dd6adb5
}

function sub_3af5be47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor16[address(arg1)])
}

function sub_4dfb6518(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor19[address(arg1)])
}

function swapFee() payable {
    return swapFee
}

function paused() payable {
    return bool(uint8(stor3.field_160))
}

function treasury() payable {
    return treasuryAddress
}

function depositFee() payable {
    return depositFee
}

function sub_7c0f59f4(?) payable {
    return sub_7c0f59f4
}

function sub_87cddc86(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_87cddc86[arg1]
}

function sub_b2d90ebb(?) payable {
    return sub_b2d90ebb
}

function withdrawFee() payable {
    return withdrawFee
}

function sub_eaada382(?) payable {
    return sub_eaada382Address
}

function sub_eafecffa(?) payable {
    return sub_eafecffa
}

function sub_ecf3a3f9(?) payable {
    return bool(uint8(stor3.field_168))
}

function sub_f6092809(?) payable {
    return sub_f6092809
}

function _fallback() payable {
    revert
}

function pause() payable {
    if uint8(stor3.field_160):
        revert with 0, 'paused'
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    uint8(stor3.field_160) = 1
    emit Paused(msg.sender);
}

function open() payable {
    if not uint8(stor3.field_168):
        revert with 0, 'not-shutdown'
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    uint8(stor3.field_168) = 0
    emit Open(msg.sender);
}

function shutdown() payable {
    if uint8(stor3.field_168):
        revert with 0, 'shutdown'
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    uint16(stor3.field_160) = 257
    emit Shutdown(msg.sender);
}

function sub_1a4660ce(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if sub_f6092809 == arg1:
        revert with 0, 'new-same-as-current'
    emit 0x66270367: sub_f6092809, arg1
    sub_f6092809 = arg1
}

function acceptGovernorship() payable {
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'not-the-proposed-governor'
    emit UpdatedGovernor(address(governorAddress), address(stor3.field_0));
    address(governorAddress) = address(stor3.field_0)
    address(stor3.field_0) = 0
}

function transferGovernorship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not arg1:
        revert with 0, 'proposed-governor-is-zero'
    address(stor3.field_0) = arg1
}

function unpause() payable {
    if not uint8(stor3.field_160):
        revert with 0, 'not-paused'
    if uint8(stor3.field_168):
        revert with 0, 'shutdown'
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    uint8(stor3.field_160) = 0
    emit Unpaused(msg.sender);
}

function updateSwapFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if arg1 > 10^18:
        revert with 0, 'max-is-100%'
    if swapFee == arg1:
        revert with 0, 'new-same-as-current'
    emit 0xc8273cce: swapFee, arg1
    swapFee = arg1
}

function sub_64831b31(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if arg1 > 10^18:
        revert with 0, 'max-is-100%'
    if sub_b2d90ebb == arg1:
        revert with 0, 'new-same-as-current'
    emit 0x457d9e7f: sub_b2d90ebb, arg1
    sub_b2d90ebb = arg1
}

function sub_84d6f1ce(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if arg1 > 10^18:
        revert with 0, 'max-is-100%'
    if sub_eafecffa == arg1:
        revert with 0, 'new-same-as-current'
    emit 0xe0dac1dc: sub_eafecffa, arg1
    sub_eafecffa = arg1
}

function sub_88156a35(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if arg1 > 10^18:
        revert with 0, 'max-is-100%'
    if sub_7c0f59f4 == arg1:
        revert with 0, 'new-same-as-current'
    emit 0xdd45ca42: sub_7c0f59f4, arg1
    sub_7c0f59f4 = arg1
}

function sub_f0c80d3b(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if arg1 > 10^18:
        revert with 0, 'max-is-100%'
    if sub_2dd6adb5 == arg1:
        revert with 0, 'new-same-as-current'
    emit 0x6d8ed4ad: sub_2dd6adb5, arg1
    sub_2dd6adb5 = arg1
}

function updateIssueFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if arg1 > 10^18:
        revert with 0, 'max-is-100%'
    if issueFee == arg1:
        revert with 0, 'new-same-as-current'
    emit 0x7aef17a0: issueFee, arg1
    issueFee = arg1
}

function updateDepositFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if arg1 > 10^18:
        revert with 0, 'max-is-100%'
    if depositFee == arg1:
        revert with 0, 'new-same-as-current'
    emit DepositFeeUpdated(depositFee, arg1);
    depositFee = arg1
}

function updateWithdrawFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if arg1 > 10^18:
        revert with 0, 'max-is-100%'
    if withdrawFee == arg1:
        revert with 0, 'new-same-as-current'
    emit WithdrawFeeUpdated(withdrawFee, arg1);
    withdrawFee = arg1
}

function sub_abc9b45e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not address(arg1):
        revert with 0, 'address-is-null'
    if sub_eaada382Address == address(arg1):
        revert with 0, 'new-same-as-current'
    emit 0xc96bca3f: sub_eaada382Address, address(arg1)
    sub_eaada382Address = address(arg1)
}

function sub_3f5fc131(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor16[address(msg.sender)]:
        revert with 0, 'caller-is-not-deposit-token'
    if stor20[address(arg1)][1][address(msg.sender)].field_0:
        revert with 0, 'deposit-token-exists'
    stor20[address(arg1)].field_0++
    stor20[address(arg1)][stor20[address(arg1)].field_0].field_0 = msg.sender
    stor20[address(arg1)][1][address(msg.sender)].field_0 = stor20[address(arg1)].field_0
}

function sub_a20f37e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not address(arg1):
        revert with 0, 'address-is-null'
    if stor19[address(arg1)]:
        revert with 0, 'synthetic-exists'
    stor18.length++
    stor18[stor18.length].field_0 = address(arg1)
    stor18[stor18.length].field_160 = 0
    stor19[address(arg1)] = stor18.length
    emit 0x6b5a83f4: address(arg1)
}

function sub_56aaee2d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not address(arg1):
        revert with 0, 'address-is-null'
    idx = 0
    while idx < stor22.length:
        mem[0] = 22
        if stor22[idx].field_0 == address(arg1):
            revert with 0, 'contract-already-added'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor22.length++
    storD833[stor22.length] = address(arg1)
    emit 0x5579b1ee: address(arg1)
}

function sub_7c7d7484(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not address(arg1):
        revert with 0, 'address-is-null'
    if treasuryAddress == address(arg1):
        revert with 0, 'new-same-as-current'
    if arg2:
        require ext_code.size(treasuryAddress)
        call treasuryAddress.migrateTo(address arg1) with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit TreasuryUpdated(treasuryAddress, address(arg1));
    treasuryAddress = address(arg1)
}

function sub_79e40cba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not address(arg1):
        revert with 0, 'address-is-null'
    if stor16[address(arg1)]:
        revert with 0, 'deposit-token-exists'
    stor15.length++
    stor15[stor15.length].field_0 = address(arg1)
    stor15[stor15.length].field_160 = 0
    stor16[address(arg1)] = stor15.length
    require ext_code.size(address(arg1))
    staticcall address(arg1).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_87cddc86[ext_call.return_data[12 len 20]] = address(arg1)
    emit DepositTokenAdded(address(arg1));
}

function getDepositTokens() payable {
    mem[64] = (32 * stor15.length) + 128
    mem[96] = stor15.length
    if not stor15.length:
        mem[(32 * stor15.length) + 128] = 32
        mem[(32 * stor15.length) + 160] = stor15.length
        idx = 0
        s = (32 * stor15.length) + 192
        t = 128
        while idx < stor15.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor15.length) + 128
           len (96 * stor15.length) + 64
    mem[128] = uint256(stor15.field_0)
    idx = 128
    s = 0
    while (32 * stor15.length) + 96 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor15.length) + 128] = 32
    mem[(32 * stor15.length) + 160] = stor15.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor15.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor15.length) + -mem[64] + 192
}

function getSyntheticTokens() payable {
    mem[64] = (32 * stor18.length) + 128
    mem[96] = stor18.length
    if not stor18.length:
        mem[(32 * stor18.length) + 128] = 32
        mem[(32 * stor18.length) + 160] = stor18.length
        idx = 0
        s = (32 * stor18.length) + 192
        t = 128
        while idx < stor18.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor18.length) + 128
           len (96 * stor18.length) + 64
    mem[128] = uint256(stor18.field_0)
    idx = 128
    s = 0
    while (32 * stor18.length) + 96 > idx:
        mem[idx + 32] = stor18[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor18.length) + 128] = 32
    mem[(32 * stor18.length) + 160] = stor18.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor18.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor18.length) + -mem[64] + 192
}

function getRewardsDistributors() payable {
    mem[64] = (32 * stor22.length) + 128
    mem[96] = stor22.length
    if not stor22.length:
        mem[(32 * stor22.length) + 128] = 32
        mem[(32 * stor22.length) + 160] = stor22.length
        idx = 0
        s = (32 * stor22.length) + 192
        t = 128
        while idx < stor22.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor22.length) + 128
           len (96 * stor22.length) + 64
    mem[128] = address(stor22.field_0)
    idx = 128
    s = 0
    while (32 * stor22.length) + 96 > idx:
        mem[idx + 32] = stor22[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor22.length) + 128] = 32
    mem[(32 * stor22.length) + 160] = stor22.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor22.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor22.length) + -mem[64] + 192
}

function sub_770b69b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(msg.sender)
    staticcall msg.sender.syntheticToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not stor19[ext_call.return_data[12 len 20]]:
        revert with 0, 'caller-is-not-debt-token'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).debtToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'caller-is-not-debt-token'
    if stor21[address(arg1)][1][address(msg.sender)].field_0:
        revert with 0, 'debt-token-exists'
    stor21[address(arg1)].field_0++
    stor21[address(arg1)][stor21[address(arg1)].field_0].field_0 = msg.sender
    stor21[address(arg1)][1][address(msg.sender)].field_0 = stor21[address(arg1)].field_0
}

function sub_275038d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor16[address(msg.sender)]:
        revert with 0, 'caller-is-not-deposit-token'
    if not stor20[address(arg1)][1][address(msg.sender)].field_0:
        revert with 0, 'deposit-token-doesnt-exist'
    if stor20[address(arg1)][1][address(msg.sender)].field_0 < 1:
        revert with 0, 17
    if stor20[address(arg1)].field_0 < 1:
        revert with 0, 17
    if stor20[address(arg1)].field_0 - 1 != stor20[address(arg1)][1][address(msg.sender)].field_0 - 1:
        if stor20[address(arg1)].field_0 - 1 >= stor20[address(arg1)].field_0:
            revert with 0, 50
        if stor20[address(arg1)][1][address(msg.sender)].field_0 - 1 >= stor20[address(arg1)].field_0:
            revert with 0, 50
        stor20[address(arg1)][stor20[address(arg1)][1][address(msg.sender)].field_0].field_0 = stor20[address(arg1)][stor20[address(arg1)].field_0].field_0
        stor20[address(arg1)][1][stor20[address(arg1)][stor20[address(arg1)].field_0].field_0].field_0 = stor20[address(arg1)][1][address(msg.sender)].field_0
    if not stor20[address(arg1)].field_0:
        revert with 0, 49
    stor20[address(arg1)][stor20[address(arg1)].field_0].field_0 = 0
    stor20[address(arg1)].field_0--
    stor20[address(arg1)][1][address(msg.sender)].field_0 = 0
}

function sub_7d355163(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = (32 * stor20[address(arg1)].field_0) + 128
    mem[96] = stor20[address(arg1)].field_0
    if not stor20[address(arg1)].field_0:
        mem[(32 * stor20[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor20[address(arg1)].field_0) + 160] = stor20[address(arg1)].field_0
        idx = 0
        s = (32 * stor20[address(arg1)].field_0) + 192
        t = 128
        while idx < stor20[address(arg1)].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor20[address(arg1)].field_0) + 128
           len (96 * stor20[address(arg1)].field_0) + 64
    mem[128] = stor20[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor20[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor20[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor20[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor20[address(arg1)].field_0) + 160] = stor20[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor20[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor20[address(arg1)].field_0) + -mem[64] + 192
}

function sub_d176e05f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = (32 * stor21[address(arg1)].field_0) + 128
    mem[96] = stor21[address(arg1)].field_0
    if not stor21[address(arg1)].field_0:
        mem[(32 * stor21[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor21[address(arg1)].field_0) + 160] = stor21[address(arg1)].field_0
        idx = 0
        s = (32 * stor21[address(arg1)].field_0) + 192
        t = 128
        while idx < stor21[address(arg1)].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor21[address(arg1)].field_0) + 128
           len (96 * stor21[address(arg1)].field_0) + 64
    mem[128] = stor21[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor21[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor21[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor21[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor21[address(arg1)].field_0) + 160] = stor21[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor21[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor21[address(arg1)].field_0) + -mem[64] + 192
}

function sub_dbe466b1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not stor16[address(arg1)]:
        revert with 0, 'collateral-inexistent'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'supply-gt-0'
    if not stor16[address(arg1)]:
        revert with 0, 'deposit-token-doesnt-exist'
    if stor16[address(arg1)] < 1:
        revert with 0, 17
    if stor15.length < 1:
        revert with 0, 17
    if stor15.length - 1 != stor16[address(arg1)] - 1:
        if stor15.length - 1 >= stor15.length:
            revert with 0, 50
        if stor16[address(arg1)] - 1 >= stor15.length:
            revert with 0, 50
        stor15[stor16[address(arg1)]].field_0 = stor15[stor15.length].field_0
        stor16[stor15[stor15.length].field_0] = stor16[address(arg1)]
    if not stor15.length:
        revert with 0, 49
    stor15[stor15.length].field_0 = 0
    stor15.length--
    stor16[address(arg1)] = 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_87cddc86[ext_call.return_data[12 len 20]] = 0
    emit DepositTokenRemoved(address(arg1));
}

function sub_f36c7d98(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not stor19[address(arg1)]:
        revert with 0, 'synthetic-inexistent'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'supply-gt-0'
    require ext_code.size(address(arg1))
    staticcall address(arg1).debtToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'synthetic-with-debt-supply'
    if not stor19[address(arg1)]:
        revert with 0, 'synthetic-doesnt-exist'
    if stor19[address(arg1)] < 1:
        revert with 0, 17
    if stor18.length < 1:
        revert with 0, 17
    if stor18.length - 1 != stor19[address(arg1)] - 1:
        if stor18.length - 1 >= stor18.length:
            revert with 0, 50
        if stor19[address(arg1)] - 1 >= stor18.length:
            revert with 0, 50
        stor18[stor19[address(arg1)]].field_0 = stor18[stor18.length].field_0
        stor19[stor18[stor18.length].field_0] = stor19[address(arg1)]
    if not stor18.length:
        revert with 0, 49
    stor18[stor18.length].field_0 = 0
    stor18.length--
    stor19[address(arg1)] = 0
    emit 0xc6410e68: address(arg1)
}

function sub_75c6f8ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(msg.sender)
    staticcall msg.sender.syntheticToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not stor19[ext_call.return_data[12 len 20]]:
        revert with 0, 'caller-is-not-debt-token'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).debtToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'caller-is-not-debt-token'
    if not stor21[address(arg1)][1][address(msg.sender)].field_0:
        revert with 0, 'debt-token-doesnt-exist'
    if stor21[address(arg1)][1][address(msg.sender)].field_0 < 1:
        revert with 0, 17
    if stor21[address(arg1)].field_0 < 1:
        revert with 0, 17
    if stor21[address(arg1)].field_0 - 1 != stor21[address(arg1)][1][address(msg.sender)].field_0 - 1:
        if stor21[address(arg1)].field_0 - 1 >= stor21[address(arg1)].field_0:
            revert with 0, 50
        if stor21[address(arg1)][1][address(msg.sender)].field_0 - 1 >= stor21[address(arg1)].field_0:
            revert with 0, 50
        stor21[address(arg1)][stor21[address(arg1)][1][address(msg.sender)].field_0].field_0 = stor21[address(arg1)][stor21[address(arg1)].field_0].field_0
        stor21[address(arg1)][1][stor21[address(arg1)][stor21[address(arg1)].field_0].field_0].field_0 = stor21[address(arg1)][1][address(msg.sender)].field_0
    if not stor21[address(arg1)].field_0:
        revert with 0, 49
    stor21[address(arg1)][stor21[address(arg1)].field_0].field_0 = 0
    stor21[address(arg1)].field_0--
    stor21[address(arg1)][1][address(msg.sender)].field_0 = 0
}

function depositOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 20
    idx = 0
    s = 0
    while idx < stor20[address(arg1)].field_0:
        mem[32] = 20
        if idx >= stor20[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 20)
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor20[address(arg1)][idx].field_0)
        staticcall stor20[address(arg1)][idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_24]
        mem[mem[64] + 4] = stor20[address(arg1)][idx].field_0
        mem[mem[64] + 36] = _25
        require ext_code.size(sub_eaada382Address)
        staticcall sub_eaada382Address.0xee957996 with:
                gas gas_remaining wei
               args stor20[address(arg1)][idx].field_0, _25
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_28]
        if s > !mem[_28]:
            revert with 0, 17
        require ext_code.size(stor20[address(arg1)][idx].field_0)
        staticcall stor20[address(arg1)][idx].field_0.collateralizationRatio() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _32 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _29:
            if mem[_32]:
                if _29 and mem[_32] > -1 / _29:
                    revert with 0, 17
                if _29 * mem[_32] > -500000000000000001:
                    revert with 0, 17
                if 0 > !((_29 * mem[_32]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + _29
        continue 
    return s, 0
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg2:
        revert with 0, 'treasury-is-null'
    if not arg1:
        revert with 0, 'oracle-is-null'
    if uint8(stor0.field_8):
        stor1 = 1
        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
        emit UpdatedGovernor(0, msg.sender);
        sub_eaada382Address = arg1
        treasuryAddress = arg2
        sub_7c0f59f4 = 3 * 10^15
        swapFee = 6 * 10^15
        sub_b2d90ebb = 10^17
        sub_eafecffa = 8 * 10^16
        sub_2dd6adb5 = 10^18
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor1 = 1
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            emit UpdatedGovernor(0, msg.sender);
            sub_eaada382Address = arg1
            treasuryAddress = arg2
            sub_7c0f59f4 = 3 * 10^15
            swapFee = 6 * 10^15
            sub_b2d90ebb = 10^17
            sub_eafecffa = 8 * 10^16
            sub_2dd6adb5 = 10^18
        else:
            uint16(stor0.field_0) = 257
            stor1 = 1
            uint8(stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                emit UpdatedGovernor(0, msg.sender);
                sub_eaada382Address = arg1
                treasuryAddress = arg2
                sub_7c0f59f4 = 3 * 10^15
                swapFee = 6 * 10^15
                sub_b2d90ebb = 10^17
                sub_eafecffa = 8 * 10^16
                sub_2dd6adb5 = 10^18
            else:
                uint16(stor0.field_0) = 257
                uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                emit UpdatedGovernor(0, msg.sender);
                uint8(stor0.field_8) = 0
                sub_eaada382Address = arg1
                treasuryAddress = arg2
                sub_7c0f59f4 = 3 * 10^15
                swapFee = 6 * 10^15
                sub_b2d90ebb = 10^17
                sub_eafecffa = 8 * 10^16
                sub_2dd6adb5 = 10^18
                uint8(stor0.field_8) = 0
}

function debtOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 21
    idx = 0
    s = 0
    while idx < stor21[address(arg1)].field_0:
        mem[32] = 21
        if idx >= stor21[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 21)
        require ext_code.size(stor21[address(arg1)][idx].field_0)
        staticcall stor21[address(arg1)][idx].field_0.syntheticToken() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_24]
        require mem[_24] == mem[_24 + 12 len 20]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor21[address(arg1)][idx].field_0)
        staticcall stor21[address(arg1)][idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_28]
        mem[mem[64] + 4] = address(_25)
        mem[mem[64] + 36] = _29
        require ext_code.size(sub_eaada382Address)
        staticcall sub_eaada382Address.0xee957996 with:
                gas gas_remaining wei
               args address(_25), _29
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _32 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_32]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_32]
        continue 
    return (s * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0)
}

function swap(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor3.field_168):
        revert with 0, 'shutdown'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor19[address(arg1)]:
        revert with 0, 'synthetic-inexistent'
    if not stor19[address(arg2)]:
        revert with 0, 'synthetic-inexistent'
    require ext_code.size(arg2)
    staticcall arg2.isActive() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'synthetic-inactive'
    require ext_code.size(arg1)
    call arg1.accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 <= 0:
        revert with 0, 'amount-in-is-0'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'amount-in-gt-balance'
    require ext_code.size(arg1)
    call arg1.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_eaada382Address)
    staticcall sub_eaada382Address.0x248391ff with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if swapFee <= 0:
        require ext_code.size(arg2)
        call arg2.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xafd74f00: arg3, ext_call.return_data[0], 0, msg.sender, arg1, arg2
        stor1 = 1
        return ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(arg2)
        call arg2.0x40c10f19 with:
             gas gas_remaining wei
            args treasuryAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        require ext_code.size(arg2)
        call arg2.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xafd74f00: arg3, ext_call.return_data[0], 0, msg.sender, arg1, arg2
        stor1 = 1
        return ext_call.return_data[0]
    if not swapFee:
        require ext_code.size(arg2)
        call arg2.0x40c10f19 with:
             gas gas_remaining wei
            args treasuryAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        require ext_code.size(arg2)
        call arg2.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xafd74f00: arg3, ext_call.return_data[0], 0, msg.sender, arg1, arg2
        stor1 = 1
        return ext_call.return_data[0]
    if ext_call.return_data[0] and swapFee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * swapFee > -500000000000000001:
        revert with 0, 17
    require ext_code.size(arg2)
    call arg2.0x40c10f19 with:
         gas gas_remaining wei
        args treasuryAddress, (ext_call.return_data[0] * swapFee) + 5 * 10^17 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] < (ext_call.return_data[0] * swapFee) + 5 * 10^17 / 10^18:
        revert with 0, 17
    require ext_code.size(arg2)
    call arg2.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * swapFee) + 5 * 10^17 / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xafd74f00: arg3, ext_call.return_data[0] - ((ext_call.return_data[0] * swapFee) + 5 * 10^17 / 10^18), (ext_call.return_data[0] * swapFee) + 5 * 10^17 / 10^18, msg.sender, arg1, arg2
    stor1 = 1
    return (ext_call.return_data[0] - ((ext_call.return_data[0] * swapFee) + 5 * 10^17 / 10^18))
}

function sub_dde3ab95(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 21
    idx = 0
    s = 0
    while idx < stor21[address(arg1)].field_0:
        mem[32] = 21
        if idx >= stor21[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 21)
        require ext_code.size(stor21[address(arg1)][idx].field_0)
        staticcall stor21[address(arg1)][idx].field_0.syntheticToken() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _38 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _40 = mem[_38]
        require mem[_38] == mem[_38 + 12 len 20]
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(stor21[address(arg1)][idx].field_0)
        staticcall stor21[address(arg1)][idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _51 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _54 = mem[_51]
        mem[mem[64] + 4] = address(_40)
        mem[mem[64] + 36] = _54
        require ext_code.size(sub_eaada382Address)
        staticcall sub_eaada382Address.0xee957996 with:
                gas gas_remaining wei
               args address(_40), _54
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_59]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_59]
        continue 
    mem[0] = address(arg1)
    mem[32] = 20
    idx = 0
    t = 0
    while idx < stor20[address(arg1)].field_0:
        mem[32] = 20
        if idx >= stor20[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 20)
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(stor20[address(arg1)][idx].field_0)
        staticcall stor20[address(arg1)][idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _74 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _75 = mem[_74]
        mem[mem[64] + 4] = stor20[address(arg1)][idx].field_0
        mem[mem[64] + 36] = _75
        require ext_code.size(sub_eaada382Address)
        staticcall sub_eaada382Address.0xee957996 with:
                gas gas_remaining wei
               args stor20[address(arg1)][idx].field_0, _75
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _79 = mem[_78]
        if t > !mem[_78]:
            revert with 0, 17
        require ext_code.size(stor20[address(arg1)][idx].field_0)
        staticcall stor20[address(arg1)][idx].field_0.collateralizationRatio() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _82 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _79:
            if mem[_82]:
                if _79 and mem[_82] > -1 / _79:
                    revert with 0, 17
                if _79 * mem[_82] > -500000000000000001:
                    revert with 0, 17
                if 0 > !((_79 * mem[_82]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + _79
        continue 
    if s * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 >= 0:
        return s * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 <= 0, 
               t,
               s * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0,
               0,
               0
    if 0 < s * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0:
        revert with 0, 17
    return s * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 <= 0, 
           t,
           s * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0,
           0,
           -1 * s * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0 * stor21[address(arg1)].field_0
}

function sub_3de2f6b2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if uint8(stor3.field_168):
        revert with 0, 'shutdown'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor16[address(arg4)]:
        revert with 0, 'collateral-inexistent'
    if arg3 <= 0:
        revert with 0, 'amount-is-zero'
    if msg.sender == address(arg2):
        revert with 0, 'can-not-liquidate-own-position'
    require ext_code.size(address(arg1))
    call address(arg1).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    staticcall address(arg1).debtToken() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(arg2)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if arg3 and 10^18 > -1 / arg3:
        revert with 0, 17
    if 10^18 * arg3 > !(ext_call.return_data[0] / 2):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > sub_2dd6adb5:
        revert with 0, 'amount-gt-max-liquidable'
    if not sub_f6092809:
        mem[0] = address(arg2)
        mem[32] = 21
        idx = 0
        s = 0
        while idx < stor21[address(arg2)].field_0:
            mem[32] = 21
            if idx >= stor21[address(arg2)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg2), 21)
            require ext_code.size(stor21[address(arg2)][idx].field_0)
            staticcall stor21[address(arg2)][idx].field_0.syntheticToken() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _149 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _153 = mem[_149]
            require mem[_149] == mem[_149 + 12 len 20]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(stor21[address(arg2)][idx].field_0)
            staticcall stor21[address(arg2)][idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _216 = mem[_203]
            mem[mem[64] + 4] = address(_153)
            mem[mem[64] + 36] = _216
            require ext_code.size(sub_eaada382Address)
            staticcall sub_eaada382Address.0xee957996 with:
                    gas gas_remaining wei
                   args address(_153), _216
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _236 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_236]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_236]
            continue 
        mem[0] = address(arg2)
        mem[32] = 20
        idx = 0
        t = 0
        while idx < stor20[address(arg2)].field_0:
            mem[32] = 20
            if idx >= stor20[address(arg2)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg2), 20)
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(stor20[address(arg2)][idx].field_0)
            staticcall stor20[address(arg2)][idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1660 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1669 = mem[_1660]
            mem[mem[64] + 4] = stor20[address(arg2)][idx].field_0
            mem[mem[64] + 36] = _1669
            require ext_code.size(sub_eaada382Address)
            staticcall sub_eaada382Address.0xee957996 with:
                    gas gas_remaining wei
                   args stor20[address(arg2)][idx].field_0, _1669
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1685 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1688 = mem[_1685]
            if t > !mem[_1685]:
                revert with 0, 17
            require ext_code.size(stor20[address(arg2)][idx].field_0)
            staticcall stor20[address(arg2)][idx].field_0.collateralizationRatio() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1697 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _1688:
                if mem[_1697]:
                    if _1688 and mem[_1697] > -1 / _1688:
                        revert with 0, 17
                    if _1688 * mem[_1697] > -500000000000000001:
                        revert with 0, 17
                    if 0 > !((_1688 * mem[_1697]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + _1688
            continue 
        if s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 >= 0:
            if s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 <= 0:
                revert with 0, 'position-is-healthy'
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = address(arg4)
            mem[mem[64] + 68] = arg3
            require ext_code.size(sub_eaada382Address)
            staticcall sub_eaada382Address.0x248391ff with:
                    gas gas_remaining wei
                   args address(arg1), address(arg4), arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1659 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1668 = mem[_1659]
            if sub_eafecffa <= 0:
                if 10^18 > !sub_b2d90ebb:
                    revert with 0, 17
                if not mem[_1659]:
                    mem[mem[64] + 4] = address(arg2)
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1723 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if 0 > mem[_1723]:
                        revert with 0, 'amount-too-high'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3
                    require ext_code.size(address(arg1))
                    call address(arg1).burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).debtToken() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1939 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1939] == mem[_1939 + 12 len 20]
                    require ext_code.size(mem[_1939 + 12 len 20])
                    call mem[_1939 + 12 len 20].burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg4))
                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                else:
                    if not sub_b2d90ebb + 10^18:
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(address(arg4))
                        staticcall address(arg4).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1733 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 0 > mem[_1733]:
                            revert with 0, 'amount-too-high'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(arg1))
                        call address(arg1).burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).debtToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1977 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1977] == mem[_1977 + 12 len 20]
                        require ext_code.size(mem[_1977 + 12 len 20])
                        call mem[_1977 + 12 len 20].burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg4))
                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if mem[_1659] and sub_b2d90ebb + 10^18 > -1 / mem[_1659]:
                            revert with 0, 17
                        if (10^18 * mem[_1659]) + (sub_b2d90ebb * mem[_1659]) > -500000000000000001:
                            revert with 0, 17
                        if 0 > !((10^18 * mem[_1659]) + (sub_b2d90ebb * mem[_1659]) + 5 * 10^17 / 10^18):
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(address(arg4))
                        staticcall address(arg4).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2013 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18 > mem[_2013]:
                            revert with 0, 'amount-too-high'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(arg1))
                        call address(arg1).burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).debtToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2369 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2369] == mem[_2369 + 12 len 20]
                        require ext_code.size(mem[_2369 + 12 len 20])
                        call mem[_2369 + 12 len 20].burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg4))
                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), msg.sender, (10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xe1c3870e: arg3, (10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
            else:
                if not mem[_1659]:
                    if 10^18 > !sub_b2d90ebb:
                        revert with 0, 17
                    if not mem[_1659]:
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(address(arg4))
                        staticcall address(arg4).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1778 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 0 > mem[_1778]:
                            revert with 0, 'amount-too-high'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(arg1))
                        call address(arg1).burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).debtToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2082 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2082] == mem[_2082 + 12 len 20]
                        require ext_code.size(mem[_2082 + 12 len 20])
                        call mem[_2082 + 12 len 20].burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg4))
                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if not sub_b2d90ebb + 10^18:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1799 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1799]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2121 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2121] == mem[_2121 + 12 len 20]
                            require ext_code.size(mem[_2121 + 12 len 20])
                            call mem[_2121 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if mem[_1659] and sub_b2d90ebb + 10^18 > -1 / mem[_1659]:
                                revert with 0, 17
                            if (10^18 * mem[_1659]) + (sub_b2d90ebb * mem[_1659]) > -500000000000000001:
                                revert with 0, 17
                            if 0 > !((10^18 * mem[_1659]) + (sub_b2d90ebb * mem[_1659]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2154 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18 > mem[_2154]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2540 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2540] == mem[_2540 + 12 len 20]
                            require ext_code.size(mem[_2540 + 12 len 20])
                            call mem[_2540 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, (10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, (10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                else:
                    if not sub_eafecffa:
                        if 10^18 > !sub_b2d90ebb:
                            revert with 0, 17
                        if not mem[_1659]:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1800 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1800]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2123 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2123] == mem[_2123 + 12 len 20]
                            require ext_code.size(mem[_2123 + 12 len 20])
                            call mem[_2123 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if not sub_b2d90ebb + 10^18:
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1825 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 > mem[_1825]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2156 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2156] == mem[_2156 + 12 len 20]
                                require ext_code.size(mem[_2156 + 12 len 20])
                                call mem[_2156 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                            else:
                                if mem[_1659] and sub_b2d90ebb + 10^18 > -1 / mem[_1659]:
                                    revert with 0, 17
                                if (10^18 * mem[_1659]) + (sub_b2d90ebb * mem[_1659]) > -500000000000000001:
                                    revert with 0, 17
                                if 0 > !((10^18 * mem[_1659]) + (sub_b2d90ebb * mem[_1659]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2193 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18 > mem[_2193]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2587 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2587] == mem[_2587 + 12 len 20]
                                require ext_code.size(mem[_2587 + 12 len 20])
                                call mem[_2587 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, (10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if mem[_1659] and sub_eafecffa > -1 / mem[_1659]:
                            revert with 0, 17
                        if mem[_1659] * sub_eafecffa > -500000000000000001:
                            revert with 0, 17
                        if 10^18 > !sub_b2d90ebb:
                            revert with 0, 17
                        if not mem[_1659]:
                            if (mem[_1659] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2155 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2155]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2541 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2541] == mem[_2541 + 12 len 20]
                            require ext_code.size(mem[_2541 + 12 len 20])
                            call mem[_2541 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), treasuryAddress, (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                        else:
                            if not sub_b2d90ebb + 10^18:
                                if (mem[_1659] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2191 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2191]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2585 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2585] == mem[_2585 + 12 len 20]
                                require ext_code.size(mem[_2585 + 12 len 20])
                                call mem[_2585 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), treasuryAddress, (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                            else:
                                if mem[_1659] and sub_b2d90ebb + 10^18 > -1 / mem[_1659]:
                                    revert with 0, 17
                                if (10^18 * mem[_1659]) + (sub_b2d90ebb * mem[_1659]) > -500000000000000001:
                                    revert with 0, 17
                                if (mem[_1659] * sub_eafecffa) + 5 * 10^17 / 10^18 > !((10^18 * mem[_1659]) + (sub_b2d90ebb * mem[_1659]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2621 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if ((_1668 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18) > mem[_2621]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2861 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2861] == mem[_2861 + 12 len 20]
                                require ext_code.size(mem[_2861 + 12 len 20])
                                call mem[_2861 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, (10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), treasuryAddress, (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, ((_1668 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1668) + (sub_b2d90ebb * _1668) + 5 * 10^17 / 10^18), (_1668 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
        else:
            if 0 < s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0:
                revert with 0, 17
            if s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 <= 0:
                revert with 0, 'position-is-healthy'
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = address(arg4)
            mem[mem[64] + 68] = arg3
            require ext_code.size(sub_eaada382Address)
            staticcall sub_eaada382Address.0x248391ff with:
                    gas gas_remaining wei
                   args address(arg1), address(arg4), arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1667 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1679 = mem[_1667]
            if sub_eafecffa <= 0:
                if 10^18 > !sub_b2d90ebb:
                    revert with 0, 17
                if not mem[_1667]:
                    mem[mem[64] + 4] = address(arg2)
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1743 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if 0 > mem[_1743]:
                        revert with 0, 'amount-too-high'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3
                    require ext_code.size(address(arg1))
                    call address(arg1).burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).debtToken() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2005 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2005] == mem[_2005 + 12 len 20]
                    require ext_code.size(mem[_2005 + 12 len 20])
                    call mem[_2005 + 12 len 20].burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg4))
                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                else:
                    if not sub_b2d90ebb + 10^18:
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(address(arg4))
                        staticcall address(arg4).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1759 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 0 > mem[_1759]:
                            revert with 0, 'amount-too-high'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(arg1))
                        call address(arg1).burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).debtToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2045 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2045] == mem[_2045 + 12 len 20]
                        require ext_code.size(mem[_2045 + 12 len 20])
                        call mem[_2045 + 12 len 20].burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg4))
                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if mem[_1667] and sub_b2d90ebb + 10^18 > -1 / mem[_1667]:
                            revert with 0, 17
                        if (10^18 * mem[_1667]) + (sub_b2d90ebb * mem[_1667]) > -500000000000000001:
                            revert with 0, 17
                        if 0 > !((10^18 * mem[_1667]) + (sub_b2d90ebb * mem[_1667]) + 5 * 10^17 / 10^18):
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(address(arg4))
                        staticcall address(arg4).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2081 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18 > mem[_2081]:
                            revert with 0, 'amount-too-high'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(arg1))
                        call address(arg1).burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).debtToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2451 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2451] == mem[_2451 + 12 len 20]
                        require ext_code.size(mem[_2451 + 12 len 20])
                        call mem[_2451 + 12 len 20].burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg4))
                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), msg.sender, (10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xe1c3870e: arg3, (10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
            else:
                if not mem[_1667]:
                    if 10^18 > !sub_b2d90ebb:
                        revert with 0, 17
                    if not mem[_1667]:
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(address(arg4))
                        staticcall address(arg4).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1820 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 0 > mem[_1820]:
                            revert with 0, 'amount-too-high'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(arg1))
                        call address(arg1).burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).debtToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2147 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2147] == mem[_2147 + 12 len 20]
                        require ext_code.size(mem[_2147 + 12 len 20])
                        call mem[_2147 + 12 len 20].burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg4))
                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if not sub_b2d90ebb + 10^18:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1844 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1844]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2186 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2186] == mem[_2186 + 12 len 20]
                            require ext_code.size(mem[_2186 + 12 len 20])
                            call mem[_2186 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if mem[_1667] and sub_b2d90ebb + 10^18 > -1 / mem[_1667]:
                                revert with 0, 17
                            if (10^18 * mem[_1667]) + (sub_b2d90ebb * mem[_1667]) > -500000000000000001:
                                revert with 0, 17
                            if 0 > !((10^18 * mem[_1667]) + (sub_b2d90ebb * mem[_1667]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2217 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18 > mem[_2217]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2613 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2613] == mem[_2613 + 12 len 20]
                            require ext_code.size(mem[_2613 + 12 len 20])
                            call mem[_2613 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, (10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, (10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                else:
                    if not sub_eafecffa:
                        if 10^18 > !sub_b2d90ebb:
                            revert with 0, 17
                        if not mem[_1667]:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1845 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1845]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2188 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2188] == mem[_2188 + 12 len 20]
                            require ext_code.size(mem[_2188 + 12 len 20])
                            call mem[_2188 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if not sub_b2d90ebb + 10^18:
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1869 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 > mem[_1869]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2219 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2219] == mem[_2219 + 12 len 20]
                                require ext_code.size(mem[_2219 + 12 len 20])
                                call mem[_2219 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                            else:
                                if mem[_1667] and sub_b2d90ebb + 10^18 > -1 / mem[_1667]:
                                    revert with 0, 17
                                if (10^18 * mem[_1667]) + (sub_b2d90ebb * mem[_1667]) > -500000000000000001:
                                    revert with 0, 17
                                if 0 > !((10^18 * mem[_1667]) + (sub_b2d90ebb * mem[_1667]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2255 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18 > mem[_2255]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2651 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2651] == mem[_2651 + 12 len 20]
                                require ext_code.size(mem[_2651 + 12 len 20])
                                call mem[_2651 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, (10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if mem[_1667] and sub_eafecffa > -1 / mem[_1667]:
                            revert with 0, 17
                        if mem[_1667] * sub_eafecffa > -500000000000000001:
                            revert with 0, 17
                        if 10^18 > !sub_b2d90ebb:
                            revert with 0, 17
                        if not mem[_1667]:
                            if (mem[_1667] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2218 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2218]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2614 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2614] == mem[_2614 + 12 len 20]
                            require ext_code.size(mem[_2614 + 12 len 20])
                            call mem[_2614 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), treasuryAddress, (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                        else:
                            if not sub_b2d90ebb + 10^18:
                                if (mem[_1667] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2253 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2253]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2649 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2649] == mem[_2649 + 12 len 20]
                                require ext_code.size(mem[_2649 + 12 len 20])
                                call mem[_2649 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), treasuryAddress, (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                            else:
                                if mem[_1667] and sub_b2d90ebb + 10^18 > -1 / mem[_1667]:
                                    revert with 0, 17
                                if (10^18 * mem[_1667]) + (sub_b2d90ebb * mem[_1667]) > -500000000000000001:
                                    revert with 0, 17
                                if (mem[_1667] * sub_eafecffa) + 5 * 10^17 / 10^18 > !((10^18 * mem[_1667]) + (sub_b2d90ebb * mem[_1667]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2674 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if ((_1679 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18) > mem[_2674]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2896 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2896] == mem[_2896 + 12 len 20]
                                require ext_code.size(mem[_2896 + 12 len 20])
                                call mem[_2896 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, (10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), treasuryAddress, (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, ((_1679 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1679) + (sub_b2d90ebb * _1679) + 5 * 10^17 / 10^18), (_1679 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
    else:
        require ext_code.size(address(arg1))
        staticcall address(arg1).debtToken() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 100] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg2)
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 17
        mem[(6 * ceil32(return_data.size)) + 100] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] - arg3
        require ext_code.size(sub_eaada382Address)
        staticcall sub_eaada382Address.0xee957996 with:
                gas gas_remaining wei
               args address(arg1), ext_call.return_data[0] - arg3
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[0] = address(arg2)
            mem[32] = 21
            idx = 0
            s = 0
            while idx < stor21[address(arg2)].field_0:
                mem[32] = 21
                if idx >= stor21[address(arg2)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg2), 21)
                require ext_code.size(stor21[address(arg2)][idx].field_0)
                staticcall stor21[address(arg2)][idx].field_0.syntheticToken() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _150 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _155 = mem[_150]
                require mem[_150] == mem[_150 + 12 len 20]
                mem[mem[64] + 4] = address(arg2)
                require ext_code.size(stor21[address(arg2)][idx].field_0)
                staticcall stor21[address(arg2)][idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _204 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _218 = mem[_204]
                mem[mem[64] + 4] = address(_155)
                mem[mem[64] + 36] = _218
                require ext_code.size(sub_eaada382Address)
                staticcall sub_eaada382Address.0xee957996 with:
                        gas gas_remaining wei
                       args address(_155), _218
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_237]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_237]
                continue 
            mem[0] = address(arg2)
            mem[32] = 20
            idx = 0
            t = 0
            while idx < stor20[address(arg2)].field_0:
                mem[32] = 20
                if idx >= stor20[address(arg2)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg2), 20)
                mem[mem[64] + 4] = address(arg2)
                require ext_code.size(stor20[address(arg2)][idx].field_0)
                staticcall stor20[address(arg2)][idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1663 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1672 = mem[_1663]
                mem[mem[64] + 4] = stor20[address(arg2)][idx].field_0
                mem[mem[64] + 36] = _1672
                require ext_code.size(sub_eaada382Address)
                staticcall sub_eaada382Address.0xee957996 with:
                        gas gas_remaining wei
                       args stor20[address(arg2)][idx].field_0, _1672
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1686 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1689 = mem[_1686]
                if t > !mem[_1686]:
                    revert with 0, 17
                require ext_code.size(stor20[address(arg2)][idx].field_0)
                staticcall stor20[address(arg2)][idx].field_0.collateralizationRatio() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1698 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _1689:
                    if mem[_1698]:
                        if _1689 and mem[_1698] > -1 / _1689:
                            revert with 0, 17
                        if _1689 * mem[_1698] > -500000000000000001:
                            revert with 0, 17
                        if 0 > !((_1689 * mem[_1698]) + 5 * 10^17 / 10^18):
                            revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + _1689
                continue 
            if s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 >= 0:
                if s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 <= 0:
                    revert with 0, 'position-is-healthy'
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = arg3
                require ext_code.size(sub_eaada382Address)
                staticcall sub_eaada382Address.0x248391ff with:
                        gas gas_remaining wei
                       args address(arg1), address(arg4), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1662 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1671 = mem[_1662]
                if sub_eafecffa <= 0:
                    if 10^18 > !sub_b2d90ebb:
                        revert with 0, 17
                    if not mem[_1662]:
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(address(arg4))
                        staticcall address(arg4).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1726 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 0 > mem[_1726]:
                            revert with 0, 'amount-too-high'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(arg1))
                        call address(arg1).burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).debtToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1952 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1952] == mem[_1952 + 12 len 20]
                        require ext_code.size(mem[_1952 + 12 len 20])
                        call mem[_1952 + 12 len 20].burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg4))
                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if not sub_b2d90ebb + 10^18:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1737 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1737]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1988 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1988] == mem[_1988 + 12 len 20]
                            require ext_code.size(mem[_1988 + 12 len 20])
                            call mem[_1988 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if mem[_1662] and sub_b2d90ebb + 10^18 > -1 / mem[_1662]:
                                revert with 0, 17
                            if (10^18 * mem[_1662]) + (sub_b2d90ebb * mem[_1662]) > -500000000000000001:
                                revert with 0, 17
                            if 0 > !((10^18 * mem[_1662]) + (sub_b2d90ebb * mem[_1662]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2027 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18 > mem[_2027]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2385] == mem[_2385 + 12 len 20]
                            require ext_code.size(mem[_2385 + 12 len 20])
                            call mem[_2385 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, (10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, (10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                else:
                    if not mem[_1662]:
                        if 10^18 > !sub_b2d90ebb:
                            revert with 0, 17
                        if not mem[_1662]:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1785 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1785]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2095 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2095] == mem[_2095 + 12 len 20]
                            require ext_code.size(mem[_2095 + 12 len 20])
                            call mem[_2095 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if not sub_b2d90ebb + 10^18:
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1807 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 > mem[_1807]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2132 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2132] == mem[_2132 + 12 len 20]
                                require ext_code.size(mem[_2132 + 12 len 20])
                                call mem[_2132 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                            else:
                                if mem[_1662] and sub_b2d90ebb + 10^18 > -1 / mem[_1662]:
                                    revert with 0, 17
                                if (10^18 * mem[_1662]) + (sub_b2d90ebb * mem[_1662]) > -500000000000000001:
                                    revert with 0, 17
                                if 0 > !((10^18 * mem[_1662]) + (sub_b2d90ebb * mem[_1662]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2167 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18 > mem[_2167]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2555 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2555] == mem[_2555 + 12 len 20]
                                require ext_code.size(mem[_2555 + 12 len 20])
                                call mem[_2555 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, (10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if not sub_eafecffa:
                            if 10^18 > !sub_b2d90ebb:
                                revert with 0, 17
                            if not mem[_1662]:
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1808 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 > mem[_1808]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2134 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2134] == mem[_2134 + 12 len 20]
                                require ext_code.size(mem[_2134 + 12 len 20])
                                call mem[_2134 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                            else:
                                if not sub_b2d90ebb + 10^18:
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1833 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 0 > mem[_1833]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2169 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2169] == mem[_2169 + 12 len 20]
                                    require ext_code.size(mem[_2169 + 12 len 20])
                                    call mem[_2169 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                                else:
                                    if mem[_1662] and sub_b2d90ebb + 10^18 > -1 / mem[_1662]:
                                        revert with 0, 17
                                    if (10^18 * mem[_1662]) + (sub_b2d90ebb * mem[_1662]) > -500000000000000001:
                                        revert with 0, 17
                                    if 0 > !((10^18 * mem[_1662]) + (sub_b2d90ebb * mem[_1662]) + 5 * 10^17 / 10^18):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2203 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18 > mem[_2203]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2599 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2599] == mem[_2599 + 12 len 20]
                                    require ext_code.size(mem[_2599 + 12 len 20])
                                    call mem[_2599 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, (10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, (10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if mem[_1662] and sub_eafecffa > -1 / mem[_1662]:
                                revert with 0, 17
                            if mem[_1662] * sub_eafecffa > -500000000000000001:
                                revert with 0, 17
                            if 10^18 > !sub_b2d90ebb:
                                revert with 0, 17
                            if not mem[_1662]:
                                if (mem[_1662] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2168 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2168]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2556 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2556] == mem[_2556 + 12 len 20]
                                require ext_code.size(mem[_2556 + 12 len 20])
                                call mem[_2556 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), treasuryAddress, (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                            else:
                                if not sub_b2d90ebb + 10^18:
                                    if (mem[_1662] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2201 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2201]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2597 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2597] == mem[_2597 + 12 len 20]
                                    require ext_code.size(mem[_2597 + 12 len 20])
                                    call mem[_2597 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                        require ext_code.size(address(arg4))
                                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(arg2), treasuryAddress, (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                                else:
                                    if mem[_1662] and sub_b2d90ebb + 10^18 > -1 / mem[_1662]:
                                        revert with 0, 17
                                    if (10^18 * mem[_1662]) + (sub_b2d90ebb * mem[_1662]) > -500000000000000001:
                                        revert with 0, 17
                                    if (mem[_1662] * sub_eafecffa) + 5 * 10^17 / 10^18 > !((10^18 * mem[_1662]) + (sub_b2d90ebb * mem[_1662]) + 5 * 10^17 / 10^18):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2633 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if ((_1671 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18) > mem[_2633]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2868 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2868] == mem[_2868 + 12 len 20]
                                    require ext_code.size(mem[_2868 + 12 len 20])
                                    call mem[_2868 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, (10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                        require ext_code.size(address(arg4))
                                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(arg2), treasuryAddress, (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, ((_1671 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1671) + (sub_b2d90ebb * _1671) + 5 * 10^17 / 10^18), (_1671 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
            else:
                if 0 < s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0:
                    revert with 0, 17
                if s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 <= 0:
                    revert with 0, 'position-is-healthy'
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = arg3
                require ext_code.size(sub_eaada382Address)
                staticcall sub_eaada382Address.0x248391ff with:
                        gas gas_remaining wei
                       args address(arg1), address(arg4), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1670 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1680 = mem[_1670]
                if sub_eafecffa <= 0:
                    if 10^18 > !sub_b2d90ebb:
                        revert with 0, 17
                    if not mem[_1670]:
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(address(arg4))
                        staticcall address(arg4).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1748 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 0 > mem[_1748]:
                            revert with 0, 'amount-too-high'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(arg1))
                        call address(arg1).burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).debtToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2019 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2019] == mem[_2019 + 12 len 20]
                        require ext_code.size(mem[_2019 + 12 len 20])
                        call mem[_2019 + 12 len 20].burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg4))
                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if not sub_b2d90ebb + 10^18:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1765 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1765]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2056 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2056] == mem[_2056 + 12 len 20]
                            require ext_code.size(mem[_2056 + 12 len 20])
                            call mem[_2056 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if mem[_1670] and sub_b2d90ebb + 10^18 > -1 / mem[_1670]:
                                revert with 0, 17
                            if (10^18 * mem[_1670]) + (sub_b2d90ebb * mem[_1670]) > -500000000000000001:
                                revert with 0, 17
                            if 0 > !((10^18 * mem[_1670]) + (sub_b2d90ebb * mem[_1670]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2094 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18 > mem[_2094]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2467 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2467] == mem[_2467 + 12 len 20]
                            require ext_code.size(mem[_2467 + 12 len 20])
                            call mem[_2467 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, (10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, (10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                else:
                    if not mem[_1670]:
                        if 10^18 > !sub_b2d90ebb:
                            revert with 0, 17
                        if not mem[_1670]:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1828 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1828]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2160 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2160] == mem[_2160 + 12 len 20]
                            require ext_code.size(mem[_2160 + 12 len 20])
                            call mem[_2160 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if not sub_b2d90ebb + 10^18:
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1852 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 > mem[_1852]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2196 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2196] == mem[_2196 + 12 len 20]
                                require ext_code.size(mem[_2196 + 12 len 20])
                                call mem[_2196 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                            else:
                                if mem[_1670] and sub_b2d90ebb + 10^18 > -1 / mem[_1670]:
                                    revert with 0, 17
                                if (10^18 * mem[_1670]) + (sub_b2d90ebb * mem[_1670]) > -500000000000000001:
                                    revert with 0, 17
                                if 0 > !((10^18 * mem[_1670]) + (sub_b2d90ebb * mem[_1670]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2229 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18 > mem[_2229]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2625 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2625] == mem[_2625 + 12 len 20]
                                require ext_code.size(mem[_2625 + 12 len 20])
                                call mem[_2625 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, (10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if not sub_eafecffa:
                            if 10^18 > !sub_b2d90ebb:
                                revert with 0, 17
                            if not mem[_1670]:
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1853 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 > mem[_1853]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2198 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2198] == mem[_2198 + 12 len 20]
                                require ext_code.size(mem[_2198 + 12 len 20])
                                call mem[_2198 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                            else:
                                if not sub_b2d90ebb + 10^18:
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1879 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 0 > mem[_1879]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2231 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2231] == mem[_2231 + 12 len 20]
                                    require ext_code.size(mem[_2231 + 12 len 20])
                                    call mem[_2231 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                                else:
                                    if mem[_1670] and sub_b2d90ebb + 10^18 > -1 / mem[_1670]:
                                        revert with 0, 17
                                    if (10^18 * mem[_1670]) + (sub_b2d90ebb * mem[_1670]) > -500000000000000001:
                                        revert with 0, 17
                                    if 0 > !((10^18 * mem[_1670]) + (sub_b2d90ebb * mem[_1670]) + 5 * 10^17 / 10^18):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2264 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18 > mem[_2264]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2659 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2659] == mem[_2659 + 12 len 20]
                                    require ext_code.size(mem[_2659 + 12 len 20])
                                    call mem[_2659 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, (10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, (10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if mem[_1670] and sub_eafecffa > -1 / mem[_1670]:
                                revert with 0, 17
                            if mem[_1670] * sub_eafecffa > -500000000000000001:
                                revert with 0, 17
                            if 10^18 > !sub_b2d90ebb:
                                revert with 0, 17
                            if not mem[_1670]:
                                if (mem[_1670] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2230 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2230]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2626 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2626] == mem[_2626 + 12 len 20]
                                require ext_code.size(mem[_2626 + 12 len 20])
                                call mem[_2626 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), treasuryAddress, (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                            else:
                                if not sub_b2d90ebb + 10^18:
                                    if (mem[_1670] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2262 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2262]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2657 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2657] == mem[_2657 + 12 len 20]
                                    require ext_code.size(mem[_2657 + 12 len 20])
                                    call mem[_2657 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                        require ext_code.size(address(arg4))
                                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(arg2), treasuryAddress, (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                                else:
                                    if mem[_1670] and sub_b2d90ebb + 10^18 > -1 / mem[_1670]:
                                        revert with 0, 17
                                    if (10^18 * mem[_1670]) + (sub_b2d90ebb * mem[_1670]) > -500000000000000001:
                                        revert with 0, 17
                                    if (mem[_1670] * sub_eafecffa) + 5 * 10^17 / 10^18 > !((10^18 * mem[_1670]) + (sub_b2d90ebb * mem[_1670]) + 5 * 10^17 / 10^18):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2685 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if ((_1680 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18) > mem[_2685]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2900 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2900] == mem[_2900 + 12 len 20]
                                    require ext_code.size(mem[_2900 + 12 len 20])
                                    call mem[_2900 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, (10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                        require ext_code.size(address(arg4))
                                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(arg2), treasuryAddress, (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, ((_1680 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1680) + (sub_b2d90ebb * _1680) + 5 * 10^17 / 10^18), (_1680 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
        else:
            if ext_call.return_data[0] < sub_f6092809:
                revert with 0, 'debt-lt-floor'
            mem[0] = address(arg2)
            mem[32] = 21
            idx = 0
            s = 0
            while idx < stor21[address(arg2)].field_0:
                mem[32] = 21
                if idx >= stor21[address(arg2)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg2), 21)
                require ext_code.size(stor21[address(arg2)][idx].field_0)
                staticcall stor21[address(arg2)][idx].field_0.syntheticToken() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _151 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _157 = mem[_151]
                require mem[_151] == mem[_151 + 12 len 20]
                mem[mem[64] + 4] = address(arg2)
                require ext_code.size(stor21[address(arg2)][idx].field_0)
                staticcall stor21[address(arg2)][idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _205 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _220 = mem[_205]
                mem[mem[64] + 4] = address(_157)
                mem[mem[64] + 36] = _220
                require ext_code.size(sub_eaada382Address)
                staticcall sub_eaada382Address.0xee957996 with:
                        gas gas_remaining wei
                       args address(_157), _220
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_238]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_238]
                continue 
            mem[0] = address(arg2)
            mem[32] = 20
            idx = 0
            t = 0
            while idx < stor20[address(arg2)].field_0:
                mem[32] = 20
                if idx >= stor20[address(arg2)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg2), 20)
                mem[mem[64] + 4] = address(arg2)
                require ext_code.size(stor20[address(arg2)][idx].field_0)
                staticcall stor20[address(arg2)][idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1675 = mem[_1666]
                mem[mem[64] + 4] = stor20[address(arg2)][idx].field_0
                mem[mem[64] + 36] = _1675
                require ext_code.size(sub_eaada382Address)
                staticcall sub_eaada382Address.0xee957996 with:
                        gas gas_remaining wei
                       args stor20[address(arg2)][idx].field_0, _1675
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1687 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1690 = mem[_1687]
                if t > !mem[_1687]:
                    revert with 0, 17
                require ext_code.size(stor20[address(arg2)][idx].field_0)
                staticcall stor20[address(arg2)][idx].field_0.collateralizationRatio() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1699 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _1690:
                    if mem[_1699]:
                        if _1690 and mem[_1699] > -1 / _1690:
                            revert with 0, 17
                        if _1690 * mem[_1699] > -500000000000000001:
                            revert with 0, 17
                        if 0 > !((_1690 * mem[_1699]) + 5 * 10^17 / 10^18):
                            revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + _1690
                continue 
            if s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 >= 0:
                if s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 <= 0:
                    revert with 0, 'position-is-healthy'
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = arg3
                require ext_code.size(sub_eaada382Address)
                staticcall sub_eaada382Address.0x248391ff with:
                        gas gas_remaining wei
                       args address(arg1), address(arg4), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1665 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1674 = mem[_1665]
                if sub_eafecffa <= 0:
                    if 10^18 > !sub_b2d90ebb:
                        revert with 0, 17
                    if not mem[_1665]:
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(address(arg4))
                        staticcall address(arg4).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1729 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 0 > mem[_1729]:
                            revert with 0, 'amount-too-high'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(arg1))
                        call address(arg1).burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).debtToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1965 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1965] == mem[_1965 + 12 len 20]
                        require ext_code.size(mem[_1965 + 12 len 20])
                        call mem[_1965 + 12 len 20].burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg4))
                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if not sub_b2d90ebb + 10^18:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1741 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1741]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1999 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1999] == mem[_1999 + 12 len 20]
                            require ext_code.size(mem[_1999 + 12 len 20])
                            call mem[_1999 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if mem[_1665] and sub_b2d90ebb + 10^18 > -1 / mem[_1665]:
                                revert with 0, 17
                            if (10^18 * mem[_1665]) + (sub_b2d90ebb * mem[_1665]) > -500000000000000001:
                                revert with 0, 17
                            if 0 > !((10^18 * mem[_1665]) + (sub_b2d90ebb * mem[_1665]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2041 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18 > mem[_2041]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2401 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2401] == mem[_2401 + 12 len 20]
                            require ext_code.size(mem[_2401 + 12 len 20])
                            call mem[_2401 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, (10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, (10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                else:
                    if not mem[_1665]:
                        if 10^18 > !sub_b2d90ebb:
                            revert with 0, 17
                        if not mem[_1665]:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1792 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1792]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2108 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2108] == mem[_2108 + 12 len 20]
                            require ext_code.size(mem[_2108 + 12 len 20])
                            call mem[_2108 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if not sub_b2d90ebb + 10^18:
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1815 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 > mem[_1815]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2143 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2143] == mem[_2143 + 12 len 20]
                                require ext_code.size(mem[_2143 + 12 len 20])
                                call mem[_2143 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                            else:
                                if mem[_1665] and sub_b2d90ebb + 10^18 > -1 / mem[_1665]:
                                    revert with 0, 17
                                if (10^18 * mem[_1665]) + (sub_b2d90ebb * mem[_1665]) > -500000000000000001:
                                    revert with 0, 17
                                if 0 > !((10^18 * mem[_1665]) + (sub_b2d90ebb * mem[_1665]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2180 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18 > mem[_2180]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2570 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2570] == mem[_2570 + 12 len 20]
                                require ext_code.size(mem[_2570 + 12 len 20])
                                call mem[_2570 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, (10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if not sub_eafecffa:
                            if 10^18 > !sub_b2d90ebb:
                                revert with 0, 17
                            if not mem[_1665]:
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1816 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 > mem[_1816]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2145 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2145] == mem[_2145 + 12 len 20]
                                require ext_code.size(mem[_2145 + 12 len 20])
                                call mem[_2145 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                            else:
                                if not sub_b2d90ebb + 10^18:
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1841 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 0 > mem[_1841]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2182 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2182] == mem[_2182 + 12 len 20]
                                    require ext_code.size(mem[_2182 + 12 len 20])
                                    call mem[_2182 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                                else:
                                    if mem[_1665] and sub_b2d90ebb + 10^18 > -1 / mem[_1665]:
                                        revert with 0, 17
                                    if (10^18 * mem[_1665]) + (sub_b2d90ebb * mem[_1665]) > -500000000000000001:
                                        revert with 0, 17
                                    if 0 > !((10^18 * mem[_1665]) + (sub_b2d90ebb * mem[_1665]) + 5 * 10^17 / 10^18):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2213 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18 > mem[_2213]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2611 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2611] == mem[_2611 + 12 len 20]
                                    require ext_code.size(mem[_2611 + 12 len 20])
                                    call mem[_2611 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, (10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, (10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if mem[_1665] and sub_eafecffa > -1 / mem[_1665]:
                                revert with 0, 17
                            if mem[_1665] * sub_eafecffa > -500000000000000001:
                                revert with 0, 17
                            if 10^18 > !sub_b2d90ebb:
                                revert with 0, 17
                            if not mem[_1665]:
                                if (mem[_1665] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2181 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2181]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2571 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2571] == mem[_2571 + 12 len 20]
                                require ext_code.size(mem[_2571 + 12 len 20])
                                call mem[_2571 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), treasuryAddress, (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                            else:
                                if not sub_b2d90ebb + 10^18:
                                    if (mem[_1665] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2211 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2211]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2609 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2609] == mem[_2609 + 12 len 20]
                                    require ext_code.size(mem[_2609 + 12 len 20])
                                    call mem[_2609 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                        require ext_code.size(address(arg4))
                                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(arg2), treasuryAddress, (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                                else:
                                    if mem[_1665] and sub_b2d90ebb + 10^18 > -1 / mem[_1665]:
                                        revert with 0, 17
                                    if (10^18 * mem[_1665]) + (sub_b2d90ebb * mem[_1665]) > -500000000000000001:
                                        revert with 0, 17
                                    if (mem[_1665] * sub_eafecffa) + 5 * 10^17 / 10^18 > !((10^18 * mem[_1665]) + (sub_b2d90ebb * mem[_1665]) + 5 * 10^17 / 10^18):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2645 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if ((_1674 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18) > mem[_2645]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2875 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2875] == mem[_2875 + 12 len 20]
                                    require ext_code.size(mem[_2875 + 12 len 20])
                                    call mem[_2875 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, (10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                        require ext_code.size(address(arg4))
                                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(arg2), treasuryAddress, (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, ((_1674 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1674) + (sub_b2d90ebb * _1674) + 5 * 10^17 / 10^18), (_1674 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
            else:
                if 0 < s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0:
                    revert with 0, 17
                if s * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 * stor21[address(arg2)].field_0 <= 0:
                    revert with 0, 'position-is-healthy'
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = arg3
                require ext_code.size(sub_eaada382Address)
                staticcall sub_eaada382Address.0x248391ff with:
                        gas gas_remaining wei
                       args address(arg1), address(arg4), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1673 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1681 = mem[_1673]
                if sub_eafecffa <= 0:
                    if 10^18 > !sub_b2d90ebb:
                        revert with 0, 17
                    if not mem[_1673]:
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(address(arg4))
                        staticcall address(arg4).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1753 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 0 > mem[_1753]:
                            revert with 0, 'amount-too-high'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(arg1))
                        call address(arg1).burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).debtToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2033 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2033] == mem[_2033 + 12 len 20]
                        require ext_code.size(mem[_2033 + 12 len 20])
                        call mem[_2033 + 12 len 20].burn(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg4))
                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if not sub_b2d90ebb + 10^18:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1771 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1771]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2067 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2067] == mem[_2067 + 12 len 20]
                            require ext_code.size(mem[_2067 + 12 len 20])
                            call mem[_2067 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if mem[_1673] and sub_b2d90ebb + 10^18 > -1 / mem[_1673]:
                                revert with 0, 17
                            if (10^18 * mem[_1673]) + (sub_b2d90ebb * mem[_1673]) > -500000000000000001:
                                revert with 0, 17
                            if 0 > !((10^18 * mem[_1673]) + (sub_b2d90ebb * mem[_1673]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2107 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18 > mem[_2107]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2483 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2483] == mem[_2483 + 12 len 20]
                            require ext_code.size(mem[_2483 + 12 len 20])
                            call mem[_2483 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, (10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, (10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                else:
                    if not mem[_1673]:
                        if 10^18 > !sub_b2d90ebb:
                            revert with 0, 17
                        if not mem[_1673]:
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1836 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > mem[_1836]:
                                revert with 0, 'amount-too-high'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).debtToken() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2173 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2173] == mem[_2173 + 12 len 20]
                            require ext_code.size(mem[_2173 + 12 len 20])
                            call mem[_2173 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg4))
                            call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if not sub_b2d90ebb + 10^18:
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1860 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 > mem[_1860]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2206 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2206] == mem[_2206 + 12 len 20]
                                require ext_code.size(mem[_2206 + 12 len 20])
                                call mem[_2206 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                            else:
                                if mem[_1673] and sub_b2d90ebb + 10^18 > -1 / mem[_1673]:
                                    revert with 0, 17
                                if (10^18 * mem[_1673]) + (sub_b2d90ebb * mem[_1673]) > -500000000000000001:
                                    revert with 0, 17
                                if 0 > !((10^18 * mem[_1673]) + (sub_b2d90ebb * mem[_1673]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2241 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18 > mem[_2241]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2637 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2637] == mem[_2637 + 12 len 20]
                                require ext_code.size(mem[_2637 + 12 len 20])
                                call mem[_2637 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, (10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                    else:
                        if not sub_eafecffa:
                            if 10^18 > !sub_b2d90ebb:
                                revert with 0, 17
                            if not mem[_1673]:
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1861 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 > mem[_1861]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2208 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2208] == mem[_2208 + 12 len 20]
                                require ext_code.size(mem[_2208 + 12 len 20])
                                call mem[_2208 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                            else:
                                if not sub_b2d90ebb + 10^18:
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1889 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 0 > mem[_1889]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2243 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2243] == mem[_2243 + 12 len 20]
                                    require ext_code.size(mem[_2243 + 12 len 20])
                                    call mem[_2243 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, 0, 0, msg.sender, address(arg2), address(arg1)
                                else:
                                    if mem[_1673] and sub_b2d90ebb + 10^18 > -1 / mem[_1673]:
                                        revert with 0, 17
                                    if (10^18 * mem[_1673]) + (sub_b2d90ebb * mem[_1673]) > -500000000000000001:
                                        revert with 0, 17
                                    if 0 > !((10^18 * mem[_1673]) + (sub_b2d90ebb * mem[_1673]) + 5 * 10^17 / 10^18):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2273 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18 > mem[_2273]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2667 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2667] == mem[_2667 + 12 len 20]
                                    require ext_code.size(mem[_2667 + 12 len 20])
                                    call mem[_2667 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, (10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, (10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18, 0, msg.sender, address(arg2), address(arg1)
                        else:
                            if mem[_1673] and sub_eafecffa > -1 / mem[_1673]:
                                revert with 0, 17
                            if mem[_1673] * sub_eafecffa > -500000000000000001:
                                revert with 0, 17
                            if 10^18 > !sub_b2d90ebb:
                                revert with 0, 17
                            if not mem[_1673]:
                                if (mem[_1673] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg2)
                                require ext_code.size(address(arg4))
                                staticcall address(arg4).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2242 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2242]:
                                    revert with 0, 'amount-too-high'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg3
                                require ext_code.size(address(arg1))
                                call address(arg1).burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).debtToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2638 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2638] == mem[_2638 + 12 len 20]
                                require ext_code.size(mem[_2638 + 12 len 20])
                                call mem[_2638 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg4))
                                call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), treasuryAddress, (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xe1c3870e: arg3, (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                            else:
                                if not sub_b2d90ebb + 10^18:
                                    if (mem[_1673] * sub_eafecffa) + 5 * 10^17 / 10^18 > -1:
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2271 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18 > mem[_2271]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2665 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2665] == mem[_2665 + 12 len 20]
                                    require ext_code.size(mem[_2665 + 12 len 20])
                                    call mem[_2665 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                        require ext_code.size(address(arg4))
                                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(arg2), treasuryAddress, (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18, (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
                                else:
                                    if mem[_1673] and sub_b2d90ebb + 10^18 > -1 / mem[_1673]:
                                        revert with 0, 17
                                    if (10^18 * mem[_1673]) + (sub_b2d90ebb * mem[_1673]) > -500000000000000001:
                                        revert with 0, 17
                                    if (mem[_1673] * sub_eafecffa) + 5 * 10^17 / 10^18 > !((10^18 * mem[_1673]) + (sub_b2d90ebb * mem[_1673]) + 5 * 10^17 / 10^18):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(arg2)
                                    require ext_code.size(address(arg4))
                                    staticcall address(arg4).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2696 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if ((_1681 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18) > mem[_2696]:
                                        revert with 0, 'amount-too-high'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg3
                                    require ext_code.size(address(arg1))
                                    call address(arg1).burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).debtToken() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2904 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2904] == mem[_2904 + 12 len 20]
                                    require ext_code.size(mem[_2904 + 12 len 20])
                                    call mem[_2904 + 12 len 20].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(arg4))
                                    call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), msg.sender, (10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18 > 0:
                                        require ext_code.size(address(arg4))
                                        call address(arg4).seize(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(arg2), treasuryAddress, (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xe1c3870e: arg3, ((_1681 * sub_eafecffa) + 5 * 10^17 / 10^18) + ((10^18 * _1681) + (sub_b2d90ebb * _1681) + 5 * 10^17 / 10^18), (_1681 * sub_eafecffa) + 5 * 10^17 / 10^18, msg.sender, address(arg2), address(arg1)
    stor1 = 1
}



}
