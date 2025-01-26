import { Avatar } from '@mui/material';
import { stringToColor } from '@/utils/avatar';

const getContrastColor = (hexColor) => {
  const color = hexColor.replace('#', '');

  const r = parseInt(color.substring(0, 2), 16);
  const g = parseInt(color.substring(2, 4), 16);
  const b = parseInt(color.substring(4, 6), 16);

  const luminance = (0.299 * r + 0.587 * g + 0.114 * b) / 255;

  return luminance > 0.8 ? '#4f4f4f' : '#FFFFFF';
};

export default function ColoredAvatar({ username, color, ...props }) {
  color = color || stringToColor(username);
  const contrastColor = getContrastColor(color);

  return (
    <Avatar
      alt={username.charAt(0).toUpperCase()}
      aria-label="avatar"
      sx={{
        ...props.sx,
        backgroundColor: color,
        color: contrastColor,
        border: contrastColor === '#4f4f4f' ? '2px solid #00000020' : 'none',
      }}
    >
      {username.charAt(0).toUpperCase()}
    </Avatar>
  );
}
