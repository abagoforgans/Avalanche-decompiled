contract main {




// =====================  Runtime code  =====================


#
#  - redeem(address arg1, uint256 arg2)
#  - withdraw(uint256 arg1)
#  - depositFor(address arg1, uint256 arg2)
#  - deposit(address arg1, uint256 arg2)
#  - sub_4fb15b3f(?)
#  - sub_504a75de(?)
#  - depositWithPermit(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#  - sub_5c0bfa88(?)
#  - depositFor(address arg1, address arg2, uint256 arg3)
#  - deposit(uint256 arg1)
#  - redeem(uint256 arg1)
#  - compound()
#
const sub_7b5dbbdd(?) = 10^16

const sub_b3533793(?) = 10^16

const sub_c5c70035(?) = 10^12


array of struct stor0;
array of struct stor1;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor6;
uint256 stor7;
mapping of uint256 nonces;
uint8 stor9;
uint8 stor9; offset 8
address owner;
address sub_2faff427Address;
address aaveLendingPoolAddress;
array of struct routes;
uint256 stor162;
uint8 stor212;
uint256 stor212; offset 8
uint256 underlyingDecimal;
address underlyingAddress;
array of address rewardTokens;
uint256 sub_19b333e5;
uint256 sub_85a393bb;
address feeRecipientAddress;
uint256 adminFee;
uint256 callerFee;
address sub_cc6e8112Address;
address WAVAXAddress;
address sub_8cc5ce99Address;
address cTokenAddress;
uint256 sub_abd00609;
array of address stor104667138407455286898410558216952396144679297639369867041799913677098318052829;

function getRewardToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= rewardTokens.length:
        revert with 0, 50
    return rewardTokens[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_19b333e5(?) {
    return sub_19b333e5
}

function sub_2faff427(?) {
    return sub_2faff427Address
}

function decimals() {
    return decimals
}

function callerFee() {
    return callerFee
}

function feeRecipient() {
    return feeRecipientAddress
}

function sub_4a7e5cbb(?) {
    return rewardTokens.length
}

function routes(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 < routes[arg1][arg2].field_0
    return routes[arg1][arg2][arg3].field_0, 
           routes[arg1][arg2][arg3].field_256,
           routes[arg1][arg2][arg3].field_512,
           routes[arg1][arg2][arg3].field_768,
           ('signextend', 15, ('signextend', 15, ('field', 1024, ('stor', ('array', ('mul', 6, ('param', 'arg3')), ('map', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'routes', 112)))))))),
           ('signextend', 15, ('signextend', 15, ('field', 1152, ('stor', ('array', ('mul', 6, ('param', 'arg3')), ('map', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'routes', 112)))))))),
           ('signextend', 15, ('signextend', 15, ('field', 1280, ('stor', ('array', ('mul', 6, ('param', 'arg3')), ('map', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'routes', 112))))))))
}

function cToken() {
    return cTokenAddress
}

function underlying() {
    return underlyingAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function WAVAX() {
    return WAVAXAddress
}

function rewardTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < rewardTokens.length
    return rewardTokens[arg1]
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function sub_85a393bb(?) {
    return sub_85a393bb
}

function sub_8cc5ce99(?) {
    return sub_8cc5ce99Address
}

function owner() {
    return owner
}

function adminFee() {
    return adminFee
}

function sub_abd00609(?) {
    return sub_abd00609
}

function sub_cc6e8112(?) {
    return sub_cc6e8112Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function underlyingDecimal() {
    return underlyingDecimal
}

function aaveLendingPool() {
    return aaveLendingPoolAddress
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_f74877b5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_85a393bb = arg1
}

function setFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    feeRecipientAddress = arg1
}

function sub_026b49a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_2faff427Address = address(arg1)
}

function sub_647f3430(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_cc6e8112Address = address(arg1)
}

function sub_4c0f83c7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    aaveLendingPoolAddress = address(arg1)
}

function sub_1e0b8053(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 >= rewardTokens.length:
        revert with 0, 'Out of bounds'
    rewardTokens[arg1] = 0
}

function setFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require arg1 < 10000
    require arg2 < 10000
    adminFee = arg1
    callerFee = arg2
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if balanceOf[msg.sender] < arg2:
        revert with 0, 17
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function totalHoldings() {
    call cTokenAddress.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a57f8cb7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not address(arg1):
        revert with 0, '0 address'
    rewardTokens.length++
    storE767[stor214.length] = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][msg.sender] != -1:
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 17
        allowance[address(arg1)][msg.sender] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setApprovals(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cb8dd1d7(?) {
    if 0 == totalSupply:
        if not underlyingDecimal:
            return 1
        if bool(bool(underlyingDecimal < 78)) or bool(bool(underlyingDecimal < 32)):
            return 10^underlyingDecimal
        s = 10
        t = 1
        idx = underlyingDecimal
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        return (s * t)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return (10^18 * ext_call.return_data[0] / totalSupply)
}

function sub_e0794ec5(?) {
    if totalSupply != 0:
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if totalSupply > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10^18 * totalSupply / ext_call.return_data[0])
    if 36 < underlyingDecimal:
        revert with 0, 17
    if not -underlyingDecimal + 36:
        return 1
    if bool(bool(-underlyingDecimal + 36 < 78)) or bool(bool(-underlyingDecimal + 36 < 32)):
        return 10^(-underlyingDecimal + 36)
    s = 10
    t = 1
    idx = -underlyingDecimal + 36
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    return (s * t)
}

