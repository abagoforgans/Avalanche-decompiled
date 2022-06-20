contract main {




// =====================  Runtime code  =====================


address sub_903f6795Address;
bool stor1; offset 256
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 168
address sub_d2e69e47Address;
array of address sub_9fff71cd;
array of address sub_c9b1eafa;
array of address sub_652060d8;
address feeCollectorAddress;
address sub_125c67ddAddress;
address sub_883327daAddress;
address sub_51de3cf5Address;

function sub_125c67dd(?) payable {
    return sub_125c67ddAddress
}

function sub_51de3cf5(?) payable {
    return sub_51de3cf5Address
}

function sub_652060d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_652060d8.length
    return sub_652060d8[arg1]
}

function sub_883327da(?) payable {
    return sub_883327daAddress
}

function sub_903f6795(?) payable {
    return sub_903f6795Address
}

function sub_9fff71cd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9fff71cd.length
    return sub_9fff71cd[arg1]
}

function feeCollector() payable {
    return feeCollectorAddress
}

function sub_c9b1eafa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c9b1eafa.length
    return sub_c9b1eafa[arg1]
}

function sub_d2e69e47(?) payable {
    return sub_d2e69e47Address
}

function _fallback() payable {
    revert
}

function sub_0ccd6502(?) payable {
    if not sub_9fff71cd.length:
        return 0
    require sub_9fff71cd.length - 1 < sub_9fff71cd.length
    return sub_9fff71cd[sub_9fff71cd.length]
}

function sub_4d6ebf52(?) payable {
    if not sub_652060d8.length:
        return 0
    require sub_652060d8.length - 1 < sub_652060d8.length
    return sub_652060d8[sub_652060d8.length]
}

function sub_d57ce7d9(?) payable {
    if not sub_c9b1eafa.length:
        return 0
    require sub_c9b1eafa.length - 1 < sub_c9b1eafa.length
    return sub_c9b1eafa[sub_c9b1eafa.length]
}

function setMaintainersRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_maintainersRegistry can not be 0x0 address'
    sub_d2e69e47Address = arg1
}

function sub_3cf96c94(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_maintainersRegistry can not be 0x0 address'
    sub_903f6795Address = address(arg1)
}

function setFeeCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee Collector can not be 0x0 address'
    feeCollectorAddress = arg1
    emit 0x12e1d170: arg1
}

function sub_41473a88(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'farmImplementation can not be 0x0 address'
    sub_51de3cf5Address = address(arg1)
    emit 0x22aed5f8: address(arg1)
}

function sub_cd34ac1d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'farmImplementation can not be 0x0 address'
    sub_125c67ddAddress = address(arg1)
    emit 0x8fbd25cd: address(arg1)
}

function sub_fddeae08(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'farmImplementation can not be 0x0 address'
    sub_883327daAddress = address(arg1)
    emit 0x32a65288: address(arg1)
}

