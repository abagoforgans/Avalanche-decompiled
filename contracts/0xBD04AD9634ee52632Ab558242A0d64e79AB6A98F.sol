contract main {




// =====================  Runtime code  =====================


#
#  - sub_31a113f8(?)
#  - claim()
#  - sub_68eac7f1(?)
#  - claimDividend()
#
address owner;
address sub_752fdbb1Address;
address meatAddress;
address usdcAddress;
uint32 stor4;
address treasuryAddress;
uint256 stor4;
address devAddress;
address sub_0e010c9eAddress;
address liquidityManagerAddress;
array of uint256 sub_a4299ba8;
array of uint256 sub_0e207eeb;
array of uint256 sub_cc55754d;
uint256 stor11;
uint256 totalDividend;
uint256 sub_e3e31721;
uint256 totalShares;
uint8 isLive;
uint256 sub_63584ecd;
array of address sub_158350ba;
mapping of struct sub_cb330e59;
mapping of uint8 stor19;
mapping of struct shares;

function meat() {
    return meatAddress
}

function sub_0e010c9e(?) {
    return sub_0e010c9eAddress
}

function sub_0e207eeb(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_0e207eeb.length
    return sub_0e207eeb[arg1]
}

function sub_158350ba(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_158350ba.length
    return sub_158350ba[arg1]
}

function liquidityManager() {
    return liquidityManagerAddress
}

function totalShares() {
    return totalShares
}

function usdc() {
    return usdcAddress
}

function totalDividend() {
    return totalDividend
}

function treasury() {
    return address(treasuryAddress)
}

function sub_63584ecd(?) {
    return sub_63584ecd
}

function sub_752fdbb1(?) {
    return sub_752fdbb1Address
}

function owner() {
    return owner
}

function dev() {
    return devAddress
}

function sub_a4299ba8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_a4299ba8.length
    return sub_a4299ba8[arg1].field_0
}

function isLive() {
    return bool(isLive)
}

function sub_cb330e59(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_cb330e59[arg1].field_0), 
           sub_cb330e59[arg1].field_256,
           sub_cb330e59[arg1].field_512,
           sub_cb330e59[arg1].field_768,
           sub_cb330e59[arg1].field_1024,
           sub_cb330e59[arg1].field_1280,
           sub_cb330e59[arg1].field_1536,
           sub_cb330e59[arg1].field_1792
}

function sub_cc55754d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_cc55754d.length
    return sub_cc55754d[arg1]
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(shares[arg1].field_0), shares[arg1].field_256, shares[arg1].field_512
}

function sub_d7c71463(?) {
    return sub_e3e31721
}

function sub_e3e31721(?) {
    return sub_e3e31721
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
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

function sub_7cd3d870(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0e010c9eAddress = address(arg1)
}

function sub_eb6d85c8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityManagerAddress = address(arg1)
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19[address(arg1)] = uint8(arg2)
}

function sub_e3b57275(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    isLive = uint8(bool(arg1))
}

function sub_891a4bd6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    meatAddress = address(arg1)
}

function sub_fbdeff2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    usdcAddress = address(arg1)
}

function sub_d7900178(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    sub_752fdbb1Address = address(arg1)
}

function setTreasuryAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    address(treasuryAddress) = arg1
}