function DOMAIN_SEPARATOR() {
    if chainid == stor6:
        return stor7
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor0.length):
            mem[96] = Mask(248, 8, stor0.length)
        else:
            if bool(stor0.length) != 1:
                return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len -96]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
            idx = 0
            s = 0
            while idx < uint255(stor0.length) * 0.5:
                mem[idx + 96] = stor0[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len uint255(stor0.length) * 0.5]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor0.length):
        mem[96] = Mask(248, 8, stor0.length)
    else:
        if bool(stor0.length) != 1:
            return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len -96]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
        idx = 0
        s = 0
        while idx < stor0.length.field_1:
            mem[idx + 96] = stor0[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
    return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len stor0.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function sub_73aeea36(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (224 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
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
        mem[32] = sha3(address(cd[4]), 112)
        routes[address(cd[4])][address(cd[36])].field_0++
        mem[0] = sha3(address(cd[36]), sha3(address(cd[4]), 112))
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
            revert with 0, 17
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

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if arg4 < block.timestamp:
        revert with 0, 'PERMIT_DEADLINE_EXPIRED'
    if chainid == stor6:
        nonces[address(arg1)]++
        signer = erecover(sha3(0, stor7, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    else:
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor0.length):
                mem[96] = Mask(248, 8, stor0.length)
                nonces[address(arg1)]++
                signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len uint255(stor0.length) * 0.5]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
            else:
                if bool(stor0.length) != 1:
                    nonces[address(arg1)]++
                    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len -96]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor0.length) * 0.5:
                        mem[idx + 96] = stor0[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    nonces[address(arg1)]++
                    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len uint255(stor0.length) * 0.5]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor0.length):
                mem[96] = Mask(248, 8, stor0.length)
                nonces[address(arg1)]++
                signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len stor0.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
            else:
                if bool(stor0.length) != 1:
                    nonces[address(arg1)]++
                    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len -96]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
                else:
                    idx = 0
                    s = 0
                    while idx < stor0.length.field_1:
                        mem[idx + 96] = stor0[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    nonces[address(arg1)]++
                    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len stor0.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'INVALID_SIGNER'
    if address(signer) != arg1:
        revert with 0, 'INVALID_SIGNER'
    allowance[address(signer)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function emergencyRedeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor162 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor162 = 2
    if 0 == totalSupply:
        if not underlyingDecimal:
            if arg1 > -1:
                revert with 0, 17
            call cTokenAddress.exchangeRateCurrent() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 / 10^18 and ext_call.return_data[0] > -1 / arg1 / 10^18:
                revert with 0, 17
            call cTokenAddress.balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1 / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            sub_abd00609 = ext_call.return_data[0] - (arg1 / 10^18 * ext_call.return_data[0] / 10^18)
            if balanceOf[address(msg.sender)] < arg1:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg1
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            call underlyingAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 / 10^18
            if ext_call.return_data[0] != 1 or return_data.size <= 31 and return_data.size or not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            emit Withdraw(arg1 / 10^18, arg1, msg.sender, msg.sender, msg.sender);
            stor162 = 1
            return (arg1 / 10^18)
        if bool(bool(underlyingDecimal < 78)) or bool(bool(underlyingDecimal < 32)):
            if 10^underlyingDecimal and arg1 > -1 / 10^underlyingDecimal:
                revert with 0, 17
            call cTokenAddress.exchangeRateCurrent() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^underlyingDecimal * arg1 / 10^18 and ext_call.return_data[0] > -1 / 10^underlyingDecimal * arg1 / 10^18:
                revert with 0, 17
            call cTokenAddress.balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^underlyingDecimal * arg1 / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            sub_abd00609 = ext_call.return_data[0] - (10^underlyingDecimal * arg1 / 10^18 * ext_call.return_data[0] / 10^18)
            if balanceOf[address(msg.sender)] < arg1:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg1
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            call underlyingAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 10^underlyingDecimal * arg1 / 10^18
            if ext_call.return_data[0] != 1 or return_data.size <= 31 and return_data.size or not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            emit Withdraw(10^underlyingDecimal * arg1 / 10^18, arg1, msg.sender, msg.sender, msg.sender);
            stor162 = 1
            return (10^underlyingDecimal * arg1 / 10^18)
        s = 10
        t = 1
        idx = underlyingDecimal
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if s * t and arg1 > -1 / s * t:
            revert with 0, 17
        call cTokenAddress.exchangeRateCurrent() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if s * t * arg1 / 10^18 and ext_call.return_data[0] > -1 / s * t * arg1 / 10^18:
            revert with 0, 17
        call cTokenAddress.balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < s * t * arg1 / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        sub_abd00609 = ext_call.return_data[0] - (s * t * arg1 / 10^18 * ext_call.return_data[0] / 10^18)
        if balanceOf[address(msg.sender)] < arg1:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg1
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        call underlyingAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s * t * arg1 / 10^18
        if ext_call.return_data[0] != 1 or return_data.size <= 31 and return_data.size or not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        emit Withdraw(s * t * arg1 / 10^18, arg1, msg.sender, msg.sender, msg.sender);
        stor162 = 1
        return (s * t * arg1 / 10^18)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if 10^18 * ext_call.return_data[0] / totalSupply and arg1 > -1 / 10^18 * ext_call.return_data[0] / totalSupply:
        revert with 0, 17
    call cTokenAddress.exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 * ext_call.return_data[0] / totalSupply * arg1 / 10^18 and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / totalSupply * arg1 / 10^18:
        revert with 0, 17
    call cTokenAddress.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / totalSupply * arg1 / 10^18 * ext_call.return_data[0] / 10^18:
        revert with 0, 17
    sub_abd00609 = ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / totalSupply * arg1 / 10^18 * ext_call.return_data[0] / 10^18)
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    call underlyingAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * ext_call.return_data[0] / totalSupply * arg1 / 10^18
    if ext_call.return_data[0] != 1 or return_data.size <= 31 and return_data.size or not ext_call.success:
        revert with 0, 'TRANSFER_FAILED'
    emit Withdraw(10^18 * ext_call.return_data[0] / totalSupply * arg1 / 10^18, arg1, msg.sender, msg.sender, msg.sender);
    stor162 = 1
    return (10^18 * ext_call.return_data[0] / totalSupply * arg1 / 10^18)
}