function sub_322fdb5f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm's address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0xf8c007ff with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d62fe95f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm's address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0xa03f2e8e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a26d4ba4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm address can not be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0xccb98ffc with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d29b5c6d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm address can not be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0xa42dce80 with:
         gas gas_remaining wei
        args feeCollectorAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b4d8aae4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    if not address(arg1):
        revert with 0, 'Farm address can not be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0xa113601b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c63a2dd3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    if not address(arg1):
        revert with 0, 'Farm address can not be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0xa113601b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_00d9104f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm address can not be 0x0 address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm address can not be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0x98575188 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_637f6350(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm address can not be 0x0 address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm address can not be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0x98575188 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_48f06e53(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    if not address(arg1):
        revert with 0, 'Farm's address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0x524c4f1f with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b93098e0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    if not address(arg1):
        revert with 0, 'Farm's address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0x5fdcd545 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8abb73ae(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm's address can't be 0x0 address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Collectors address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0xbc69f6f7 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fb0885c5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm's address can't be 0x0 address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Collectors address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0xbc69f6f7 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c35fcd15(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm's address can't be 0x0 address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0x42c0a0e2 with:
         gas gas_remaining wei
        args address(arg2), feeCollectorAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d9cd4004(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm's address can't be 0x0 address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0x42c0a0e2 with:
         gas gas_remaining wei
        args address(arg2), feeCollectorAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_34d56738(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    if not address(arg1):
        revert with 0, 'Farm's address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0xd81af543 with:
         gas gas_remaining wei
        args bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_be01db0f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    if not address(arg1):
        revert with 0, 'Farm's address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0x379bdee2 with:
         gas gas_remaining wei
        args bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cf66bbca(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    if not address(arg1):
        revert with 0, 'Farm's address can't be 0x0 address'
    if arg2 <= 0:
        revert with 0, 'Stake fee percent must be between 0 and 100'
    if arg2 >= 100:
        revert with 0, 'Stake fee percent must be between 0 and 100'
    require ext_code.size(address(arg1))
    call address(arg1).0x14433205 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dd67506c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    if not address(arg1):
        revert with 0, 'Farm's address can't be 0x0 address'
    if arg2 <= 0:
        revert with 0, 'Reward fee percent must be between 0 and 100'
    if arg2 >= 100:
        revert with 0, 'Reward fee percent must be between 0 and 100'
    require ext_code.size(address(arg1))
    call address(arg1).0x6bebaf97 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7de29654(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm's address can't be 0x0 address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens address can't be 0x0 address'
    if not address(arg4):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Beneficiary address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).0x9ccef49b with:
         gas gas_remaining wei
        args address(arg2), arg3, address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_18e2596a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmUpgradable: Restricted only to TokensFarmCongress'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm implementation can not be 0x0 address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Linear implementation can not be 0x0 address'
    if not address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Iterative implementation can not be 0x0 address'
    sub_125c67ddAddress = address(arg1)
    sub_883327daAddress = address(arg2)
    sub_51de3cf5Address = address(arg3)
    emit 0x8fbd25cd: address(arg1)
    emit 0x32a65288: sub_883327daAddress
    emit 0x22aed5f8: sub_51de3cf5Address
}

function sub_9fe4e3f9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, sub_883327daAddress, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create.new_address):
        revert with 0, 'ERC1167: create failed'
    require ext_code.size(address(create.new_address))
    if not arg2:
        call address(create.new_address).0x9e3d87cd with:
             gas gas_remaining wei
            args address(arg1), block.timestamp + 10, arg3, sub_883327daAddress
    else:
        call address(create.new_address).0x9e3d87cd with:
             gas gas_remaining wei
            args address(arg1), arg2, arg3, sub_883327daAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c9b1eafa.length++
    sub_c9b1eafa[sub_c9b1eafa.length] = address(create.new_address)
    emit 0x5bc4338e: address(create.new_address)
}

function sub_1ce6d5d4(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    if not address(cd[4]):
        revert with 0, 'Farm address can not be 0x0 address'
    idx = 0
    s = cd[36] + 36
    t = ceil32(return_data.size) + 164
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        mem[t + 32] = cd[(s + 32)]
        idx = idx + 1
        s = s + 64
        t = t + 64
        continue 
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x70d5f009 with:
         gas gas_remaining wei
        args Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 164 len 64 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dfadc402(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    if not address(cd[4]):
        revert with 0, 'Farm address can not be 0x0 address'
    idx = 0
    s = cd[36] + 36
    t = ceil32(return_data.size) + 164
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        mem[t + 32] = cd[(s + 32)]
        idx = idx + 1
        s = s + 64
        t = t + 64
        continue 
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x70d5f009 with:
         gas gas_remaining wei
        args Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 164 len 64 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_44259e67(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, sub_51de3cf5Address, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create.new_address):
        revert with 0, 'ERC1167: create failed'
    require ext_code.size(address(create.new_address))
    if not arg2:
        call address(create.new_address).0x6c28e349 with:
             gas gas_remaining wei
            args address(arg1), block.timestamp + 10, arg3, arg4, sub_51de3cf5Address
    else:
        call address(create.new_address).0x6c28e349 with:
             gas gas_remaining wei
            args address(arg1), arg2, arg3, arg4, sub_51de3cf5Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_652060d8.length++
    sub_652060d8[sub_652060d8.length] = address(create.new_address)
    emit 0x6d4f9b6e: address(create.new_address)
}

function sub_1423ad71(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'There is not enough tokens left in factory to fund'
    if not address(arg1):
        revert with 0, 'Farm's address can't be 0x0 address'
    if not address(arg2):
        revert with 0, 'RewardToken address can't be 0x0 address'
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).0xe2adf1ae with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_933bd40b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'There is not enough tokens left in factory to fund'
    if not address(arg1):
        revert with 0, 'Farm's address can't be 0x0 address'
    if not address(arg2):
        revert with 0, 'RewardToken address can't be 0x0 address'
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).0xe2adf1ae with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ab03629e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'There is not enough tokens left in factory to fund'
    if not address(arg1):
        revert with 0, 'Farm's address can't be 0x0 address'
    if not address(arg2):
        revert with 0, 'RewardToken address can't be 0x0 address'
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).0xca1d209d with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7a290e03(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        revert with 0, 'Start should be less than end'
    if arg2 > sub_652060d8.length:
        revert with 0, 'One of the index is out of range'
    require arg2 - arg1 <= test266151307()
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = arg1
        s = 0
        while idx < arg2:
            require idx < sub_652060d8.length
            mem[0] = 4
            require s < mem[96]
            mem[(32 * s) + 128] = sub_652060d8[idx]
            idx = idx + 1
            s = s + 1
            continue 
        mem[(32 * arg2 - arg1) + 128] = 32
        _24 = mem[96]
        mem[(32 * arg2 - arg1) + 160] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _24:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * arg2 - arg1) + (32 * _24) + -mem[64] + 192
    mem[128 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    idx = arg1
    s = 0
    while idx < arg2:
        require idx < sub_652060d8.length
        mem[0] = 4
        require s < mem[96]
        mem[(32 * s) + 128] = sub_652060d8[idx]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg2 - arg1) + 128] = 32
    _25 = mem[96]
    mem[(32 * arg2 - arg1) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _25:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * arg2 - arg1) + (32 * _25) + -mem[64] + 192
}

