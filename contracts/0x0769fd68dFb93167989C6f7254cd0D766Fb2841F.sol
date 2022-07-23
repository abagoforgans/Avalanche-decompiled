contract main {




// =====================  Runtime code  =====================


const SMART_CONTRACT_ROLE = 0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956

const OPERATOR_ROLE = 0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9


uint8 stor1;

function hasMinterRole(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0)
}

function hasSmartContractRole(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function hasAdminRole(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(roleAdmin[1][address(arg1)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function hasOperatorRole(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0)
}

function _fallback() payable {
    revert
}

function initAccessControls(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1:
        revert with 0, 'Already initialised'
    if not arg1:
        revert with 0, 'Incorrect input'
    if not roleAdmin[1][address(arg1)].field_0:
        uint256(roleAdmin.field_0)++
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0 = arg1
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160 = 0
        roleAdmin[1][address(arg1)].field_0 = uint256(roleAdmin.field_0)
        emit RoleGranted(0, arg1, msg.sender);
    stor1 = 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function addAdminRole(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[uint256(roleAdmin.field_512)][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[1][address(arg1)].field_0:
        uint256(roleAdmin.field_0)++
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0 = arg1
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160 = 0
        roleAdmin[1][address(arg1)].field_0 = uint256(roleAdmin.field_0)
        emit RoleGranted(0, arg1, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xa6416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfd416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
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

function removeAdminRole(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[uint256(roleAdmin.field_512)][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfd416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[1][address(arg1)].field_0:
        require uint256(roleAdmin.field_0) - 1 < uint256(roleAdmin.field_0)
        require roleAdmin[1][address(arg1)].field_0 - 1 < uint256(roleAdmin.field_0)
        stor[roleAdmin[1][address(arg1)].field_0 + sha3(('name', 'roleAdmin', 0))].field_0 = stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_0
        roleAdmin[1][stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_0].field_0 = roleAdmin[1][address(arg1)].field_0
        require uint256(roleAdmin.field_0)
        stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_0 = 0
        uint256(roleAdmin.field_0)--
        roleAdmin[1][address(arg1)].field_0 = 0
        emit RoleRevoked(0, arg1, msg.sender);
}

function addMinterRole(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0:
        roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0++
        roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0].field_0 = arg1
        roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0].field_160 = 0
        roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0 = roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0
        emit RoleGranted(0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, arg1, msg.sender);
}

function addOperatorRole(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0:
        roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0++
        roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0].field_0 = arg1
        roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0].field_160 = 0
        roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0 = roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0
        emit RoleGranted(0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
}

function addSmartContractRole(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0:
        roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0++
        roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0].field_0 = arg1
        roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0].field_160 = 0
        roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0 = roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0
        emit RoleGranted(0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b, arg1, msg.sender);
}

function removeMinterRole(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfd416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0:
        require roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0 - 1 < roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0
        require roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0 - 1 < roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0
        roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0].field_0 = roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0].field_0
        roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0].field_0].field_0 = roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0
        require roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0
        roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0].field_0 = 0
        roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0--
        roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0 = 0
        emit RoleRevoked(0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, arg1, msg.sender);
}

function removeOperatorRole(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfd416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0:
        require roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0 - 1 < roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0
        require roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0 - 1 < roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0
        roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0].field_0 = roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0].field_0
        roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0].field_0].field_0 = roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0
        require roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0
        roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0].field_0 = 0
        roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0--
        roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0 = 0
        emit RoleRevoked(0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
}

function removeSmartContractRole(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfd416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0:
        require roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0 - 1 < roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0
        require roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0 - 1 < roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0
        roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0].field_0 = roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0].field_0
        roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0].field_0].field_0 = roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0
        require roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0
        roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0].field_0 = 0
        roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0--
        roleAdmin[0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0 = 0
        emit RoleRevoked(0x749d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b, arg1, msg.sender);
}



}