function sub_4cdf0392(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg2.length)) + 97] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg3.length] = arg3[all]
    mem[ceil32(ceil32(arg2.length)) + arg3.length + 129] = 0
    require arg7 == address(arg7)
    if uint8(stor9.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor9.field_8):
            revert with 0, 'Initializable: contract is not initializing'
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor162 = 1
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                stor0[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0.length = 0
                idx = 0
                while (uint255(stor0.length) * 0.5) + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if arg2.length:
                stor0[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0.length = 0
                idx = 0
                while stor0.length.field_1 + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if arg3.length:
                stor1[].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor1.length = 0
                idx = 0
                while (uint255(stor1.length) * 0.5) + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if arg3.length:
                stor1[].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor1.length = 0
                idx = 0
                while stor1.length.field_1 + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        decimals = 18
        stor6 = chainid
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor0.length):
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = Mask(248, 8, stor0.length)
                stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len uint255(stor0.length) * 0.5]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
            else:
                if bool(stor0.length) != 1:
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg3.length)) - 98]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor0.length) * 0.5:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = stor0[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len uint255(stor0.length) * 0.5]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor0.length):
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = Mask(248, 8, stor0.length)
                stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len stor0.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
            else:
                if bool(stor0.length) != 1:
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg3.length)) - 98]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
                else:
                    idx = 0
                    s = 0
                    while idx < stor0.length.field_1:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = stor0[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len stor0.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
        underlyingAddress = address(arg1)
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        uint8(stor212.field_0) = ext_call.return_data[31 len 1]
        Mask(248, 0, stor212.field_8) = 0
        if owner != msg.sender:
            revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
        require arg4 < 10000
        require arg5 < 10000
        adminFee = arg4
        callerFee = arg5
        sub_85a393bb = arg6
        WAVAXAddress = address(arg7)
    else:
        if uint8(stor9.field_0) >= 1:
            revert with 0, 'Initializable: contract is already initialized'
        uint8(stor9.field_0) = 1
        uint8(stor9.field_8) = 1
        if not uint8(stor9.field_8):
            revert with 0, 'Initializable: contract is not initializing'
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor162 = 1
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                stor0[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0.length = 0
                idx = 0
                while (uint255(stor0.length) * 0.5) + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if arg2.length:
                stor0[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0.length = 0
                idx = 0
                while stor0.length.field_1 + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if arg3.length:
                stor1[].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor1.length = 0
                idx = 0
                while (uint255(stor1.length) * 0.5) + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if arg3.length:
                stor1[].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor1.length = 0
                idx = 0
                while stor1.length.field_1 + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        decimals = 18
        stor6 = chainid
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor0.length):
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = Mask(248, 8, stor0.length)
                stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len uint255(stor0.length) * 0.5]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
            else:
                if bool(stor0.length) != 1:
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg3.length)) - 98]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor0.length) * 0.5:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = stor0[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len uint255(stor0.length) * 0.5]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor0.length):
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = Mask(248, 8, stor0.length)
                stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len stor0.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
            else:
                if bool(stor0.length) != 1:
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg3.length)) - 98]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
                else:
                    idx = 0
                    s = 0
                    while idx < stor0.length.field_1:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = stor0[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len stor0.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
        underlyingAddress = address(arg1)
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        uint8(stor212.field_0) = ext_call.return_data[31 len 1]
        Mask(248, 0, stor212.field_8) = 0
        if owner != msg.sender:
            revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
        require arg4 < 10000
        require arg5 < 10000
        adminFee = arg4
        callerFee = arg5
        sub_85a393bb = arg6
        WAVAXAddress = address(arg7)
        uint8(stor9.field_8) = 0
        emit 0x7f26b83f: 1
}