function sub_84b2ad7e(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        revert with 0, 'Start should be less than end'
    if arg2 > sub_c9b1eafa.length:
        revert with 0, 'One of the index is out of range'
    require arg2 - arg1 <= test266151307()
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = arg1
        s = 0
        while idx < arg2:
            require idx < sub_c9b1eafa.length
            mem[0] = 3
            require s < mem[96]
            mem[(32 * s) + 128] = sub_c9b1eafa[idx]
            idx = idx + 1
            s = s + 1
            continue 
        mem[(32 * arg2 - arg1) + 128] = 32
        _24 = mem[96]
        mem[(32 * arg2 - arg1) + 160] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _24:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * arg2 - arg1) + (32 * _24) + -mem[64] + 192
    mem[128 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    idx = arg1
    s = 0
    while idx < arg2:
        require idx < sub_c9b1eafa.length
        mem[0] = 3
        require s < mem[96]
        mem[(32 * s) + 128] = sub_c9b1eafa[idx]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg2 - arg1) + 128] = 32
    _25 = mem[96]
    mem[(32 * arg2 - arg1) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _25:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * arg2 - arg1) + (32 * _25) + -mem[64] + 192
}

function sub_e1d96110(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        revert with 0, 'Start should be less than end'
    if arg2 > sub_9fff71cd.length:
        revert with 0, 'One of the index is out of range'
    require arg2 - arg1 <= test266151307()
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = arg1
        s = 0
        while idx < arg2:
            require idx < sub_9fff71cd.length
            mem[0] = 2
            require s < mem[96]
            mem[(32 * s) + 128] = sub_9fff71cd[idx]
            idx = idx + 1
            s = s + 1
            continue 
        mem[(32 * arg2 - arg1) + 128] = 32
        _24 = mem[96]
        mem[(32 * arg2 - arg1) + 160] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _24:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * arg2 - arg1) + (32 * _24) + -mem[64] + 192
    mem[128 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    idx = arg1
    s = 0
    while idx < arg2:
        require idx < sub_9fff71cd.length
        mem[0] = 2
        require s < mem[96]
        mem[(32 * s) + 128] = sub_9fff71cd[idx]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg2 - arg1) + 128] = 32
    _25 = mem[96]
    mem[(32 * arg2 - arg1) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _25:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * arg2 - arg1) + (32 * _25) + -mem[64] + 192
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not uint8(stor1.field_168):
        if ext_code.size(this.address):
            if uint8(stor1.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor1.field_168):
            uint8(stor1.field_160) = 1
            uint8(stor1.field_168) = 1
            Mask(88, 0, stor1.field_168) = 0
            stor1.field_256 % 1 = 0
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'farmImplementation can not be 0x0 address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iterativeFarmImplementation can not be 0x0 address'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'linearFarmImplementation can not be 0x0 address'
    if not arg6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_feeCollector can not be 0x0 address'
    if not arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokensFarmCongress can not be 0x0 address'
    if not arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_maintainersRegistry can not be 0x0 address'
    sub_903f6795Address = arg4
    sub_d2e69e47Address = arg5
    feeCollectorAddress = arg6
    sub_125c67ddAddress = arg1
    sub_883327daAddress = arg3
    sub_51de3cf5Address = arg2
    if not uint8(stor1.field_168):
        uint8(stor1.field_168) = 0
}

function sub_9a395850(?) payable {
    require calldata.size - 4 >= 352
    require arg1 == address(arg1)
    require arg4 == bool(arg4)
    require arg6 == address(arg6)
    require arg10 == bool(arg10)
    require ext_code.size(sub_d2e69e47Address)
    staticcall sub_d2e69e47Address.0xdd57366a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TokensFarmUpgradable: Restricted only to Maintainer'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg11:
        revert with 0, 'There is not enough tokens left in factory to fund'
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, sub_125c67ddAddress, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create.new_address):
        revert with 0, 'ERC1167: create failed'
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x580656 with:
         gas gas_remaining wei
        args address(arg1), arg2, block.timestamp + 10, arg3, bool(arg4), arg5, address(arg6), arg7, arg8, arg9, feeCollectorAddress, bool(arg10), sub_125c67ddAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_9fff71cd.length++
    sub_9fff71cd[sub_9fff71cd.length] = address(create.new_address)
    if not address(create.new_address):
        revert with 0, 'Farm's address can't be 0x0 address'
    if not address(arg1):
        revert with 0, 'RewardToken address can't be 0x0 address'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(create.new_address), arg11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xca1d209d with:
         gas gas_remaining wei
        args arg11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xcd55b984: address(create.new_address)
}



}
