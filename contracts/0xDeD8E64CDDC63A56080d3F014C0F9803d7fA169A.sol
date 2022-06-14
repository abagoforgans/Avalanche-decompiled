contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - sub_e836e590(?)
#  - _fallback()
#
const name = '', 0

const totalSupply = 10^18

const decimals = 9

const symbol = '', 0


address owner;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of struct shares;
array of address stor11;
uint256 totalShares;
uint256 totalDividends;
uint256 totalDistributed;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint256 sub_6b492b7d;
uint256 sub_204efbb9;
uint256 sub_60e71962;
uint8 rewardsEnabled;
uint256 stor21;
uint8 stor23;
uint256 stor23; offset 8
uint8 stor24;
uint256 stor24; offset 8
uint8 stor25;
uint256 stor25; offset 8
uint8 stor26;
uint256 stor26; offset 8
uint8 stor27;
uint256 stor27; offset 8
uint8 stor28;
uint256 stor28; offset 8
uint8 stor29;
uint256 stor29; offset 8
uint8 stor30;
uint256 stor30; offset 8
uint8 stor31;
uint256 stor31; offset 8
uint8 stor32;
uint256 stor32; offset 8
address stor33;
address sub_8c336a25Address;
address burnWalletAddress;
address routerAddress;
uint8 stor38; offset 168
uint8 swapEnabled; offset 176
uint128 stor38; offset 176
address pairAddress;
uint256 sub_0e5a9231;
uint256 sub_bec90112;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function burnWallet() {
    return burnWalletAddress
}

function sub_0e5a9231(?) {
    return sub_0e5a9231
}

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function rewardsEnabled() {
    return bool(rewardsEnabled)
}

function sub_204efbb9(?) {
    return sub_204efbb9
}

function totalShares() {
    return totalShares
}

function sub_60e71962(?) {
    return sub_60e71962
}

function sub_6b492b7d(?) {
    return sub_6b492b7d
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function sub_8c336a25(?) {
    return sub_8c336a25Address
}

function _maxWalletSize() {
    return _maxWalletSize
}

function totalDividends() {
    return totalDividends
}

function pair() {
    return pairAddress
}

function sub_bec90112(?) {
    return sub_bec90112
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function dividendsPerShare() {
    return dividendsPerShare
}

function totalDistributed() {
    return totalDistributed
}

function router() {
    return routerAddress
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_729338e8(?) {
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    require not uint8(stor38.field_168)
    uint8(stor38.field_168) = 1
    emit 0x2074e4c8: block.timestamp
}

function sub_b94dc7dc(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    sub_6b492b7d = arg1
    sub_204efbb9 = arg2
    emit 0x65742e1c: arg1, arg2
}

function sub_1265dbad(?) {
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function sub_1f23126a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    rewardsEnabled = uint8(bool(arg1))
    emit 0xada4466e: bool(arg1)
}

function sub_0c9aa629(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    Mask(80, 0, stor38.field_176) = Mask(80, 0, bool(arg1))
    emit 0xb51ae285: bool(arg1)
}

function sub_64e3c448(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    require arg1 >= 1
    require arg2 >= 1
    sub_0e5a9231 = arg1
    sub_bec90112 = arg2
    emit 0x304dfc18: arg1, arg2
}

function sub_fba879b9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    stor8[address(arg1)] = uint8(bool(arg2))
    emit 0x4e5a8f1b: address(arg1), bool(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_d9321814(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if stor33 == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set same address than actual marketingWallet'
    stor33 = address(arg1)
    emit 0x1b5a7723: address(arg1)
}

function ownerSetLimits(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if arg1 < 10^15:
        revert with 0, 'Cannot set maxTx below 0.1%'
    if arg2 < 10^16:
        revert with 0, 'Cannot set maxTx below 1%'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    _maxTxAmount = 10^9 * arg1
    if arg2 and 10^9 > -1 / arg2:
        revert with 0, 17
    _maxWalletSize = 10^9 * arg2
    emit 0xa6454bdf: arg1, arg2
}

function sub_25ec2455(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0059770b(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    if uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))) > -uint8(arg4) + 255:
        revert with 0, 17
    if uint8(uint8(arg4) + uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1)))) > 25:
        revert with 0, 'Cannot set BuyTaxes over 25%'
    uint8(stor23.field_0) = uint8(arg1)
    Mask(248, 0, stor23.field_8) = 0
    uint8(stor25.field_0) = uint8(arg2)
    Mask(248, 0, stor25.field_8) = 0
    uint8(stor26.field_0) = uint8(arg3)
    Mask(248, 0, stor26.field_8) = 0
    uint8(stor24.field_0) = uint8(arg4)
    Mask(248, 0, stor24.field_8) = 0
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    if uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))) > -uint8(arg4) + 255:
        revert with 0, 17
    uint8(stor27.field_0) = uint8(uint8(arg4) + uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))))
    Mask(248, 0, stor27.field_8) = 0
    emit 0xaba8649c: arg1 << 248, arg2 << 248, arg3 << 248, uint8(arg4)
}