function sub_fac991cc(?) {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg2.length)) + 97] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg3.length] = arg3[all]
    mem[ceil32(ceil32(arg2.length)) + arg3.length + 129] = 0
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    if uint8(stor9.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor9.field_8):
            revert with 0, 'Initializable: contract is not initializing'
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor162 = 1
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                stor0[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0.length = 0
                idx = 0
                while (uint255(stor0.length) * 0.5) + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if arg2.length:
                stor0[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0.length = 0
                idx = 0
                while stor0.length.field_1 + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if arg3.length:
                stor1[].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor1.length = 0
                idx = 0
                while (uint255(stor1.length) * 0.5) + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if arg3.length:
                stor1[].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor1.length = 0
                idx = 0
                while stor1.length.field_1 + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        decimals = 18
        stor6 = chainid
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor0.length):
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = Mask(248, 8, stor0.length)
                stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len uint255(stor0.length) * 0.5]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
            else:
                if bool(stor0.length) != 1:
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg3.length)) - 98]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor0.length) * 0.5:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = stor0[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len uint255(stor0.length) * 0.5]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor0.length):
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = Mask(248, 8, stor0.length)
                stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len stor0.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
            else:
                if bool(stor0.length) != 1:
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg3.length)) - 98]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
                else:
                    idx = 0
                    s = 0
                    while idx < stor0.length.field_1:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = stor0[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len stor0.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
        underlyingAddress = address(arg1)
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        uint8(stor212.field_0) = ext_call.return_data[31 len 1]
        Mask(248, 0, stor212.field_8) = 0
        if owner != msg.sender:
            revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
        require arg4 < 10000
        require arg5 < 10000
        adminFee = arg4
        callerFee = arg5
        sub_85a393bb = arg6
        WAVAXAddress = address(arg7)
    else:
        if uint8(stor9.field_0) >= 1:
            revert with 0, 'Initializable: contract is already initialized'
        uint8(stor9.field_0) = 1
        uint8(stor9.field_8) = 1
        if not uint8(stor9.field_8):
            revert with 0, 'Initializable: contract is not initializing'
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor162 = 1
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                stor0[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0.length = 0
                idx = 0
                while (uint255(stor0.length) * 0.5) + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if arg2.length:
                stor0[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0.length = 0
                idx = 0
                while stor0.length.field_1 + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if arg3.length:
                stor1[].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor1.length = 0
                idx = 0
                while (uint255(stor1.length) * 0.5) + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if arg3.length:
                stor1[].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor1.length = 0
                idx = 0
                while stor1.length.field_1 + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        decimals = 18
        stor6 = chainid
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor0.length):
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = Mask(248, 8, stor0.length)
                stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len uint255(stor0.length) * 0.5]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
            else:
                if bool(stor0.length) != 1:
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg3.length)) - 98]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor0.length) * 0.5:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = stor0[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len uint255(stor0.length) * 0.5]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor0.length):
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = Mask(248, 8, stor0.length)
                stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len stor0.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
            else:
                if bool(stor0.length) != 1:
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg3.length)) - 98]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
                else:
                    idx = 0
                    s = 0
                    while idx < stor0.length.field_1:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = stor0[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor7 = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len stor0.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
        underlyingAddress = address(arg1)
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        uint8(stor212.field_0) = ext_call.return_data[31 len 1]
        Mask(248, 0, stor212.field_8) = 0
        if owner != msg.sender:
            revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
        require arg4 < 10000
        require arg5 < 10000
        adminFee = arg4
        callerFee = arg5
        sub_85a393bb = arg6
        WAVAXAddress = address(arg7)
        uint8(stor9.field_8) = 0
        emit 0x7f26b83f: 1
    sub_8cc5ce99Address = address(arg8)
    cTokenAddress = underlyingAddress
}



}
