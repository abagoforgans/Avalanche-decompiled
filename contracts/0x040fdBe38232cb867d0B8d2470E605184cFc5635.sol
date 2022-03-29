contract main {




// =====================  Runtime code  =====================


#
#  - executeOrder(bytes32 arg1)
#  - createOrderETHToERC20(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, bool arg7, uint256 arg8)
#  - createOrderERC20ToERC20(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, bool arg9, uint256 arg10)
#  - cancelOrder(bytes32 arg1)
#  - createOrderERC20ToETH(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bool arg8, uint256 arg9)
#  - getPairPrice(address arg1, address arg2)
#  - checkOrder(bytes32 arg1)
#
const sub_82f3a000(?) = 0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c

const EXECUTOR_ROLE = 0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
bool stor1; offset 256
uint8 stor1; offset 160
uint8 stor1; offset 168
uint8 stor1; offset 176
uint8 stor1; offset 184
uint8 stor1; offset 192
uint8 stor1; offset 200
uint8 stor1; offset 208
uint8 stor1; offset 216
uint64 stor1; offset 216
uint64 stor1; offset 200
address stor1;
address stor2;
address stor3;
mapping of struct orderDetail;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getOrderDetail(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not orderDetail[arg1].field_0:
        revert with 0, 'getOrder: invalid order id'
    return orderDetail[arg1].field_0, 
           orderDetail[arg1].field_256,
           orderDetail[arg1].field_512,
           orderDetail[arg1].field_768,
           orderDetail[arg1].field_1024,
           orderDetail[arg1].field_1280,
           orderDetail[arg1].field_1536,
           orderDetail[arg1].field_1792,
           orderDetail[arg1].field_2048,
           bool(orderDetail[arg1].field_2304),
           orderDetail[arg1].field_2560
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function setBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VeeSystemController: Admin permission required'
    address(stor1.field_0) = arg1
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setCETH(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VeeSystemController: Admin permission required'
    if not arg1:
        revert with 0, 'setCETH: invalid token'
    stor2 = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VeeSystemController: Admin permission required'
    if not arg1:
        revert with 0, 'setRouter: invalid token'
    stor3 = arg1
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
}

function setState(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint8 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VeeSystemController: Admin permission required'
    uint8(stor1.field_168) = arg2
    uint8(stor1.field_176) = arg3
    uint8(stor1.field_184) = arg4
    uint8(stor1.field_192) = arg5
    uint8(stor1.field_200) = arg1
    stor1.field_200 % 72057594037927936 = 0
    stor1.field_200 % 72057594037927936 = 0
}

function setExecutor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VeeSystemController: Admin permission required'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setExecutor: address of Executor is invalid'
    if not roleAdmin[roleAdmin[0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][address(arg1)].field_0:
        roleAdmin[0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][address(arg1)].field_0 = 1
        emit RoleGranted(0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e, arg1, msg.sender);
}

function removeExecutor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VeeSystemController: Admin permission required'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'removeExecutor: address of executor is invalid'
    if not roleAdmin[roleAdmin[0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][address(arg1)].field_0:
        roleAdmin[0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][address(arg1)].field_0 = 0
        emit RoleRevoked(0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e, arg1, msg.sender);
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor1.field_216):
        if uint8(stor1.field_208):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor1.field_216):
            uint8(stor1.field_208) = 1
            uint8(stor1.field_216) = 1
            stor1.field_216 % 1099511627776 = 0
            stor1.field_256 % 1 = 0
    emit RoleAdminChanged(0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c, roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c].field_256, 0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c);
    roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c].field_256 = 0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c
    emit RoleAdminChanged(0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e, roleAdmin[0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e].field_256, 0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c);
    roleAdmin[0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e].field_256 = 0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c
    if not roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c][address(msg.sender)].field_0:
        roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c][address(msg.sender)].field_0 = 1
        emit RoleGranted(0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c, msg.sender, msg.sender);
    if not roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c][address(this.address)].field_0:
        roleAdmin[0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c][address(this.address)].field_0 = 1
        emit RoleGranted(0x64795eb25cb2b1be6e10a101fd5278394bdeaa6cda3086183d0982b3254e030c, this.address, msg.sender);
    if not roleAdmin[0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][address(msg.sender)].field_0:
        roleAdmin[0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][address(msg.sender)].field_0 = 1
        emit RoleGranted(0x1ad8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e, msg.sender, msg.sender);
    stor2 = arg2
    stor3 = arg1
    uint8(stor1.field_160) = 1
    if not uint8(stor1.field_216):
        uint8(stor1.field_216) = 0
}



}