function addDividend(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_0e010c9eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by the dividend manager'
    if totalDividend > -arg1 - 1:
        revert with 'NH{q', 17
    totalDividend += arg1
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

function sub_71e7af22(?) {
    if sub_cb330e59[address(msg.sender)].field_256 > -sub_cb330e59[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    if sub_cb330e59[address(msg.sender)].field_256 + sub_cb330e59[address(msg.sender)].field_512 > -sub_cb330e59[address(msg.sender)].field_768 - 1:
        revert with 'NH{q', 17
    return (sub_cb330e59[address(msg.sender)].field_256 + sub_cb330e59[address(msg.sender)].field_512 + sub_cb330e59[address(msg.sender)].field_768)
}

function sub_2702dcf9(?) {
    if not totalShares:
        revert with 'NH{q', 18
    if totalDividend / totalShares and shares[address(msg.sender)].field_256 > -1 / totalDividend / totalShares:
        revert with 'NH{q', 17
    if totalDividend / totalShares * shares[address(msg.sender)].field_256 <= shares[address(msg.sender)].field_512:
        return 0
    if totalDividend / totalShares * shares[address(msg.sender)].field_256 < shares[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if 0 > (-1 * totalDividend / totalShares * shares[address(msg.sender)].field_256) + shares[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    return ((totalDividend / totalShares * shares[address(msg.sender)].field_256) - shares[address(msg.sender)].field_512)
}

function sub_d8a9b6ea(?) {
    if 0 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if sub_cb330e59[address(msg.sender)].field_256 and uint256(sub_a4299ba8.field_0) > -1 / sub_cb330e59[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0) and 10^17 > -1 / sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0):
        revert with 'NH{q', 17
    if 1 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if sub_cb330e59[address(msg.sender)].field_512 and uint256(sub_a4299ba8.field_256) > -1 / sub_cb330e59[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256) and 10^17 > -1 / sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256):
        revert with 'NH{q', 17
    if 2 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if sub_cb330e59[address(msg.sender)].field_768 and uint256(sub_a4299ba8.field_512) > -1 / sub_cb330e59[address(msg.sender)].field_768:
        revert with 'NH{q', 17
    if sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512) and 10^17 > -1 / sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512):
        revert with 'NH{q', 17
    if 10^17 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0) > (-1 * 10^17 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) - 1:
        revert with 'NH{q', 17
    if (10^17 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) + (10^17 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) > (-1 * 10^17 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) - 1:
        revert with 'NH{q', 17
    return ((10^17 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) + (10^17 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) + (10^17 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)))
}