function sub_b5542c92(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    if uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))) > -uint8(arg4) + 255:
        revert with 0, 17
    if uint8(uint8(arg4) + uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1)))) > 25:
        revert with 0, 'Cannot set SellTaxes over 25%'
    uint8(stor28.field_0) = uint8(arg1)
    Mask(248, 0, stor28.field_8) = 0
    uint8(stor30.field_0) = uint8(arg2)
    Mask(248, 0, stor30.field_8) = 0
    uint8(stor31.field_0) = uint8(arg3)
    Mask(248, 0, stor31.field_8) = 0
    uint8(stor29.field_0) = uint8(arg4)
    Mask(248, 0, stor29.field_8) = 0
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    if uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))) > -uint8(arg4) + 255:
        revert with 0, 17
    uint8(stor32.field_0) = uint8(uint8(arg4) + uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))))
    Mask(248, 0, stor32.field_8) = 0
    emit 0xaddd6daa: arg1 << 248, arg2 << 248, arg3 << 248, uint8(arg4)
}

function claimDividend() {
    if stor7[msg.sender] > !sub_6b492b7d:
        revert with 0, 17
    if stor7[msg.sender] + sub_6b492b7d > block.timestamp:
        revert with 0, 'Can't claim yet'
    if shares[address(msg.sender)].field_0:
        if shares[address(msg.sender)].field_0:
            if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                revert with 0, 17
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 18
            if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(msg.sender)].field_256:
                if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(msg.sender)].field_256:
                    revert with 0, 17
                if (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256:
                    if totalDistributed > !((shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                        revert with 0, 17
                    totalDistributed = totalDistributed + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if stor21 < (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256:
                        revert with 0, 17
                    stor21 = stor21 - (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) + shares[address(msg.sender)].field_256
                    stor7[address(msg.sender)] = block.timestamp
                    if shares[address(msg.sender)].field_512 > !((shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                        revert with 0, 17
                    shares[address(msg.sender)].field_512 = shares[address(msg.sender)].field_512 + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    shares[address(msg.sender)].field_256 = shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function sub_02199cd6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if stor9[address(arg1)]:
        revert with 0, 'Already excluded'
    stor9[address(arg1)] = 1
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if shares[address(arg1)].field_0:
                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 0, 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 18
                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                        if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if stor21 < (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                            revert with 0, 17
                        stor21 = stor21 - (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) + shares[address(arg1)].field_256
                        stor7[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if shares[address(arg1)].field_0:
        if stor11.length < 1:
            revert with 0, 17
        if stor11.length - 1 >= stor11.length:
            revert with 0, 50
        if stor6[address(arg1)] >= stor11.length:
            revert with 0, 50
        stor11[stor6[address(arg1)]] = stor11[stor11.length]
        if stor11.length < 1:
            revert with 0, 17
        if stor11.length - 1 >= stor11.length:
            revert with 0, 50
        stor6[stor11[stor11.length]] = stor6[address(arg1)]
        if not stor11.length:
            revert with 0, 49
        stor11[stor11.length] = 0
        stor11.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - shares[address(arg1)].field_0 > -1:
        revert with 0, 17
    totalShares -= shares[address(arg1)].field_0
    shares[address(arg1)].field_0 = 0
    if False and dividendsPerShare > 0:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
    emit 0x349c1f70: address(arg1)
}

function sub_fadf9aaf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if not stor9[address(arg1)]:
        revert with 0, 'Address is not excluded'
    stor9[address(arg1)] = 0
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if shares[address(arg1)].field_0:
                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 0, 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 18
                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                        if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if stor21 < (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                            revert with 0, 17
                        stor21 = stor21 - (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) + shares[address(arg1)].field_256
                        stor7[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if balanceOf[address(arg1)] <= 0:
        if not balanceOf[address(arg1)]:
            if shares[address(arg1)].field_0:
                if stor11.length < 1:
                    revert with 0, 17
                if stor11.length - 1 >= stor11.length:
                    revert with 0, 50
                if stor6[address(arg1)] >= stor11.length:
                    revert with 0, 50
                stor11[stor6[address(arg1)]] = stor11[stor11.length]
                if stor11.length < 1:
                    revert with 0, 17
                if stor11.length - 1 >= stor11.length:
                    revert with 0, 50
                stor6[stor11[stor11.length]] = stor6[address(arg1)]
                if not stor11.length:
                    revert with 0, 49
                stor11[stor11.length] = 0
                stor11.length--
    else:
        if not shares[address(arg1)].field_0:
            stor6[address(arg1)] = stor11.length
            stor11.length++
            stor175B[stor11.length] = address(arg1)
        else:
            if not balanceOf[address(arg1)]:
                if shares[address(arg1)].field_0:
                    if stor11.length < 1:
                        revert with 0, 17
                    if stor11.length - 1 >= stor11.length:
                        revert with 0, 50
                    if stor6[address(arg1)] >= stor11.length:
                        revert with 0, 50
                    stor11[stor6[address(arg1)]] = stor11[stor11.length]
                    if stor11.length < 1:
                        revert with 0, 17
                    if stor11.length - 1 >= stor11.length:
                        revert with 0, 50
                    stor6[stor11[stor11.length]] = stor6[address(arg1)]
                    if not stor11.length:
                        revert with 0, 49
                    stor11[stor11.length] = 0
                    stor11.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - shares[address(arg1)].field_0 > !balanceOf[address(arg1)]:
        revert with 0, 17
    totalShares = totalShares - shares[address(arg1)].field_0 + balanceOf[address(arg1)]
    shares[address(arg1)].field_0 = balanceOf[address(arg1)]
    if balanceOf[address(arg1)] and dividendsPerShare > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    shares[address(arg1)].field_256 = balanceOf[address(arg1)] * dividendsPerShare / dividendsPerShareAccuracyFactor
    emit 0x7d677263: address(arg1)
}



}
