contract main {




// =====================  Runtime code  =====================


#
#  - sub_1b9093c3(?)
#  - sub_2586bc5a(?)
#  - sub_738583e6(?)
#
const sub_23be56aa(?) = 0x791ac94700000000000000000000000000000000000000000000000000000000

const sub_50ff5652(?) = 0x5c11d79500000000000000000000000000000000000000000000000000000000


address owner;
uint8 stor2;
mapping of uint256 sub_12554548;
mapping of uint256 sub_a7d876b2;
mapping of uint8 stor5;
address bridgeTokenAddress;
address chainTokenAddress;
address treasuryAddress;
address custodianAddress;
address sub_f965a542Address;
uint256 sub_1c9db774;
address sub_05c824b7Address;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of struct sub_8007be2e;

function inBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[address(arg1)])
}

function sub_05c824b7(?) {
    return sub_05c824b7Address
}

function chainToken() {
    return chainTokenAddress
}

function sub_12554548(?) {
    require calldata.size - 4 >= 32
    return sub_12554548[arg1]
}

function sub_1c9db774(?) {
    return sub_1c9db774
}

function custodian() {
    return custodianAddress
}

function sub_52b43a4e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[address(arg1)])
}

function relayers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function paused() {
    return bool(stor2)
}

function treasury() {
    return treasuryAddress
}

function sub_8007be2e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return Mask(32, 224, sub_8007be2e[arg1].field_0), sub_8007be2e[arg1].field_32 << 224
}

function owner() {
    return owner
}

function sub_a7d876b2(?) {
    require calldata.size - 4 >= 32
    return sub_a7d876b2[arg1]
}

function bridgeToken() {
    return bridgeTokenAddress
}

function sub_f965a542(?) {
    return sub_f965a542Address
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function sub_fda9f8fd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_efe83a30(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor14[address(arg1)]:
        revert with 0, 'BaseBridge: NOT_SUPPORTING_DEX'
    if sub_8007be2e[address(arg1)].field_32 << 224:
        return (sub_8007be2e[address(arg1)].field_32 << 224)
    return 0x791ac94700000000000000000000000000000000000000000000000000000000
}

function sub_7ea3b219(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor14[address(arg1)]:
        revert with 0, 'BaseBridge: NOT_SUPPORTING_DEX'
    if Mask(32, 224, sub_8007be2e[address(arg1)].field_0):
        return Mask(32, 224, sub_8007be2e[address(arg1)].field_0)
    return 0x5c11d79500000000000000000000000000000000000000000000000000000000
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