function sub_97e35e82(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg1
    while idx < arg2:
        if idx >= sub_158350ba.length:
            revert with 'NH{q', 50
        mem[0] = sub_158350ba[idx]
        mem[32] = 18
        if sub_cb330e59[stor17[idx]].field_1536 > 0:
            if block.timestamp < sub_cb330e59[address(msg.sender)].field_1536:
                revert with 'NH{q', 17
            if 0 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if sub_cb330e59[address(msg.sender)].field_256 and uint256(sub_a4299ba8.field_0) > -1 / sub_cb330e59[address(msg.sender)].field_256:
                revert with 'NH{q', 17
            if sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0) and 10^17 > -1 / sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0):
                revert with 'NH{q', 17
            if 10^17 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0) and block.timestamp - sub_cb330e59[address(msg.sender)].field_1536 > -1 / 10^17 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0):
                revert with 'NH{q', 17
            if not stor11:
                revert with 'NH{q', 18
            if block.timestamp < sub_cb330e59[address(msg.sender)].field_1536:
                revert with 'NH{q', 17
            if 1 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if sub_cb330e59[address(msg.sender)].field_512 and uint256(sub_a4299ba8.field_256) > -1 / sub_cb330e59[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256) and 10^17 > -1 / sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256):
                revert with 'NH{q', 17
            if 10^17 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256) and block.timestamp - sub_cb330e59[address(msg.sender)].field_1536 > -1 / 10^17 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256):
                revert with 'NH{q', 17
            if not stor11:
                revert with 'NH{q', 18
            if block.timestamp < sub_cb330e59[address(msg.sender)].field_1536:
                revert with 'NH{q', 17
            if 2 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if sub_cb330e59[address(msg.sender)].field_768 and uint256(sub_a4299ba8.field_512) > -1 / sub_cb330e59[address(msg.sender)].field_768:
                revert with 'NH{q', 17
            if sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512) and 10^17 > -1 / sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512):
                revert with 'NH{q', 17
            if 10^17 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512) and block.timestamp - sub_cb330e59[address(msg.sender)].field_1536 > -1 / 10^17 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512):
                revert with 'NH{q', 17
            if not stor11:
                revert with 'NH{q', 18
            if (10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) / stor11 > -((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) / stor11) - 1:
                revert with 'NH{q', 17
            if ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) / stor11) + ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) / stor11) > -((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) / stor11) - 1:
                revert with 'NH{q', 17
            mem[0] = sub_158350ba[idx]
            mem[32] = 18
            sub_cb330e59[stor17[idx]].field_1024 = ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) / stor11) + ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) / stor11) + ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) / stor11)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6180c609(?) {
    if block.timestamp < sub_cb330e59[address(msg.sender)].field_1536:
        revert with 'NH{q', 17
    if 0 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if sub_cb330e59[address(msg.sender)].field_256 and uint256(sub_a4299ba8.field_0) > -1 / sub_cb330e59[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0) and 10^17 > -1 / sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0):
        revert with 'NH{q', 17
    if 10^17 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0) and block.timestamp - sub_cb330e59[address(msg.sender)].field_1536 > -1 / 10^17 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0):
        revert with 'NH{q', 17
    if not stor11:
        revert with 'NH{q', 18
    if block.timestamp < sub_cb330e59[address(msg.sender)].field_1536:
        revert with 'NH{q', 17
    if 1 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if sub_cb330e59[address(msg.sender)].field_512 and uint256(sub_a4299ba8.field_256) > -1 / sub_cb330e59[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256) and 10^17 > -1 / sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256):
        revert with 'NH{q', 17
    if 10^17 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256) and block.timestamp - sub_cb330e59[address(msg.sender)].field_1536 > -1 / 10^17 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256):
        revert with 'NH{q', 17
    if not stor11:
        revert with 'NH{q', 18
    if block.timestamp < sub_cb330e59[address(msg.sender)].field_1536:
        revert with 'NH{q', 17
    if 2 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if sub_cb330e59[address(msg.sender)].field_768 and uint256(sub_a4299ba8.field_512) > -1 / sub_cb330e59[address(msg.sender)].field_768:
        revert with 'NH{q', 17
    if sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512) and 10^17 > -1 / sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512):
        revert with 'NH{q', 17
    if 10^17 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512) and block.timestamp - sub_cb330e59[address(msg.sender)].field_1536 > -1 / 10^17 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512):
        revert with 'NH{q', 17
    if not stor11:
        revert with 'NH{q', 18
    if (10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) / stor11 > -((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) / stor11) - 1:
        revert with 'NH{q', 17
    if ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) / stor11) + ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) / stor11) > -((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) / stor11) - 1:
        revert with 'NH{q', 17
    if ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) / stor11) + ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) / stor11) + ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) / stor11) > -sub_cb330e59[address(msg.sender)].field_1280 - 1:
        revert with 'NH{q', 17
    if sub_cb330e59[address(msg.sender)].field_1024 > -((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) / stor11) + -((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) / stor11) + -((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) / stor11) + -sub_cb330e59[address(msg.sender)].field_1280 - 1:
        revert with 'NH{q', 17
    return (sub_cb330e59[address(msg.sender)].field_1024 + ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_256 * uint256(sub_a4299ba8.field_0)) / stor11) + ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_512 * uint256(sub_a4299ba8.field_256)) / stor11) + ((10^17 * block.timestamp * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) - (10^17 * sub_cb330e59[address(msg.sender)].field_1536 * sub_cb330e59[address(msg.sender)].field_768 * uint256(sub_a4299ba8.field_512)) / stor11) + sub_cb330e59[address(msg.sender)].field_1280)
}

function emergencyWithdrawal() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(meatAddress)
    staticcall meatAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = address(treasuryAddress)
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(meatAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call meatAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xbcd97362: address(treasuryAddress), ext_call.return_data[0], meatAddress
        mem[(2 * ceil32(return_data.size)) + 296] = address(treasuryAddress)
        mem[(2 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(usdcAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(treasuryAddress), ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call usdcAddress with:
           funct Mask(32, 224, 0, address(treasuryAddress), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(treasuryAddress), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                if not mem[(2 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xbcd97362: address(treasuryAddress), ext_call.return_data[0], usdcAddress
    mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
        if not mem[(2 * ceil32(return_data.size)) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0xbcd97362: address(treasuryAddress), ext_call.return_data[0], meatAddress
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(treasuryAddress)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(usdcAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(treasuryAddress), ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call usdcAddress with:
       funct Mask(32, 224, 0, address(treasuryAddress), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(treasuryAddress), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xbcd97362: address(treasuryAddress), ext_call.return_data[0], usdcAddress
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size <= 0:
        emit 0xbcd97362: address(treasuryAddress), ext_call.return_data[0], usdcAddress
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        emit 0xbcd97362: address(treasuryAddress), ext_call.return_data[0], usdcAddress
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
