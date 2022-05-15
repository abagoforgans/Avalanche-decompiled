contract main {




// =====================  Runtime code  =====================


#
#  - sub_bf6748cd(?)
#
const sub_5c6da06d(?) = 0xcb716962b61b1daeee3bb7b00a62fa5970a0403f71f5411336b278056d07c3a7

const sub_d6cd151c(?) = 0x89cb0400c70c94e944e4f761ae265ecbbb35b0c2e5324bc54cda0b66eda126d4

const sub_e09de54c(?) = 0xfc6276b984367518703ab50269bddb0e5d9b019fc1d96a6c62062a9706049e41

const CONTROLLER_ROLE = 0x7b765e0e932d348852a6f810bfa1ab891e259123f02db8cdcde614c570223357

const LIQUIDATOR_ROLE = 0x5e17fc5225d4a099df75359ce1f405503ca79498a8dc46a7d583235a0ee45c16

const DEFAULT_ADMIN_ROLE = 0

const DEPOSITOR_ROLE = 0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9

const BRIDGE_ROLE = 0x52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e5f

const OPERATOR_ROLE = code.data[16935 len 32]

const VERSION = 3


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
address bankAddress;
address vaultAddress;
mapping of address sub_51010763;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_51010763(?) payable {
    require calldata.size - 4 >= 32
    return sub_51010763[arg1]
}

function bank() payable {
    return bankAddress
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[16760 len 34], mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function sub_28566bea(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    require ext_code.size(bankAddress)
    call bankAddress.0x341ba9e9 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x51d60000: address(arg1), arg2
}

function sub_499e7720(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    require ext_code.size(bankAddress)
    call bankAddress.0xc337465d with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8bba9a82: address(arg1), arg2
}

function sub_87231459(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    require ext_code.size(bankAddress)
    call bankAddress.0xf56e67ed with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb1022308: address(arg1), arg2
}

function setOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    require ext_code.size(bankAddress)
    call bankAddress.0x5c38eb3a with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OracleUpdated(address(arg1), arg2);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 47, code.data[16794 len 47], mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    require ext_code.size(vaultAddress)
    call vaultAddress.0xf0f44260 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(bankAddress)
    call bankAddress.0xf0f44260 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TreasuryUpdated(arg1);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 47, code.data[16967 len 47], mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 48, code.data[16841 len 48], mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_112f43bb(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xe4860339 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require arg2 <= 5
    require ext_code.size(bankAddress)
    call bankAddress.0x28274d25 with:
         gas gas_remaining wei
        args address(arg1), address(ext_call.return_data[32]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 <= 5
    require ext_code.size(vaultAddress)
    call vaultAddress.0x28274d25 with:
         gas gas_remaining wei
        args address(arg1), address(ext_call.return_data[32]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 <= 5
    emit 0x8287b677: address(arg1), arg2
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[16889 len 46], mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    bankAddress = arg1
    vaultAddress = arg2
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = msg.sender
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(msg.sender)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0:
        roleAdmin[code.data[16935 len 32]].field_0++
        roleAdmin[code.data[16935 len 32]][roleAdmin[code.data[16935 len 32]].field_0].field_0 = msg.sender
        roleAdmin[code.data[16935 len 32]][roleAdmin[code.data[16935 len 32]].field_0].field_160 = 0
        roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0 = roleAdmin[code.data[16935 len 32]].field_0
        emit RoleGranted(code.data[16935 len 32], msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_c7091f98(?) payable {
    require calldata.size - 4 >= 96
    if not roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    require ext_code.size(arg2)
    staticcall arg2.getPoolAmount(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Not a Strategy, or not empty'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xe4860339 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Strategy not empty'
    require ext_call.return_data[64] <= 5
    if ext_call.return_data[64] != 5:
        require ext_call.return_data[64] <= 5
        if ext_call.return_data[64] != 4:
            require ext_call.return_data[64] <= 5
            if ext_call.return_data[64] != 2:
                revert with 0, 'Strategy cannot be replaced'
    require ext_code.size(bankAddress)
    call bankAddress.0x28274d25 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vaultAddress)
    call vaultAddress.0x28274d25 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3:
        require ext_code.size(vaultAddress)
        call vaultAddress.0x32c4db41 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_58aec8ea(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    if not roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xe4860339 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_code.size(bankAddress)
    call bankAddress.0x28274d25 with:
         gas gas_remaining wei
        args address(arg1), address(ext_call.return_data[32]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vaultAddress)
    call vaultAddress.0x28274d25 with:
         gas gas_remaining wei
        args address(arg1), address(ext_call.return_data[32]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8287b677: address(arg1), 1
    require ext_code.size(vaultAddress)
    call vaultAddress.0x58aec8ea with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not roleAdmin[code.data[16935 len 32]][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xe4860339 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_code.size(bankAddress)
    call bankAddress.0x28274d25 with:
         gas gas_remaining wei
        args address(arg1), address(ext_call.return_data[32]), 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vaultAddress)
    call vaultAddress.0x28274d25 with:
         gas gas_remaining wei
        args address(arg1), address(ext_call.return_data[32]), 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8287b677: address(arg1), 4
    emit 0x2cbc236f: address(arg1), arg2
}



}
