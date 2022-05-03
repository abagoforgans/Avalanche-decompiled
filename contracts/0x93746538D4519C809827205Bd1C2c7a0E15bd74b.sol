contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_6c9fba6f;
mapping of uint8 stor2;
uint32 stor3; offset 160
uint128 sub_f6e85d50; offset 160
address stor3;
uint8 version; offset 160
address bridgeAddress;

function version() payable {
    return version
}

function sub_6c9fba6f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    return sub_6c9fba6f[arg1].field_0, 
           sub_6c9fba6f[arg1].field_256,
           Mask(32, 224, sub_6c9fba6f[arg1].field_512),
           sub_6c9fba6f[arg1].field_768,
           Mask(32, 224, sub_6c9fba6f[arg1].field_1024),
           sub_6c9fba6f[arg1].field_1280
}

function owner() payable {
    return owner
}

function sub_e6a82c7a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == Mask(32, 224, arg1)
    require arg2 == uint128(arg2)
    return bool(stor2[arg1][arg2])
}

function bridge() payable {
    return bridgeAddress
}

function sub_f6e85d50(?) payable {
    return (sub_f6e85d50 << 224)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor3.field_0) = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_7a6a5e3c(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == uint128(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == Mask(32, 224, arg5)
    require arg6 == Mask(32, 224, arg6)
    require arg7 == arg7
    if bridgeAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Validator: caller is not the bridge'
    if uint8(arg1) != version:
        revert with 0, 'Validator: wrong lock version'
    if Mask(32, 224, arg5) == sub_f6e85d50 << 224:
        revert with 0, 'Validator: source chain'
    if sub_6c9fba6f[arg1 << 128].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Validator: lock id already exists'
    sub_6c9fba6f[arg1 << 128].field_0 = address(arg2)
    sub_6c9fba6f[arg1 << 128].field_256 = arg3
    sub_6c9fba6f[arg1 << 128].field_512 = 0
    sub_6c9fba6f[arg1 << 128].field_768 = 0
    sub_6c9fba6f[arg1 << 128].field_768 = arg4
    sub_6c9fba6f[arg1 << 128].field_1024 = 0
    sub_6c9fba6f[arg1 << 128].field_1280 = 0
    sub_6c9fba6f[arg1 << 128].field_1280 = arg7
}

function sub_7281efa6(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == uint128(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == Mask(32, 224, arg4)
    require arg5 == Mask(32, 224, arg5)
    require arg6 == arg6
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    if bridgeAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Validator: caller is not the bridge'
    if uint8(arg1) != version:
        revert with 0, 'Validator: wrong lock version'
    mem[370 len arg7.length] = arg7[all]
    mem[arg7.length + 370] = 0
    require arg7.length == 65
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(uint128(arg1), address(arg2), arg3, uint32(arg4), uint32(arg5), arg6, uint32(stor3.field_160), 'unlock')), 0, mem[370], mem[402]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != address(stor3.field_0):
        revert with 0, 'Validator: invalid signature'
    if stor2[Mask(32, 224, arg4)][arg1 << 128]:
        revert with 0, 'Validator: funds already received'
    stor2[Mask(32, 224, arg4)][arg1 << 128] = 1
}



}
