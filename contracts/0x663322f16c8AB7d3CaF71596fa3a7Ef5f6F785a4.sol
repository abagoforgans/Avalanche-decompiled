contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address sub_75919c5aAddress;
address sub_24fbec7fAddress;
address factoryAddress;
address sub_c7e86457Address;
address sub_29166e41Address;
address BNBAddress;
mapping of uint8 stor9;
address platformAddress;
address sub_f9f7ad62Address;
uint256 sub_d0a9656f;
mapping of uint8 stor14;
address sub_c34a2b66Address;
address sub_7c824b5eAddress;
address sub_90ecea7aAddress;
uint256 sub_aebc0824;
address adminAddress;
uint8 stor25;
uint256 sub_a18da2b4;
address AAddress;
uint8 stor1021;

function sub_1d67e803(?) {
    require calldata.size - 4 >= 32
    return bool(stor14[address(arg1)])
}

function _supportNft(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function sub_24fbec7f(?) {
    return sub_24fbec7fAddress
}

function sub_29166e41(?) {
    return sub_29166e41Address
}

function sub_2c7a3e64(?) {
    return sub_f9f7ad62Address
}

function getPlatform() {
    return platformAddress
}

function platform() {
    return platformAddress
}

function sub_58616aa0(?) {
    return sub_a18da2b4
}

function sub_5eeca1f0(?) {
    return sub_75919c5aAddress
}

function sub_6b34d725(?) {
    return bool(stor25)
}

function getAdmin() {
    return adminAddress
}

function nonCryptoNFTVault() {
    return sub_c34a2b66Address
}

function sub_75919c5a(?) {
    return sub_75919c5aAddress
}

function getBNB() {
    return BNBAddress
}

function sub_7c824b5e(?) {
    return sub_7c824b5eAddress
}

function getFactory() {
    return factoryAddress
}

function owner() {
    return address(owner)
}

function sub_90ecea7a(?) {
    return sub_90ecea7aAddress
}

function sub_97182610(?) {
    return bool(stor25)
}

function sub_a18da2b4(?) {
    return sub_a18da2b4
}

function sub_aebc0824(?) {
    return sub_aebc0824
}

function sub_c34a2b66(?) {
    return sub_c34a2b66Address
}

function sub_c7e86457(?) {
    return sub_c7e86457Address
}

function sub_d0a9656f(?) {
    return sub_d0a9656f
}

function getA() {
    return AAddress
}

function sub_e5a99991(?) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function sub_f9f7ad62(?) {
    return sub_f9f7ad62Address
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == address(owner))
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function setAdminDiscount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == 0xcfd872e3e8fb719ebece7e872ed5dc287bb1e329
    sub_aebc0824 = arg1
    emit updateDiscount(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function init() {
    if stor25:
        revert with 0, 'collections already configured'
    sub_24fbec7fAddress = 0x54994ba4b4a42297b3b88e27185cde1f51dca288
    stor25 = 1
    adminAddress = 0xcfd872e3e8fb719ebece7e872ed5dc287bb1e329
    sub_90ecea7aAddress = 0xd4a11d5eeaac28ec3f61d100daf4d40471f1852
    platformAddress = 0x9c427ea9ce5fd3101a273815ff8530f2ac75db37
    sub_d0a9656f = 25
    sub_a18da2b4 = 0
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    emit OwnershipTransferred(0, msg.sender);
    factoryAddress = 0x53a5a2eaa5794384384dd990555c2b8fbe195d14
    stor1021 = 1
    emit 0xc43688db: 0x53a5a2eaa5794384384dd990555c2b8fbe195d14
    emit 0x54994ba4: 0x53a5a2eaa5794384384dd990555c2b8fbe195d14
    sub_29166e41Address = 0xdac17f958d2ee523a2206206994597c13d831ec7
    BNBAddress = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
    stor14[this.address] = 1
    AAddress = 0x61598488ccd8cb5114df579e3e0c5f19fdd6b3af
}

function updateTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(sub_24fbec7fAddress)
    staticcall sub_24fbec7fAddress.getAuthor(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != adminAddress:
        revert with 0, '102'
    require ext_code.size(sub_24fbec7fAddress)
    call sub_24fbec7fAddress with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 128] = msg.sender
    mem[ceil32(arg2.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit updateTokenEvent(address arg1, uint256 arg2, string arg3):
                              0,
                              Mask(224, 0, msg.sender),
                              arg1,
                              96,
                              arg2.length,
                              Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 256] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32]
        emit updateTokenEvent(address arg1, uint256 arg2, string arg3):
                              0,
                              Mask(224, 0, msg.sender),
                              arg1,
                              96,
                              arg2.length,
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[(2 * ceil32(arg2.length)) + 256 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
}



}
